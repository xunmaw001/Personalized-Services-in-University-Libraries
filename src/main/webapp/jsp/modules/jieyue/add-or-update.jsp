<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑借阅记录</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">借阅记录管理</li>
                        <li class="breadcrumb-item active">编辑借阅记录</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">借阅记录信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6">
                                        <label>图书</label>
                                        <div>
                                            <select id="tushuSelect" name="tushuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>图书编号</label>
                                        <input id="tushuBianhao" name="tushuBianhao" class="form-control"
                                               placeholder="图书编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>图书名称</label>
                                        <input id="tushuName" name="tushuName" class="form-control"
                                               placeholder="图书名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>作者</label>
                                        <input id="tushuZuozhe" name="tushuZuozhe" class="form-control"
                                               placeholder="作者" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>图书封面</label>
                                        <img id="tushuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>图书类型</label>
                                        <input id="tushuValue" name="tushuValue" class="form-control"
                                               placeholder="图书类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>出版社</label>
                                        <input id="chubansheValue" name="chubansheValue" class="form-control"
                                               placeholder="出版社" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>图书库存</label>
                                        <input id="tushuKuchuen" name="tushuKuchuen" class="form-control"
                                               placeholder="图书库存" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>可借阅天数</label>
                                        <input id="tushuJieyue" name="tushuJieyue" class="form-control"
                                               placeholder="可借阅天数" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>用户</label>
                                        <div>
                                            <select id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>用户姓名</label>
                                        <input id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="用户姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>学号</label>
                                        <input id="yonghuXuehao" name="yonghuXuehao" class="form-control"
                                               placeholder="学号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="sexValue" name="sexValue" class="form-control"
                                               placeholder="性别" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>身份证号</label>
                                        <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>手机号</label>
                                        <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>住址</label>
                                        <input id="yonghuZhuzhi" name="yonghuZhuzhi" class="form-control"
                                               placeholder="住址" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>照片</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>学院</label>
                                        <input id="yonghuXueyuan" name="yonghuXueyuan" class="form-control"
                                               placeholder="学院" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>专业</label>
                                        <input id="yonghuZhanye" name="yonghuZhanye" class="form-control"
                                               placeholder="专业" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>班级</label>
                                        <input id="yonghuBanji" name="yonghuBanji" class="form-control"
                                               placeholder="班级" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                <input id="tushuId" name="tushuId" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>借阅时间</label>
                                        <input id="jieyueTime-input" name="jieyueTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>最晚还书时间</label>
                                        <input id="huanshuTime-input" name="huanshuTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>借阅状态</label>
                                        <select id="jieyueTypesSelect" name="jieyueTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "jieyue";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var jieyueTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var tushuOptions = [];
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#yonghuId") !=null){
               var yonghuId = $("#yonghuId").val();
               if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                   alert("借阅用户不能为空");
                   return;
               }
           }
           if($("#tushuId") !=null){
               var tushuId = $("#tushuId").val();
               if(tushuId == null || tushuId =='' || tushuId == 'null'){
                   alert("借阅书不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';
            }
            httpJson("jieyue/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addjieyue');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function jieyueTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=jieyue_types", "GET", {}, (res) => {
                if(res.code == 0){
                    jieyueTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function tushuSelect() {
            //填充下拉框选项
            http("tushu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    tushuOptions = res.data.list;
                }
            });
        }

        function tushuSelectOne(id) {
            http("tushu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                tushuShowImg();
                tushuShowVideo();
                tushuDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationJieyuetypesSelect(){
            var jieyueTypesSelect = document.getElementById('jieyueTypesSelect');
            if(jieyueTypesSelect != null && jieyueTypesOptions != null  && jieyueTypesOptions.length > 0 ){
                for (var i = 0; i < jieyueTypesOptions.length; i++) {
                    jieyueTypesSelect.add(new Option(jieyueTypesOptions[i].indexName,jieyueTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationtushuSelect() {
            var tushuSelect = document.getElementById('tushuSelect');
            if(tushuSelect != null && tushuOptions != null  && tushuOptions.length > 0 ) {
                for (var i = 0; i < tushuOptions.length; i++) {
                        tushuSelect.add(new Option(tushuOptions[i].tushuName, tushuOptions[i].id));
                }

                $("#tushuSelect").change(function(e) {
                        tushuSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var jieyueTypesSelect = document.getElementById("jieyueTypesSelect");
        if(jieyueTypesSelect != null && jieyueTypesOptions != null  && jieyueTypesOptions.length > 0 ) {
            for (var i = 0; i < jieyueTypesOptions.length; i++) {
                if (jieyueTypesOptions[i].codeIndex == ruleForm.jieyueTypes) {//下拉框value对比,如果一致就赋值汉字
                        jieyueTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var tushuSelect = document.getElementById("tushuSelect");
            if(tushuSelect != null && tushuOptions != null  && tushuOptions.length > 0 ) {
                for (var i = 0; i < tushuOptions.length; i++) {
                    if (tushuOptions[i].id == ruleForm.tushuId) {//下拉框value对比,如果一致就赋值汉字
                        tushuSelect.options[i+1].selected = true;
                        $("#tushuSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addjieyue');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                yonghuId: "required",
                tushuId: "required",
                jieyueTime: "required",
                huanshuTime: "required",
                jieyueTypes: "required",
            },
            messages: {
                yonghuId: "借阅用户不能为空",
                tushuId: "借阅书不能为空",
                jieyueTime: "借阅时间不能为空",
                huanshuTime: "最晚还书时间不能为空",
                jieyueTypes: "借阅状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addjieyue = window.sessionStorage.getItem("addjieyue");
        if (addjieyue != null && addjieyue != "" && addjieyue != "null") {
            window.sessionStorage.removeItem('addjieyue');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("jieyue/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#jieyueTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#huanshuTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        tushuDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#tushuId").val(ruleForm.tushuId);
        $("#jieyueTime-input").val(ruleForm.jieyueTime);
        $("#huanshuTime-input").val(ruleForm.huanshuTime);

    }
    <!--  级联表的数据回显  -->
    function tushuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#tushuId").val(ruleForm.id);

        $("#tushuBianhao").val(ruleForm.tushuBianhao);
        $("#tushuName").val(ruleForm.tushuName);
        $("#tushuZuozhe").val(ruleForm.tushuZuozhe);
        $("#tushuValue").val(ruleForm.tushuValue);
        $("#chubansheValue").val(ruleForm.chubansheValue);
        $("#tushuKuchuen").val(ruleForm.tushuKuchuen);
        $("#tushuJieyue").val(ruleForm.tushuJieyue);
        $("#tushuContent").val(ruleForm.tushuContent);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuXuehao").val(ruleForm.yonghuXuehao);
        $("#sexValue").val(ruleForm.sexValue);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuZhuzhi").val(ruleForm.yonghuZhuzhi);
        $("#yonghuXueyuan").val(ruleForm.yonghuXueyuan);
        $("#yonghuZhanye").val(ruleForm.yonghuZhanye);
        $("#yonghuBanji").val(ruleForm.yonghuBanji);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        tushuShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function tushuShowImg() {
        $("#tushuPhotoImg").attr("src",ruleForm.tushuPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        tushuShowVideo();
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function tushuShowVideo() {
        $("#tushuPhotoV").attr("src",ruleForm.tushuPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            jieyueTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            tushuSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationJieyuetypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationtushuSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }else{
            // 查询当前登录账户的信息
            var userId = window.sessionStorage.getItem('userId');
            yonghuSelectOne(userId);
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>