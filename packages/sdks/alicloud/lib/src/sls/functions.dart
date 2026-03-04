import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alerts_args.dart';
import 'get_alerts_result.dart';
import 'get_etls_args.dart';
import 'get_etls_result.dart';
import 'get_indexs_args.dart';
import 'get_indexs_result.dart';
import 'get_logtail_configs_args.dart';
import 'get_logtail_configs_result.dart';
import 'get_machine_groups_args.dart';
import 'get_machine_groups_result.dart';

/// This data source provides Sls Alert available to the user.[What is Alert](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateAlert)
///
/// &gt; **NOTE:** Available since v1.250.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const alertName = config.get("alertName") || "openapi-terraform-alert";
/// const projectName = config.get("projectName") || "terraform-alert-example";
/// const defaultINsMgl = new alicloud.log.Project("defaultINsMgl", {
///     description: "terraform-alert-example",
///     name: "terraform-alert-example",
/// });
/// const defaultAlert = new alicloud.sls.Alert("default", {
///     configuration: {
///         type: "tpl",
///         version: "2",
///         queryLists: [
///             {
///                 query: "* | select *",
///                 timeSpanType: "Relative",
///                 start: "-15m",
///                 end: "now",
///                 storeType: "log",
///                 project: defaultINsMgl.id,
///                 store: "alert",
///                 region: "cn-beijing",
///                 powerSqlMode: "disable",
///                 chartTitle: "wkb-chart",
///                 dashboardId: "wkb-dashboard",
///                 ui: "{}",
///                 roleArn: "acs:ram::1654218965343050:role/aliyunslsalertmonitorrole",
///             },
///             {
///                 storeType: "meta",
///                 store: "user.rds_ip_whitelist",
///             },
///             {
///                 storeType: "meta",
///                 store: "myexample1",
///             },
///         ],
///         groupConfiguration: {
///             type: "no_group",
///             fields: [
///                 "a",
///                 "b",
///             ],
///         },
///         joinConfigurations: [
///             {
///                 type: "no_join",
///                 condition: "aa",
///             },
///             {
///                 type: "cross_join",
///                 condition: "qqq",
///             },
///             {
///                 type: "inner_join",
///                 condition: "fefefe",
///             },
///         ],
///         severityConfigurations: [{
///             severity: 6,
///             evalCondition: {
///                 condition: "__count__ > 1",
///                 countCondition: "cnt > 0",
///             },
///         }],
///         labels: [{
///             key: "a",
///             value: "b",
///         }],
///         annotations: [{
///             key: "x",
///             value: "y",
///         }],
///         autoAnnotation: true,
///         sendResolved: false,
///         threshold: 1,
///         noDataFire: false,
///         sinkEventStore: {
///             enabled: true,
///             endpoint: "cn-shanghai-intranet.log.aliyuncs.com",
///             project: "wkb-wangren",
///             eventStore: "alert",
///             roleArn: "acs:ram::1654218965343050:role/aliyunlogetlrole",
///         },
///         sinkCms: {
///             enabled: false,
///         },
///         sinkAlerthub: {
///             enabled: false,
///         },
///         templateConfiguration: {
///             templateId: "sls.app.ack.autoscaler.cluster_unhealthy",
///             type: "sys",
///             version: "1.0",
///             lang: "cn",
///         },
///         conditionConfiguration: {
///             condition: "cnt > 3",
///             countCondition: "__count__ < 3",
///         },
///         policyConfiguration: {
///             alertPolicyId: "sls.builtin.dynamic",
///             actionPolicyId: "wkb-action",
///             repeatInterval: "1m",
///         },
///         dashboard: "internal-alert",
///         muteUntil: 0,
///         noDataSeverity: 6,
///         tags: [
///             "wkb",
///             "wangren",
///             "sls",
///         ],
///     },
///     alertName: alertName,
///     projectName: defaultINsMgl.id,
///     schedule: {
///         type: "Cron",
///         runImmdiately: true,
///         timeZone: "+0800",
///         delay: 10,
///         cronExpression: "0/5 * * * *",
///     },
///     displayName: "openapi-terraform",
///     description: "create alert",
/// });
/// const _default = alicloud.sls.getAlertsOutput({
///     ids: [defaultAlert.id],
///     nameRegex: defaultAlert.alertName,
///     projectName: defaultINsMgl.id,
/// });
/// export const alicloudSlsAlertExampleId = _default.apply(_default => _default.alerts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// alert_name = config.get("alertName")
/// if alert_name is None:
///     alert_name = "openapi-terraform-alert"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "terraform-alert-example"
/// default_ins_mgl = alicloud.log.Project("defaultINsMgl",
///     description="terraform-alert-example",
///     name="terraform-alert-example")
/// default_alert = alicloud.sls.Alert("default",
///     configuration={
///         "type": "tpl",
///         "version": "2",
///         "query_lists": [
///             {
///                 "query": "* | select *",
///                 "time_span_type": "Relative",
///                 "start": "-15m",
///                 "end": "now",
///                 "store_type": "log",
///                 "project": default_ins_mgl.id,
///                 "store": "alert",
///                 "region": "cn-beijing",
///                 "power_sql_mode": "disable",
///                 "chart_title": "wkb-chart",
///                 "dashboard_id": "wkb-dashboard",
///                 "ui": "{}",
///                 "role_arn": "acs:ram::1654218965343050:role/aliyunslsalertmonitorrole",
///             },
///             {
///                 "store_type": "meta",
///                 "store": "user.rds_ip_whitelist",
///             },
///             {
///                 "store_type": "meta",
///                 "store": "myexample1",
///             },
///         ],
///         "group_configuration": {
///             "type": "no_group",
///             "fields": [
///                 "a",
///                 "b",
///             ],
///         },
///         "join_configurations": [
///             {
///                 "type": "no_join",
///                 "condition": "aa",
///             },
///             {
///                 "type": "cross_join",
///                 "condition": "qqq",
///             },
///             {
///                 "type": "inner_join",
///                 "condition": "fefefe",
///             },
///         ],
///         "severity_configurations": [{
///             "severity": 6,
///             "eval_condition": {
///                 "condition": "__count__ > 1",
///                 "count_condition": "cnt > 0",
///             },
///         }],
///         "labels": [{
///             "key": "a",
///             "value": "b",
///         }],
///         "annotations": [{
///             "key": "x",
///             "value": "y",
///         }],
///         "auto_annotation": True,
///         "send_resolved": False,
///         "threshold": 1,
///         "no_data_fire": False,
///         "sink_event_store": {
///             "enabled": True,
///             "endpoint": "cn-shanghai-intranet.log.aliyuncs.com",
///             "project": "wkb-wangren",
///             "event_store": "alert",
///             "role_arn": "acs:ram::1654218965343050:role/aliyunlogetlrole",
///         },
///         "sink_cms": {
///             "enabled": False,
///         },
///         "sink_alerthub": {
///             "enabled": False,
///         },
///         "template_configuration": {
///             "template_id": "sls.app.ack.autoscaler.cluster_unhealthy",
///             "type": "sys",
///             "version": "1.0",
///             "lang": "cn",
///         },
///         "condition_configuration": {
///             "condition": "cnt > 3",
///             "count_condition": "__count__ < 3",
///         },
///         "policy_configuration": {
///             "alert_policy_id": "sls.builtin.dynamic",
///             "action_policy_id": "wkb-action",
///             "repeat_interval": "1m",
///         },
///         "dashboard": "internal-alert",
///         "mute_until": 0,
///         "no_data_severity": 6,
///         "tags": [
///             "wkb",
///             "wangren",
///             "sls",
///         ],
///     },
///     alert_name=alert_name,
///     project_name=default_ins_mgl.id,
///     schedule={
///         "type": "Cron",
///         "run_immdiately": True,
///         "time_zone": "+0800",
///         "delay": 10,
///         "cron_expression": "0/5 * * * *",
///     },
///     display_name="openapi-terraform",
///     description="create alert")
/// default = alicloud.sls.get_alerts_output(ids=[default_alert.id],
///     name_regex=default_alert.alert_name,
///     project_name=default_ins_mgl.id)
/// pulumi.export("alicloudSlsAlertExampleId", default.alerts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var alertName = config.Get("alertName") ?? "openapi-terraform-alert";
///     var projectName = config.Get("projectName") ?? "terraform-alert-example";
///     var defaultINsMgl = new AliCloud.Log.Project("defaultINsMgl", new()
///     {
///         Description = "terraform-alert-example",
///         Name = "terraform-alert-example",
///     });
///
///     var defaultAlert = new AliCloud.Sls.Alert("default", new()
///     {
///         Configuration = new AliCloud.Sls.Inputs.AlertConfigurationArgs
///         {
///             Type = "tpl",
///             Version = "2",
///             QueryLists = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationQueryListArgs
///                 {
///                     Query = "* | select *",
///                     TimeSpanType = "Relative",
///                     Start = "-15m",
///                     End = "now",
///                     StoreType = "log",
///                     Project = defaultINsMgl.Id,
///                     Store = "alert",
///                     Region = "cn-beijing",
///                     PowerSqlMode = "disable",
///                     ChartTitle = "wkb-chart",
///                     DashboardId = "wkb-dashboard",
///                     Ui = "{}",
///                     RoleArn = "acs:ram::1654218965343050:role/aliyunslsalertmonitorrole",
///                 },
///                 new AliCloud.Sls.Inputs.AlertConfigurationQueryListArgs
///                 {
///                     StoreType = "meta",
///                     Store = "user.rds_ip_whitelist",
///                 },
///                 new AliCloud.Sls.Inputs.AlertConfigurationQueryListArgs
///                 {
///                     StoreType = "meta",
///                     Store = "myexample1",
///                 },
///             },
///             GroupConfiguration = new AliCloud.Sls.Inputs.AlertConfigurationGroupConfigurationArgs
///             {
///                 Type = "no_group",
///                 Fields = new[]
///                 {
///                     "a",
///                     "b",
///                 },
///             },
///             JoinConfigurations = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationJoinConfigurationArgs
///                 {
///                     Type = "no_join",
///                     Condition = "aa",
///                 },
///                 new AliCloud.Sls.Inputs.AlertConfigurationJoinConfigurationArgs
///                 {
///                     Type = "cross_join",
///                     Condition = "qqq",
///                 },
///                 new AliCloud.Sls.Inputs.AlertConfigurationJoinConfigurationArgs
///                 {
///                     Type = "inner_join",
///                     Condition = "fefefe",
///                 },
///             },
///             SeverityConfigurations = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationSeverityConfigurationArgs
///                 {
///                     Severity = 6,
///                     EvalCondition = new AliCloud.Sls.Inputs.AlertConfigurationSeverityConfigurationEvalConditionArgs
///                     {
///                         Condition = "__count__ > 1",
///                         CountCondition = "cnt > 0",
///                     },
///                 },
///             },
///             Labels = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationLabelArgs
///                 {
///                     Key = "a",
///                     Value = "b",
///                 },
///             },
///             Annotations = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationAnnotationArgs
///                 {
///                     Key = "x",
///                     Value = "y",
///                 },
///             },
///             AutoAnnotation = true,
///             SendResolved = false,
///             Threshold = 1,
///             NoDataFire = false,
///             SinkEventStore = new AliCloud.Sls.Inputs.AlertConfigurationSinkEventStoreArgs
///             {
///                 Enabled = true,
///                 Endpoint = "cn-shanghai-intranet.log.aliyuncs.com",
///                 Project = "wkb-wangren",
///                 EventStore = "alert",
///                 RoleArn = "acs:ram::1654218965343050:role/aliyunlogetlrole",
///             },
///             SinkCms = new AliCloud.Sls.Inputs.AlertConfigurationSinkCmsArgs
///             {
///                 Enabled = false,
///             },
///             SinkAlerthub = new AliCloud.Sls.Inputs.AlertConfigurationSinkAlerthubArgs
///             {
///                 Enabled = false,
///             },
///             TemplateConfiguration = new AliCloud.Sls.Inputs.AlertConfigurationTemplateConfigurationArgs
///             {
///                 TemplateId = "sls.app.ack.autoscaler.cluster_unhealthy",
///                 Type = "sys",
///                 Version = "1.0",
///                 Lang = "cn",
///             },
///             ConditionConfiguration = new AliCloud.Sls.Inputs.AlertConfigurationConditionConfigurationArgs
///             {
///                 Condition = "cnt > 3",
///                 CountCondition = "__count__ < 3",
///             },
///             PolicyConfiguration = new AliCloud.Sls.Inputs.AlertConfigurationPolicyConfigurationArgs
///             {
///                 AlertPolicyId = "sls.builtin.dynamic",
///                 ActionPolicyId = "wkb-action",
///                 RepeatInterval = "1m",
///             },
///             Dashboard = "internal-alert",
///             MuteUntil = 0,
///             NoDataSeverity = 6,
///             Tags = new[]
///             {
///                 "wkb",
///                 "wangren",
///                 "sls",
///             },
///         },
///         AlertName = alertName,
///         ProjectName = defaultINsMgl.Id,
///         Schedule = new AliCloud.Sls.Inputs.AlertScheduleArgs
///         {
///             Type = "Cron",
///             RunImmdiately = true,
///             TimeZone = "+0800",
///             Delay = 10,
///             CronExpression = "0/5 * * * *",
///         },
///         DisplayName = "openapi-terraform",
///         Description = "create alert",
///     });
///
///     var @default = AliCloud.Sls.GetAlerts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlert.Id,
///         },
///         NameRegex = defaultAlert.AlertName,
///         ProjectName = defaultINsMgl.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudSlsAlertExampleId"] = @default.Apply(@default => @default.Apply(getAlertsResult => getAlertsResult.Alerts[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// alertName := "openapi-terraform-alert";
/// if param := cfg.Get("alertName"); param != ""{
/// alertName = param
/// }
/// projectName := "terraform-alert-example";
/// if param := cfg.Get("projectName"); param != ""{
/// projectName = param
/// }
/// defaultINsMgl, err := log.NewProject(ctx, "defaultINsMgl", &log.ProjectArgs{
/// Description: pulumi.String("terraform-alert-example"),
/// Name: pulumi.String("terraform-alert-example"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultAlert, err := sls.NewAlert(ctx, "default", &sls.AlertArgs{
/// Configuration: &sls.AlertConfigurationArgs{
/// Type: pulumi.String("tpl"),
/// Version: pulumi.String("2"),
/// QueryLists: sls.AlertConfigurationQueryListArray{
/// &sls.AlertConfigurationQueryListArgs{
/// Query: pulumi.String("* | select *"),
/// TimeSpanType: pulumi.String("Relative"),
/// Start: pulumi.String("-15m"),
/// End: pulumi.String("now"),
/// StoreType: pulumi.String("log"),
/// Project: defaultINsMgl.ID(),
/// Store: pulumi.String("alert"),
/// Region: pulumi.String("cn-beijing"),
/// PowerSqlMode: pulumi.String("disable"),
/// ChartTitle: pulumi.String("wkb-chart"),
/// DashboardId: pulumi.String("wkb-dashboard"),
/// Ui: pulumi.String("{}"),
/// RoleArn: pulumi.String("acs:ram::1654218965343050:role/aliyunslsalertmonitorrole"),
/// },
/// &sls.AlertConfigurationQueryListArgs{
/// StoreType: pulumi.String("meta"),
/// Store: pulumi.String("user.rds_ip_whitelist"),
/// },
/// &sls.AlertConfigurationQueryListArgs{
/// StoreType: pulumi.String("meta"),
/// Store: pulumi.String("myexample1"),
/// },
/// },
/// GroupConfiguration: &sls.AlertConfigurationGroupConfigurationArgs{
/// Type: pulumi.String("no_group"),
/// Fields: pulumi.StringArray{
/// pulumi.String("a"),
/// pulumi.String("b"),
/// },
/// },
/// JoinConfigurations: sls.AlertConfigurationJoinConfigurationArray{
/// &sls.AlertConfigurationJoinConfigurationArgs{
/// Type: pulumi.String("no_join"),
/// Condition: pulumi.String("aa"),
/// },
/// &sls.AlertConfigurationJoinConfigurationArgs{
/// Type: pulumi.String("cross_join"),
/// Condition: pulumi.String("qqq"),
/// },
/// &sls.AlertConfigurationJoinConfigurationArgs{
/// Type: pulumi.String("inner_join"),
/// Condition: pulumi.String("fefefe"),
/// },
/// },
/// SeverityConfigurations: sls.AlertConfigurationSeverityConfigurationArray{
/// &sls.AlertConfigurationSeverityConfigurationArgs{
/// Severity: pulumi.Int(6),
/// EvalCondition: &sls.AlertConfigurationSeverityConfigurationEvalConditionArgs{
/// Condition: pulumi.String("__count__ > 1"),
/// CountCondition: pulumi.String("cnt > 0"),
/// },
/// },
/// },
/// Labels: sls.AlertConfigurationLabelArray{
/// &sls.AlertConfigurationLabelArgs{
/// Key: pulumi.String("a"),
/// Value: pulumi.String("b"),
/// },
/// },
/// Annotations: sls.AlertConfigurationAnnotationArray{
/// &sls.AlertConfigurationAnnotationArgs{
/// Key: pulumi.String("x"),
/// Value: pulumi.String("y"),
/// },
/// },
/// AutoAnnotation: pulumi.Bool(true),
/// SendResolved: pulumi.Bool(false),
/// Threshold: pulumi.Int(1),
/// NoDataFire: pulumi.Bool(false),
/// SinkEventStore: &sls.AlertConfigurationSinkEventStoreArgs{
/// Enabled: pulumi.Bool(true),
/// Endpoint: pulumi.String("cn-shanghai-intranet.log.aliyuncs.com"),
/// Project: pulumi.String("wkb-wangren"),
/// EventStore: pulumi.String("alert"),
/// RoleArn: pulumi.String("acs:ram::1654218965343050:role/aliyunlogetlrole"),
/// },
/// SinkCms: &sls.AlertConfigurationSinkCmsArgs{
/// Enabled: pulumi.Bool(false),
/// },
/// SinkAlerthub: &sls.AlertConfigurationSinkAlerthubArgs{
/// Enabled: pulumi.Bool(false),
/// },
/// TemplateConfiguration: &sls.AlertConfigurationTemplateConfigurationArgs{
/// TemplateId: pulumi.String("sls.app.ack.autoscaler.cluster_unhealthy"),
/// Type: pulumi.String("sys"),
/// Version: pulumi.String("1.0"),
/// Lang: pulumi.String("cn"),
/// },
/// ConditionConfiguration: &sls.AlertConfigurationConditionConfigurationArgs{
/// Condition: pulumi.String("cnt > 3"),
/// CountCondition: pulumi.String("__count__ < 3"),
/// },
/// PolicyConfiguration: &sls.AlertConfigurationPolicyConfigurationArgs{
/// AlertPolicyId: pulumi.String("sls.builtin.dynamic"),
/// ActionPolicyId: pulumi.String("wkb-action"),
/// RepeatInterval: pulumi.String("1m"),
/// },
/// Dashboard: pulumi.String("internal-alert"),
/// MuteUntil: pulumi.Int(0),
/// NoDataSeverity: pulumi.Int(6),
/// Tags: pulumi.StringArray{
/// pulumi.String("wkb"),
/// pulumi.String("wangren"),
/// pulumi.String("sls"),
/// },
/// },
/// AlertName: pulumi.String(alertName),
/// ProjectName: defaultINsMgl.ID(),
/// Schedule: &sls.AlertScheduleArgs{
/// Type: pulumi.String("Cron"),
/// RunImmdiately: pulumi.Bool(true),
/// TimeZone: pulumi.String("+0800"),
/// Delay: pulumi.Int(10),
/// CronExpression: pulumi.String("0/5 * * * *"),
/// },
/// DisplayName: pulumi.String("openapi-terraform"),
/// Description: pulumi.String("create alert"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := sls.GetAlertsOutput(ctx, sls.GetAlertsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultAlert.ID(),
/// },
/// NameRegex: defaultAlert.AlertName,
/// ProjectName: defaultINsMgl.ID(),
/// }, nil);
/// ctx.Export("alicloudSlsAlertExampleId", _default.ApplyT(func(_default sls.GetAlertsResult) (*string, error) {
/// return &default.Alerts[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.sls.Alert;
/// import com.pulumi.alicloud.sls.AlertArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationGroupConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationSinkEventStoreArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationSinkCmsArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationSinkAlerthubArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationTemplateConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationConditionConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationPolicyConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertScheduleArgs;
/// import com.pulumi.alicloud.sls.SlsFunctions;
/// import com.pulumi.alicloud.sls.inputs.GetAlertsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var alertName = config.get("alertName").orElse("openapi-terraform-alert");
///         final var projectName = config.get("projectName").orElse("terraform-alert-example");
///         var defaultINsMgl = new Project("defaultINsMgl", ProjectArgs.builder()
///             .description("terraform-alert-example")
///             .name("terraform-alert-example")
///             .build());
///
///         var defaultAlert = new Alert("defaultAlert", AlertArgs.builder()
///             .configuration(AlertConfigurationArgs.builder()
///                 .type("tpl")
///                 .version("2")
///                 .queryLists(
///                     AlertConfigurationQueryListArgs.builder()
///                         .query("* | select *")
///                         .timeSpanType("Relative")
///                         .start("-15m")
///                         .end("now")
///                         .storeType("log")
///                         .project(defaultINsMgl.id())
///                         .store("alert")
///                         .region("cn-beijing")
///                         .powerSqlMode("disable")
///                         .chartTitle("wkb-chart")
///                         .dashboardId("wkb-dashboard")
///                         .ui("{}")
///                         .roleArn("acs:ram::1654218965343050:role/aliyunslsalertmonitorrole")
///                         .build(),
///                     AlertConfigurationQueryListArgs.builder()
///                         .storeType("meta")
///                         .store("user.rds_ip_whitelist")
///                         .build(),
///                     AlertConfigurationQueryListArgs.builder()
///                         .storeType("meta")
///                         .store("myexample1")
///                         .build())
///                 .groupConfiguration(AlertConfigurationGroupConfigurationArgs.builder()
///                     .type("no_group")
///                     .fields(
///                         "a",
///                         "b")
///                     .build())
///                 .joinConfigurations(
///                     AlertConfigurationJoinConfigurationArgs.builder()
///                         .type("no_join")
///                         .condition("aa")
///                         .build(),
///                     AlertConfigurationJoinConfigurationArgs.builder()
///                         .type("cross_join")
///                         .condition("qqq")
///                         .build(),
///                     AlertConfigurationJoinConfigurationArgs.builder()
///                         .type("inner_join")
///                         .condition("fefefe")
///                         .build())
///                 .severityConfigurations(AlertConfigurationSeverityConfigurationArgs.builder()
///                     .severity(6)
///                     .evalCondition(AlertConfigurationSeverityConfigurationEvalConditionArgs.builder()
///                         .condition("__count__ > 1")
///                         .countCondition("cnt > 0")
///                         .build())
///                     .build())
///                 .labels(AlertConfigurationLabelArgs.builder()
///                     .key("a")
///                     .value("b")
///                     .build())
///                 .annotations(AlertConfigurationAnnotationArgs.builder()
///                     .key("x")
///                     .value("y")
///                     .build())
///                 .autoAnnotation(true)
///                 .sendResolved(false)
///                 .threshold(1)
///                 .noDataFire(false)
///                 .sinkEventStore(AlertConfigurationSinkEventStoreArgs.builder()
///                     .enabled(true)
///                     .endpoint("cn-shanghai-intranet.log.aliyuncs.com")
///                     .project("wkb-wangren")
///                     .eventStore("alert")
///                     .roleArn("acs:ram::1654218965343050:role/aliyunlogetlrole")
///                     .build())
///                 .sinkCms(AlertConfigurationSinkCmsArgs.builder()
///                     .enabled(false)
///                     .build())
///                 .sinkAlerthub(AlertConfigurationSinkAlerthubArgs.builder()
///                     .enabled(false)
///                     .build())
///                 .templateConfiguration(AlertConfigurationTemplateConfigurationArgs.builder()
///                     .templateId("sls.app.ack.autoscaler.cluster_unhealthy")
///                     .type("sys")
///                     .version("1.0")
///                     .lang("cn")
///                     .build())
///                 .conditionConfiguration(AlertConfigurationConditionConfigurationArgs.builder()
///                     .condition("cnt > 3")
///                     .countCondition("__count__ < 3")
///                     .build())
///                 .policyConfiguration(AlertConfigurationPolicyConfigurationArgs.builder()
///                     .alertPolicyId("sls.builtin.dynamic")
///                     .actionPolicyId("wkb-action")
///                     .repeatInterval("1m")
///                     .build())
///                 .dashboard("internal-alert")
///                 .muteUntil(0)
///                 .noDataSeverity(6)
///                 .tags(
///                     "wkb",
///                     "wangren",
///                     "sls")
///                 .build())
///             .alertName(alertName)
///             .projectName(defaultINsMgl.id())
///             .schedule(AlertScheduleArgs.builder()
///                 .type("Cron")
///                 .runImmdiately(true)
///                 .timeZone("+0800")
///                 .delay(10)
///                 .cronExpression("0/5 * * * *")
///                 .build())
///             .displayName("openapi-terraform")
///             .description("create alert")
///             .build());
///
///         final var default = SlsFunctions.getAlerts(GetAlertsArgs.builder()
///             .ids(defaultAlert.id())
///             .nameRegex(defaultAlert.alertName())
///             .projectName(defaultINsMgl.id())
///             .build());
///
///         ctx.export("alicloudSlsAlertExampleId", default_.applyValue(_default_ -> _default_.alerts()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   alertName:
///     type: string
///     default: openapi-terraform-alert
///   projectName:
///     type: string
///     default: terraform-alert-example
/// resources:
///   defaultINsMgl:
///     type: alicloud:log:Project
///     properties:
///       description: terraform-alert-example
///       name: terraform-alert-example
///   defaultAlert:
///     type: alicloud:sls:Alert
///     name: default
///     properties:
///       configuration:
///         type: tpl
///         version: '2'
///         queryLists:
///           - query: '* | select *'
///             timeSpanType: Relative
///             start: -15m
///             end: now
///             storeType: log
///             project: ${defaultINsMgl.id}
///             store: alert
///             region: cn-beijing
///             powerSqlMode: disable
///             chartTitle: wkb-chart
///             dashboardId: wkb-dashboard
///             ui: '{}'
///             roleArn: acs:ram::1654218965343050:role/aliyunslsalertmonitorrole
///           - storeType: meta
///             store: user.rds_ip_whitelist
///           - storeType: meta
///             store: myexample1
///         groupConfiguration:
///           type: no_group
///           fields:
///             - a
///             - b
///         joinConfigurations:
///           - type: no_join
///             condition: aa
///           - type: cross_join
///             condition: qqq
///           - type: inner_join
///             condition: fefefe
///         severityConfigurations:
///           - severity: '6'
///             evalCondition:
///               condition: __count__ > 1
///               countCondition: cnt > 0
///         labels:
///           - key: a
///             value: b
///         annotations:
///           - key: x
///             value: y
///         autoAnnotation: true
///         sendResolved: false
///         threshold: '1'
///         noDataFire: false
///         sinkEventStore:
///           enabled: true
///           endpoint: cn-shanghai-intranet.log.aliyuncs.com
///           project: wkb-wangren
///           eventStore: alert
///           roleArn: acs:ram::1654218965343050:role/aliyunlogetlrole
///         sinkCms:
///           enabled: false
///         sinkAlerthub:
///           enabled: false
///         templateConfiguration:
///           templateId: sls.app.ack.autoscaler.cluster_unhealthy
///           type: sys
///           version: '1.0'
///           lang: cn
///         conditionConfiguration:
///           condition: cnt > 3
///           countCondition: __count__ < 3
///         policyConfiguration:
///           alertPolicyId: sls.builtin.dynamic
///           actionPolicyId: wkb-action
///           repeatInterval: 1m
///         dashboard: internal-alert
///         muteUntil: '0'
///         noDataSeverity: '6'
///         tags:
///           - wkb
///           - wangren
///           - sls
///       alertName: ${alertName}
///       projectName: ${defaultINsMgl.id}
///       schedule:
///         type: Cron
///         runImmdiately: true
///         timeZone: '+0800'
///         delay: '10'
///         cronExpression: 0/5 * * * *
///       displayName: openapi-terraform
///       description: create alert
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sls:getAlerts
///       arguments:
///         ids:
///           - ${defaultAlert.id}
///         nameRegex: ${defaultAlert.alertName}
///         projectName: ${defaultINsMgl.id}
/// outputs:
///   alicloudSlsAlertExampleId: ${default.alerts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sls_get_alerts_get_alerts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertsResult> getAlerts(
  GetAlertsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sls/getAlerts:getAlerts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertsResult.fromMap(result);
}

/// This data source provides Sls Etl available to the user.[What is Etl](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateETL)
///
/// &gt; **NOTE:** Available since v1.258.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaulthhAPo6 = new alicloud.log.Project("defaulthhAPo6", {
///     description: "terraform-etl-example-813",
///     projectName: "terraform-etl-example-330",
/// });
/// const defaultzWKLkp = new alicloud.log.Store("defaultzWKLkp", {
///     hotTtl: 8,
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: defaulthhAPo6.id,
///     logstoreName: "example",
/// });
/// const defaultEtl = new alicloud.sls.Etl("default", {
///     project: defaulthhAPo6.id,
///     description: "etl-1740472705-185721",
///     configuration: {
///         script: "* | extend a=1",
///         lang: "SPL",
///         roleArn: name,
///         sinks: [{
///             name: "11111",
///             endpoint: "cn-hangzhou-intranet.log.aliyuncs.com",
///             project: "gy-hangzhou-huolang-1",
///             logstore: "gy-rm2",
///             datasets: ["__UNNAMED__"],
///             roleArn: name,
///         }],
///         logstore: defaultzWKLkp.logstoreName,
///         fromTime: 1706771697,
///         toTime: 1738394097,
///     },
///     jobName: "etl-1740472705-185721",
///     displayName: "etl-1740472705-185721",
/// });
/// const _default = alicloud.sls.getEtlsOutput({
///     logstore: defaultzWKLkp.name,
///     project: defaulthhAPo6.id,
/// });
/// export const alicloudSlsEtlExampleId = _default.apply(_default => _default.etls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// defaulthh_a_po6 = alicloud.log.Project("defaulthhAPo6",
///     description="terraform-etl-example-813",
///     project_name="terraform-etl-example-330")
/// defaultz_wk_lkp = alicloud.log.Store("defaultzWKLkp",
///     hot_ttl=8,
///     retention_period=30,
///     shard_count=2,
///     project_name=defaulthh_a_po6.id,
///     logstore_name="example")
/// default_etl = alicloud.sls.Etl("default",
///     project=defaulthh_a_po6.id,
///     description="etl-1740472705-185721",
///     configuration={
///         "script": "* | extend a=1",
///         "lang": "SPL",
///         "role_arn": name,
///         "sinks": [{
///             "name": "11111",
///             "endpoint": "cn-hangzhou-intranet.log.aliyuncs.com",
///             "project": "gy-hangzhou-huolang-1",
///             "logstore": "gy-rm2",
///             "datasets": ["__UNNAMED__"],
///             "role_arn": name,
///         }],
///         "logstore": defaultz_wk_lkp.logstore_name,
///         "from_time": 1706771697,
///         "to_time": 1738394097,
///     },
///     job_name="etl-1740472705-185721",
///     display_name="etl-1740472705-185721")
/// default = alicloud.sls.get_etls_output(logstore=defaultz_wk_lkp.name,
///     project=defaulthh_a_po6.id)
/// pulumi.export("alicloudSlsEtlExampleId", default.etls[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaulthhAPo6 = new AliCloud.Log.Project("defaulthhAPo6", new()
///     {
///         Description = "terraform-etl-example-813",
///         ProjectName = "terraform-etl-example-330",
///     });
///
///     var defaultzWKLkp = new AliCloud.Log.Store("defaultzWKLkp", new()
///     {
///         HotTtl = 8,
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = defaulthhAPo6.Id,
///         LogstoreName = "example",
///     });
///
///     var defaultEtl = new AliCloud.Sls.Etl("default", new()
///     {
///         Project = defaulthhAPo6.Id,
///         Description = "etl-1740472705-185721",
///         Configuration = new AliCloud.Sls.Inputs.EtlConfigurationArgs
///         {
///             Script = "* | extend a=1",
///             Lang = "SPL",
///             RoleArn = name,
///             Sinks = new[]
///             {
///                 new AliCloud.Sls.Inputs.EtlConfigurationSinkArgs
///                 {
///                     Name = "11111",
///                     Endpoint = "cn-hangzhou-intranet.log.aliyuncs.com",
///                     Project = "gy-hangzhou-huolang-1",
///                     Logstore = "gy-rm2",
///                     Datasets = new[]
///                     {
///                         "__UNNAMED__",
///                     },
///                     RoleArn = name,
///                 },
///             },
///             Logstore = defaultzWKLkp.LogstoreName,
///             FromTime = 1706771697,
///             ToTime = 1738394097,
///         },
///         JobName = "etl-1740472705-185721",
///         DisplayName = "etl-1740472705-185721",
///     });
///
///     var @default = AliCloud.Sls.GetEtls.Invoke(new()
///     {
///         Logstore = defaultzWKLkp.Name,
///         Project = defaulthhAPo6.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudSlsEtlExampleId"] = @default.Apply(@default => @default.Apply(getEtlsResult => getEtlsResult.Etls[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaulthhAPo6, err := log.NewProject(ctx, "defaulthhAPo6", &log.ProjectArgs{
/// Description: pulumi.String("terraform-etl-example-813"),
/// ProjectName: pulumi.String("terraform-etl-example-330"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultzWKLkp, err := log.NewStore(ctx, "defaultzWKLkp", &log.StoreArgs{
/// HotTtl: pulumi.Int(8),
/// RetentionPeriod: pulumi.Int(30),
/// ShardCount: pulumi.Int(2),
/// ProjectName: defaulthhAPo6.ID(),
/// LogstoreName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sls.NewEtl(ctx, "default", &sls.EtlArgs{
/// Project: defaulthhAPo6.ID(),
/// Description: pulumi.String("etl-1740472705-185721"),
/// Configuration: &sls.EtlConfigurationArgs{
/// Script: pulumi.String("* | extend a=1"),
/// Lang: pulumi.String("SPL"),
/// RoleArn: pulumi.String(name),
/// Sinks: sls.EtlConfigurationSinkArray{
/// &sls.EtlConfigurationSinkArgs{
/// Name: pulumi.String("11111"),
/// Endpoint: pulumi.String("cn-hangzhou-intranet.log.aliyuncs.com"),
/// Project: pulumi.String("gy-hangzhou-huolang-1"),
/// Logstore: pulumi.String("gy-rm2"),
/// Datasets: pulumi.StringArray{
/// pulumi.String("__UNNAMED__"),
/// },
/// RoleArn: pulumi.String(name),
/// },
/// },
/// Logstore: defaultzWKLkp.LogstoreName,
/// FromTime: pulumi.Int(1706771697),
/// ToTime: pulumi.Int(1738394097),
/// },
/// JobName: pulumi.String("etl-1740472705-185721"),
/// DisplayName: pulumi.String("etl-1740472705-185721"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := sls.GetEtlsOutput(ctx, sls.GetEtlsOutputArgs{
/// Logstore: defaultzWKLkp.Name,
/// Project: defaulthhAPo6.ID(),
/// }, nil);
/// ctx.Export("alicloudSlsEtlExampleId", _default.ApplyT(func(_default sls.GetEtlsResult) (*string, error) {
/// return &default.Etls[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.sls.Etl;
/// import com.pulumi.alicloud.sls.EtlArgs;
/// import com.pulumi.alicloud.sls.inputs.EtlConfigurationArgs;
/// import com.pulumi.alicloud.sls.SlsFunctions;
/// import com.pulumi.alicloud.sls.inputs.GetEtlsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var defaulthhAPo6 = new Project("defaulthhAPo6", ProjectArgs.builder()
///             .description("terraform-etl-example-813")
///             .projectName("terraform-etl-example-330")
///             .build());
///
///         var defaultzWKLkp = new Store("defaultzWKLkp", StoreArgs.builder()
///             .hotTtl(8)
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(defaulthhAPo6.id())
///             .logstoreName("example")
///             .build());
///
///         var defaultEtl = new Etl("defaultEtl", EtlArgs.builder()
///             .project(defaulthhAPo6.id())
///             .description("etl-1740472705-185721")
///             .configuration(EtlConfigurationArgs.builder()
///                 .script("* | extend a=1")
///                 .lang("SPL")
///                 .roleArn(name)
///                 .sinks(EtlConfigurationSinkArgs.builder()
///                     .name("11111")
///                     .endpoint("cn-hangzhou-intranet.log.aliyuncs.com")
///                     .project("gy-hangzhou-huolang-1")
///                     .logstore("gy-rm2")
///                     .datasets("__UNNAMED__")
///                     .roleArn(name)
///                     .build())
///                 .logstore(defaultzWKLkp.logstoreName())
///                 .fromTime(1706771697)
///                 .toTime(1738394097)
///                 .build())
///             .jobName("etl-1740472705-185721")
///             .displayName("etl-1740472705-185721")
///             .build());
///
///         final var default = SlsFunctions.getEtls(GetEtlsArgs.builder()
///             .logstore(defaultzWKLkp.name())
///             .project(defaulthhAPo6.id())
///             .build());
///
///         ctx.export("alicloudSlsEtlExampleId", default_.applyValue(_default_ -> _default_.etls()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaulthhAPo6:
///     type: alicloud:log:Project
///     properties:
///       description: terraform-etl-example-813
///       projectName: terraform-etl-example-330
///   defaultzWKLkp:
///     type: alicloud:log:Store
///     properties:
///       hotTtl: '8'
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${defaulthhAPo6.id}
///       logstoreName: example
///   defaultEtl:
///     type: alicloud:sls:Etl
///     name: default
///     properties:
///       project: ${defaulthhAPo6.id}
///       description: etl-1740472705-185721
///       configuration:
///         script: '* | extend a=1'
///         lang: SPL
///         roleArn: ${name}
///         sinks:
///           - name: '11111'
///             endpoint: cn-hangzhou-intranet.log.aliyuncs.com
///             project: gy-hangzhou-huolang-1
///             logstore: gy-rm2
///             datasets:
///               - __UNNAMED__
///             roleArn: ${name}
///         logstore: ${defaultzWKLkp.logstoreName}
///         fromTime: '1706771697'
///         toTime: '1738394097'
///       jobName: etl-1740472705-185721
///       displayName: etl-1740472705-185721
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sls:getEtls
///       arguments:
///         logstore: ${defaultzWKLkp.name}
///         project: ${defaulthhAPo6.id}
/// outputs:
///   alicloudSlsEtlExampleId: ${default.etls[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sls_get_etls_get_etls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEtlsResult> getEtls(
  GetEtlsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sls/getEtls:getEtls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEtlsResult.fromMap(result);
}

/// This data source provides Sls Index available to the user.[What is Index](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateIndex)
///
/// &gt; **NOTE:** Available since v1.262.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const logstoreName = config.get("logstoreName") || "logstore-example-1";
/// const projectName = config.get("projectName") || "project-for-index-terraform-example-1";
/// const defaultProject = new alicloud.log.Project("default", {
///     description: "terraform example",
///     projectName: projectName,
/// });
/// const defaultStore = new alicloud.log.Store("default", {
///     hotTtl: 7,
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: defaultProject.projectName,
///     logstoreName: logstoreName,
/// });
/// const defaultIndex = new alicloud.sls.Index("default", {
///     line: {
///         chn: true,
///         caseSensitive: true,
///         tokens: ["a"],
///         excludeKeys: ["t"],
///     },
///     keys: JSON.stringify({
///         example: {
///             caseSensitive: false,
///             token: [
///                 "\n",
///                 "\x09",
///                 ",",
///                 " ",
///                 ";",
///                 "\"",
///                 "'",
///                 "(",
///                 ")",
///                 "{",
///                 "}",
///                 "[",
///                 "]",
///                 "<",
///                 ">",
///                 "?",
///                 "/",
///                 "#",
///                 ":",
///             ],
///             type: "text",
///             doc_value: false,
///             alias: "",
///             chn: false,
///         },
///     }),
///     logstoreName: defaultStore.logstoreName,
///     projectName: projectName,
/// });
/// const _default = alicloud.sls.getIndexsOutput({
///     logstoreName: defaultStore.logstoreName,
///     projectName: defaultProject.projectName,
/// });
/// export const alicloudSlsIndexExampleId = _default.apply(_default => _default.indexs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// logstore_name = config.get("logstoreName")
/// if logstore_name is None:
///     logstore_name = "logstore-example-1"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "project-for-index-terraform-example-1"
/// default_project = alicloud.log.Project("default",
///     description="terraform example",
///     project_name=project_name)
/// default_store = alicloud.log.Store("default",
///     hot_ttl=7,
///     retention_period=30,
///     shard_count=2,
///     project_name=default_project.project_name,
///     logstore_name=logstore_name)
/// default_index = alicloud.sls.Index("default",
///     line={
///         "chn": True,
///         "case_sensitive": True,
///         "tokens": ["a"],
///         "exclude_keys": ["t"],
///     },
///     keys=json.dumps({
///         "example": {
///             "caseSensitive": False,
///             "token": [
///                 "\n",
///                 "\x09",
///                 ",",
///                 " ",
///                 ";",
///                 "\"",
///                 "'",
///                 "(",
///                 ")",
///                 "{",
///                 "}",
///                 "[",
///                 "]",
///                 "<",
///                 ">",
///                 "?",
///                 "/",
///                 "#",
///                 ":",
///             ],
///             "type": "text",
///             "doc_value": False,
///             "alias": "",
///             "chn": False,
///         },
///     }),
///     logstore_name=default_store.logstore_name,
///     project_name=project_name)
/// default = alicloud.sls.get_indexs_output(logstore_name=default_store.logstore_name,
///     project_name=default_project.project_name)
/// pulumi.export("alicloudSlsIndexExampleId", default.indexs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var logstoreName = config.Get("logstoreName") ?? "logstore-example-1";
///     var projectName = config.Get("projectName") ?? "project-for-index-terraform-example-1";
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         Description = "terraform example",
///         ProjectName = projectName,
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         HotTtl = 7,
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = defaultProject.ProjectName,
///         LogstoreName = logstoreName,
///     });
///
///     var defaultIndex = new AliCloud.Sls.Index("default", new()
///     {
///         Line = new AliCloud.Sls.Inputs.IndexLineArgs
///         {
///             Chn = true,
///             CaseSensitive = true,
///             Tokens = new[]
///             {
///                 "a",
///             },
///             ExcludeKeys = new[]
///             {
///                 "t",
///             },
///         },
///         Keys = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["example"] = new Dictionary<string, object?>
///             {
///                 ["caseSensitive"] = false,
///                 ["token"] = new[]
///                 {
///                     @"
/// ",
///                     "	",
///                     ",",
///                     " ",
///                     ";",
///                     "\"",
///                     "'",
///                     "(",
///                     ")",
///                     "{",
///                     "}",
///                     "[",
///                     "]",
///                     "<",
///                     ">",
///                     "?",
///                     "/",
///                     "#",
///                     ":",
///                 },
///                 ["type"] = "text",
///                 ["doc_value"] = false,
///                 ["alias"] = "",
///                 ["chn"] = false,
///             },
///         }),
///         LogstoreName = defaultStore.LogstoreName,
///         ProjectName = projectName,
///     });
///
///     var @default = AliCloud.Sls.GetIndexs.Invoke(new()
///     {
///         LogstoreName = defaultStore.LogstoreName,
///         ProjectName = defaultProject.ProjectName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudSlsIndexExampleId"] = @default.Apply(@default => @default.Apply(getIndexsResult => getIndexsResult.Indexs[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// logstoreName := "logstore-example-1";
/// if param := cfg.Get("logstoreName"); param != ""{
/// logstoreName = param
/// }
/// projectName := "project-for-index-terraform-example-1";
/// if param := cfg.Get("projectName"); param != ""{
/// projectName = param
/// }
/// defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// Description: pulumi.String("terraform example"),
/// ProjectName: pulumi.String(projectName),
/// })
/// if err != nil {
/// return err
/// }
/// defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// HotTtl: pulumi.Int(7),
/// RetentionPeriod: pulumi.Int(30),
/// ShardCount: pulumi.Int(2),
/// ProjectName: defaultProject.ProjectName,
/// LogstoreName: pulumi.String(logstoreName),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "example": map[string]interface{}{
/// "caseSensitive": false,
/// "token": []string{
/// "\n",
/// "	",
/// ",",
/// " ",
/// ";",
/// "\"",
/// "'",
/// "(",
/// ")",
/// "{",
/// "}",
/// "[",
/// "]",
/// "<",
/// ">",
/// "?",
/// "/",
/// "#",
/// ":",
/// },
/// "type": "text",
/// "doc_value": false,
/// "alias": "",
/// "chn": false,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = sls.NewIndex(ctx, "default", &sls.IndexArgs{
/// Line: &sls.IndexLineArgs{
/// Chn: pulumi.Bool(true),
/// CaseSensitive: pulumi.Bool(true),
/// Tokens: pulumi.StringArray{
/// pulumi.String("a"),
/// },
/// ExcludeKeys: pulumi.StringArray{
/// pulumi.String("t"),
/// },
/// },
/// Keys: pulumi.String(json0),
/// LogstoreName: defaultStore.LogstoreName,
/// ProjectName: pulumi.String(projectName),
/// })
/// if err != nil {
/// return err
/// }
/// _default := sls.GetIndexsOutput(ctx, sls.GetIndexsOutputArgs{
/// LogstoreName: defaultStore.LogstoreName,
/// ProjectName: defaultProject.ProjectName,
/// }, nil);
/// ctx.Export("alicloudSlsIndexExampleId", _default.ApplyT(func(_default sls.GetIndexsResult) (*string, error) {
/// return &default.Indexs[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.sls.Index;
/// import com.pulumi.alicloud.sls.IndexArgs;
/// import com.pulumi.alicloud.sls.inputs.IndexLineArgs;
/// import com.pulumi.alicloud.sls.SlsFunctions;
/// import com.pulumi.alicloud.sls.inputs.GetIndexsArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var logstoreName = config.get("logstoreName").orElse("logstore-example-1");
///         final var projectName = config.get("projectName").orElse("project-for-index-terraform-example-1");
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .description("terraform example")
///             .projectName(projectName)
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .hotTtl(7)
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(defaultProject.projectName())
///             .logstoreName(logstoreName)
///             .build());
///
///         var defaultIndex = new Index("defaultIndex", IndexArgs.builder()
///             .line(IndexLineArgs.builder()
///                 .chn(true)
///                 .caseSensitive(true)
///                 .tokens("a")
///                 .excludeKeys("t")
///                 .build())
///             .keys(serializeJson(
///                 jsonObject(
///                     jsonProperty("example", jsonObject(
///                         jsonProperty("caseSensitive", false),
///                         jsonProperty("token", jsonArray(
///                             """
///
///                             """,
///                             "	",
///                             ",",
///                             " ",
///                             ";",
///                             "\"",
///                             "'",
///                             "(",
///                             ")",
///                             "{",
///                             "}",
///                             "[",
///                             "]",
///                             "<",
///                             ">",
///                             "?",
///                             "/",
///                             "#",
///                             ":"
///                         )),
///                         jsonProperty("type", "text"),
///                         jsonProperty("doc_value", false),
///                         jsonProperty("alias", ""),
///                         jsonProperty("chn", false)
///                     ))
///                 )))
///             .logstoreName(defaultStore.logstoreName())
///             .projectName(projectName)
///             .build());
///
///         final var default = SlsFunctions.getIndexs(GetIndexsArgs.builder()
///             .logstoreName(defaultStore.logstoreName())
///             .projectName(defaultProject.projectName())
///             .build());
///
///         ctx.export("alicloudSlsIndexExampleId", default_.applyValue(_default_ -> _default_.indexs()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   logstoreName:
///     type: string
///     default: logstore-example-1
///   projectName:
///     type: string
///     default: project-for-index-terraform-example-1
/// resources:
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       description: terraform example
///       projectName: ${projectName}
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       hotTtl: '7'
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${defaultProject.projectName}
///       logstoreName: ${logstoreName}
///   defaultIndex:
///     type: alicloud:sls:Index
///     name: default
///     properties:
///       line:
///         chn: 'true'
///         caseSensitive: 'true'
///         tokens:
///           - a
///         excludeKeys:
///           - t
///       keys:
///         fn::toJSON:
///           example:
///             caseSensitive: false
///             token:
///               - |2+
///               - "\t"
///               - ','
///               - ' '
///               - ;
///               - '"'
///               - ''''
///               - (
///               - )
///               - '{'
///               - '}'
///               - '['
///               - ']'
///               - <
///               - '>'
///               - '?'
///               - /
///               - '#'
///               - ':'
///             type: text
///             doc_value: false
///             alias: ""
///             chn: false
///       logstoreName: ${defaultStore.logstoreName}
///       projectName: ${projectName}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sls:getIndexs
///       arguments:
///         logstoreName: ${defaultStore.logstoreName}
///         projectName: ${defaultProject.projectName}
/// outputs:
///   alicloudSlsIndexExampleId: ${default.indexs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sls_get_indexs_get_indexs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexsResult> getIndexs(
  GetIndexsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sls/getIndexs:getIndexs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexsResult.fromMap(result);
}

/// This data source provides Sls Logtail Config available to the user.[What is Logtail Config](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateConfig)
///
/// &gt; **NOTE:** Available since v1.259.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfaccsls62147";
/// const projectName = config.get("projectName") || "project-for-logtail-terraform";
/// const defaultuA28zS = new alicloud.log.Project("defaultuA28zS", {projectName: projectName});
/// const defaultLogtailConfig = new alicloud.sls.LogtailConfig("default", {
///     projectName: defaultuA28zS.projectName,
///     outputDetail: {
///         endpoint: "cn-hangzhou-intranet.log.aliyuncs.com",
///         region: "cn-hangzhou",
///         logstoreName: "example",
///     },
///     outputType: "LogService",
///     inputDetail: JSON.stringify({
///         adjustTimezone: false,
///         delayAlarmBytes: 0,
///         delaySkipBytes: 0,
///         discardNonUtf8: false,
///         discardUnmatch: true,
///         dockerFile: false,
///         enableRawLog: false,
///         enableTag: false,
///         fileEncoding: "utf8",
///         filePattern: "access*.log",
///         filterKey: ["key1"],
///         filterRegex: ["regex1"],
///         key: [
///             "key1",
///             "key2",
///         ],
///         localStorage: true,
///         logBeginRegex: ".*",
///         logPath: "/var/log/httpd",
///         logTimezone: "",
///         logType: "common_reg_log",
///         maxDepth: 1000,
///         maxSendRate: -1,
///         mergeType: "topic",
///         preserve: true,
///         preserveDepth: 0,
///         priority: 0,
///         regex: "(w+)(s+)",
///         sendRateExpire: 0,
///         sensitive_keys: [],
///         tailExisted: false,
///         timeFormat: "%Y/%m/%d %H:%M:%S",
///         timeKey: "time",
///         topicFormat: "none",
///     }),
///     logtailConfigName: "tfaccsls62147",
///     inputType: "file",
/// });
/// const _default = defaultLogtailConfig.logtailConfigName.apply(logtailConfigName => alicloud.sls.getLogtailConfigsOutput({
///     logtailConfigName: logtailConfigName,
///     logstoreName: "example",
///     projectName: projectName,
///     offset: 0,
///     size: 100,
/// }));
/// export const alicloudSlsLogtailConfigExampleId = _default.apply(_default => _default.configs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfaccsls62147"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "project-for-logtail-terraform"
/// defaultu_a28z_s = alicloud.log.Project("defaultuA28zS", project_name=project_name)
/// default_logtail_config = alicloud.sls.LogtailConfig("default",
///     project_name=defaultu_a28z_s.project_name,
///     output_detail={
///         "endpoint": "cn-hangzhou-intranet.log.aliyuncs.com",
///         "region": "cn-hangzhou",
///         "logstore_name": "example",
///     },
///     output_type="LogService",
///     input_detail=json.dumps({
///         "adjustTimezone": False,
///         "delayAlarmBytes": 0,
///         "delaySkipBytes": 0,
///         "discardNonUtf8": False,
///         "discardUnmatch": True,
///         "dockerFile": False,
///         "enableRawLog": False,
///         "enableTag": False,
///         "fileEncoding": "utf8",
///         "filePattern": "access*.log",
///         "filterKey": ["key1"],
///         "filterRegex": ["regex1"],
///         "key": [
///             "key1",
///             "key2",
///         ],
///         "localStorage": True,
///         "logBeginRegex": ".*",
///         "logPath": "/var/log/httpd",
///         "logTimezone": "",
///         "logType": "common_reg_log",
///         "maxDepth": 1000,
///         "maxSendRate": -1,
///         "mergeType": "topic",
///         "preserve": True,
///         "preserveDepth": 0,
///         "priority": 0,
///         "regex": "(w+)(s+)",
///         "sendRateExpire": 0,
///         "sensitive_keys": [],
///         "tailExisted": False,
///         "timeFormat": "%Y/%m/%d %H:%M:%S",
///         "timeKey": "time",
///         "topicFormat": "none",
///     }),
///     logtail_config_name="tfaccsls62147",
///     input_type="file")
/// default = default_logtail_config.logtail_config_name.apply(lambda logtail_config_name: alicloud.sls.get_logtail_configs_output(logtail_config_name=logtail_config_name,
///     logstore_name="example",
///     project_name=project_name,
///     offset=0,
///     size=100))
/// pulumi.export("alicloudSlsLogtailConfigExampleId", default.configs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "tfaccsls62147";
///     var projectName = config.Get("projectName") ?? "project-for-logtail-terraform";
///     var defaultuA28zS = new AliCloud.Log.Project("defaultuA28zS", new()
///     {
///         ProjectName = projectName,
///     });
///
///     var defaultLogtailConfig = new AliCloud.Sls.LogtailConfig("default", new()
///     {
///         ProjectName = defaultuA28zS.ProjectName,
///         OutputDetail = new AliCloud.Sls.Inputs.LogtailConfigOutputDetailArgs
///         {
///             Endpoint = "cn-hangzhou-intranet.log.aliyuncs.com",
///             Region = "cn-hangzhou",
///             LogstoreName = "example",
///         },
///         OutputType = "LogService",
///         InputDetail = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["adjustTimezone"] = false,
///             ["delayAlarmBytes"] = 0,
///             ["delaySkipBytes"] = 0,
///             ["discardNonUtf8"] = false,
///             ["discardUnmatch"] = true,
///             ["dockerFile"] = false,
///             ["enableRawLog"] = false,
///             ["enableTag"] = false,
///             ["fileEncoding"] = "utf8",
///             ["filePattern"] = "access*.log",
///             ["filterKey"] = new[]
///             {
///                 "key1",
///             },
///             ["filterRegex"] = new[]
///             {
///                 "regex1",
///             },
///             ["key"] = new[]
///             {
///                 "key1",
///                 "key2",
///             },
///             ["localStorage"] = true,
///             ["logBeginRegex"] = ".*",
///             ["logPath"] = "/var/log/httpd",
///             ["logTimezone"] = "",
///             ["logType"] = "common_reg_log",
///             ["maxDepth"] = 1000,
///             ["maxSendRate"] = -1,
///             ["mergeType"] = "topic",
///             ["preserve"] = true,
///             ["preserveDepth"] = 0,
///             ["priority"] = 0,
///             ["regex"] = "(w+)(s+)",
///             ["sendRateExpire"] = 0,
///             ["sensitive_keys"] = new[]
///             {
///             },
///             ["tailExisted"] = false,
///             ["timeFormat"] = "%Y/%m/%d %H:%M:%S",
///             ["timeKey"] = "time",
///             ["topicFormat"] = "none",
///         }),
///         LogtailConfigName = "tfaccsls62147",
///         InputType = "file",
///     });
///
///     var @default = AliCloud.Sls.GetLogtailConfigs.Invoke(new()
///     {
///         LogtailConfigName = defaultLogtailConfig.LogtailConfigName,
///         LogstoreName = "example",
///         ProjectName = projectName,
///         Offset = 0,
///         Size = 100,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudSlsLogtailConfigExampleId"] = @default.Apply(@default => @default.Apply(getLogtailConfigsResult => getLogtailConfigsResult.Configs[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Max: 99999,
/// Min: 10000,
/// })
/// if err != nil {
/// return err
/// }
/// cfg := config.New(ctx, "")
/// name := "tfaccsls62147";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// projectName := "project-for-logtail-terraform";
/// if param := cfg.Get("projectName"); param != ""{
/// projectName = param
/// }
/// defaultuA28zS, err := log.NewProject(ctx, "defaultuA28zS", &log.ProjectArgs{
/// ProjectName: pulumi.String(projectName),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "adjustTimezone": false,
/// "delayAlarmBytes": 0,
/// "delaySkipBytes": 0,
/// "discardNonUtf8": false,
/// "discardUnmatch": true,
/// "dockerFile": false,
/// "enableRawLog": false,
/// "enableTag": false,
/// "fileEncoding": "utf8",
/// "filePattern": "access*.log",
/// "filterKey": []string{
/// "key1",
/// },
/// "filterRegex": []string{
/// "regex1",
/// },
/// "key": []string{
/// "key1",
/// "key2",
/// },
/// "localStorage": true,
/// "logBeginRegex": ".*",
/// "logPath": "/var/log/httpd",
/// "logTimezone": "",
/// "logType": "common_reg_log",
/// "maxDepth": 1000,
/// "maxSendRate": -1,
/// "mergeType": "topic",
/// "preserve": true,
/// "preserveDepth": 0,
/// "priority": 0,
/// "regex": "(w+)(s+)",
/// "sendRateExpire": 0,
/// "sensitive_keys": []interface{}{
/// },
/// "tailExisted": false,
/// "timeFormat": "%Y/%m/%d %H:%M:%S",
/// "timeKey": "time",
/// "topicFormat": "none",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// defaultLogtailConfig, err := sls.NewLogtailConfig(ctx, "default", &sls.LogtailConfigArgs{
/// ProjectName: defaultuA28zS.ProjectName,
/// OutputDetail: &sls.LogtailConfigOutputDetailArgs{
/// Endpoint: pulumi.String("cn-hangzhou-intranet.log.aliyuncs.com"),
/// Region: pulumi.String("cn-hangzhou"),
/// LogstoreName: pulumi.String("example"),
/// },
/// OutputType: pulumi.String("LogService"),
/// InputDetail: pulumi.String(json0),
/// LogtailConfigName: pulumi.String("tfaccsls62147"),
/// InputType: pulumi.String("file"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := defaultLogtailConfig.LogtailConfigName.ApplyT(func(logtailConfigName string) (sls.GetLogtailConfigsResult, error) {
/// return sls.GetLogtailConfigsResult(interface{}(sls.GetLogtailConfigs(ctx, &sls.GetLogtailConfigsArgs{
/// LogtailConfigName: pulumi.StringRef(pulumi.StringRef(logtailConfigName)),
/// LogstoreName: "example",
/// ProjectName: projectName,
/// Offset: 0,
/// Size: 100,
/// }, nil))), nil
/// }).(sls.GetLogtailConfigsResultOutput)
/// ctx.Export("alicloudSlsLogtailConfigExampleId", _default.ApplyT(func(_default sls.GetLogtailConfigsResult) (*string, error) {
/// return &default.Configs[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.sls.LogtailConfig;
/// import com.pulumi.alicloud.sls.LogtailConfigArgs;
/// import com.pulumi.alicloud.sls.inputs.LogtailConfigOutputDetailArgs;
/// import com.pulumi.alicloud.sls.SlsFunctions;
/// import com.pulumi.alicloud.sls.inputs.GetLogtailConfigsArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var name = config.get("name").orElse("tfaccsls62147");
///         final var projectName = config.get("projectName").orElse("project-for-logtail-terraform");
///         var defaultuA28zS = new Project("defaultuA28zS", ProjectArgs.builder()
///             .projectName(projectName)
///             .build());
///
///         var defaultLogtailConfig = new LogtailConfig("defaultLogtailConfig", LogtailConfigArgs.builder()
///             .projectName(defaultuA28zS.projectName())
///             .outputDetail(LogtailConfigOutputDetailArgs.builder()
///                 .endpoint("cn-hangzhou-intranet.log.aliyuncs.com")
///                 .region("cn-hangzhou")
///                 .logstoreName("example")
///                 .build())
///             .outputType("LogService")
///             .inputDetail(serializeJson(
///                 jsonObject(
///                     jsonProperty("adjustTimezone", false),
///                     jsonProperty("delayAlarmBytes", 0),
///                     jsonProperty("delaySkipBytes", 0),
///                     jsonProperty("discardNonUtf8", false),
///                     jsonProperty("discardUnmatch", true),
///                     jsonProperty("dockerFile", false),
///                     jsonProperty("enableRawLog", false),
///                     jsonProperty("enableTag", false),
///                     jsonProperty("fileEncoding", "utf8"),
///                     jsonProperty("filePattern", "access*.log"),
///                     jsonProperty("filterKey", jsonArray("key1")),
///                     jsonProperty("filterRegex", jsonArray("regex1")),
///                     jsonProperty("key", jsonArray(
///                         "key1",
///                         "key2"
///                     )),
///                     jsonProperty("localStorage", true),
///                     jsonProperty("logBeginRegex", ".*"),
///                     jsonProperty("logPath", "/var/log/httpd"),
///                     jsonProperty("logTimezone", ""),
///                     jsonProperty("logType", "common_reg_log"),
///                     jsonProperty("maxDepth", 1000),
///                     jsonProperty("maxSendRate", -1),
///                     jsonProperty("mergeType", "topic"),
///                     jsonProperty("preserve", true),
///                     jsonProperty("preserveDepth", 0),
///                     jsonProperty("priority", 0),
///                     jsonProperty("regex", "(w+)(s+)"),
///                     jsonProperty("sendRateExpire", 0),
///                     jsonProperty("sensitive_keys", jsonArray(
///                     )),
///                     jsonProperty("tailExisted", false),
///                     jsonProperty("timeFormat", "%Y/%m/%d %H:%M:%S"),
///                     jsonProperty("timeKey", "time"),
///                     jsonProperty("topicFormat", "none")
///                 )))
///             .logtailConfigName("tfaccsls62147")
///             .inputType("file")
///             .build());
///
///         final var default = defaultLogtailConfig.logtailConfigName().applyValue(_logtailConfigName -> SlsFunctions.getLogtailConfigs(GetLogtailConfigsArgs.builder()
///             .logtailConfigName(_logtailConfigName)
///             .logstoreName("example")
///             .projectName(projectName)
///             .offset(0)
///             .size(100)
///             .build()));
///
///         ctx.export("alicloudSlsLogtailConfigExampleId", default_.applyValue(_default_ -> _default_.configs()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfaccsls62147
///   projectName:
///     type: string
///     default: project-for-logtail-terraform
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultuA28zS:
///     type: alicloud:log:Project
///     properties:
///       projectName: ${projectName}
///   defaultLogtailConfig:
///     type: alicloud:sls:LogtailConfig
///     name: default
///     properties:
///       projectName: ${defaultuA28zS.projectName}
///       outputDetail:
///         endpoint: cn-hangzhou-intranet.log.aliyuncs.com
///         region: cn-hangzhou
///         logstoreName: example
///       outputType: LogService
///       inputDetail:
///         fn::toJSON:
///           adjustTimezone: false
///           delayAlarmBytes: 0
///           delaySkipBytes: 0
///           discardNonUtf8: false
///           discardUnmatch: true
///           dockerFile: false
///           enableRawLog: false
///           enableTag: false
///           fileEncoding: utf8
///           filePattern: access*.log
///           filterKey:
///             - key1
///           filterRegex:
///             - regex1
///           key:
///             - key1
///             - key2
///           localStorage: true
///           logBeginRegex: .*
///           logPath: /var/log/httpd
///           logTimezone: ""
///           logType: common_reg_log
///           maxDepth: 1000
///           maxSendRate: -1
///           mergeType: topic
///           preserve: true
///           preserveDepth: 0
///           priority: 0
///           regex: (w+)(s+)
///           sendRateExpire: 0
///           sensitive_keys: []
///           tailExisted: false
///           timeFormat: '%Y/%m/%d %H:%M:%S'
///           timeKey: time
///           topicFormat: none
///       logtailConfigName: tfaccsls62147
///       inputType: file
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sls:getLogtailConfigs
///       arguments:
///         logtailConfigName: ${defaultLogtailConfig.logtailConfigName}
///         logstoreName: example
///         projectName: ${projectName}
///         offset: 0
///         size: 100
/// outputs:
///   alicloudSlsLogtailConfigExampleId: ${default.configs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sls_get_logtail_configs_get_logtail_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogtailConfigsResult> getLogtailConfigs(
  GetLogtailConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sls/getLogtailConfigs:getLogtailConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogtailConfigsResult.fromMap(result);
}

/// This data source provides Sls Machine Group available to the user.[What is Machine Group](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateMachineGroup)
///
/// &gt; **NOTE:** Available since v1.259.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const projectName = config.get("projectName") || "project-for-machine-group-terraform";
/// const defaultyJqrue = new alicloud.log.Project("defaultyJqrue", {
///     description: "for terraform example",
///     name: projectName,
/// });
/// const defaultMachineGroup = new alicloud.sls.MachineGroup("default", {
///     groupName: "group1",
///     projectName: projectName,
///     machineIdentifyType: "ip",
///     groupAttribute: {
///         groupTopic: "example",
///         externalName: "example",
///     },
///     machineLists: ["192.168.1.1"],
/// });
/// const _default = alicloud.sls.getMachineGroupsOutput({
///     ids: [defaultMachineGroup.id],
///     groupName: "group1",
///     projectName: projectName,
/// });
/// export const alicloudSlsMachineGroupExampleId = _default.apply(_default => _default.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "project-for-machine-group-terraform"
/// defaulty_jqrue = alicloud.log.Project("defaultyJqrue",
///     description="for terraform example",
///     name=project_name)
/// default_machine_group = alicloud.sls.MachineGroup("default",
///     group_name="group1",
///     project_name=project_name,
///     machine_identify_type="ip",
///     group_attribute={
///         "group_topic": "example",
///         "external_name": "example",
///     },
///     machine_lists=["192.168.1.1"])
/// default = alicloud.sls.get_machine_groups_output(ids=[default_machine_group.id],
///     group_name="group1",
///     project_name=project_name)
/// pulumi.export("alicloudSlsMachineGroupExampleId", default.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var projectName = config.Get("projectName") ?? "project-for-machine-group-terraform";
///     var defaultyJqrue = new AliCloud.Log.Project("defaultyJqrue", new()
///     {
///         Description = "for terraform example",
///         Name = projectName,
///     });
///
///     var defaultMachineGroup = new AliCloud.Sls.MachineGroup("default", new()
///     {
///         GroupName = "group1",
///         ProjectName = projectName,
///         MachineIdentifyType = "ip",
///         GroupAttribute = new AliCloud.Sls.Inputs.MachineGroupGroupAttributeArgs
///         {
///             GroupTopic = "example",
///             ExternalName = "example",
///         },
///         MachineLists = new[]
///         {
///             "192.168.1.1",
///         },
///     });
///
///     var @default = AliCloud.Sls.GetMachineGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultMachineGroup.Id,
///         },
///         GroupName = "group1",
///         ProjectName = projectName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudSlsMachineGroupExampleId"] = @default.Apply(@default => @default.Apply(getMachineGroupsResult => getMachineGroupsResult.Groups[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// projectName := "project-for-machine-group-terraform";
/// if param := cfg.Get("projectName"); param != ""{
/// projectName = param
/// }
/// _, err := log.NewProject(ctx, "defaultyJqrue", &log.ProjectArgs{
/// Description: pulumi.String("for terraform example"),
/// Name: pulumi.String(projectName),
/// })
/// if err != nil {
/// return err
/// }
/// defaultMachineGroup, err := sls.NewMachineGroup(ctx, "default", &sls.MachineGroupArgs{
/// GroupName: pulumi.String("group1"),
/// ProjectName: pulumi.String(projectName),
/// MachineIdentifyType: pulumi.String("ip"),
/// GroupAttribute: &sls.MachineGroupGroupAttributeArgs{
/// GroupTopic: pulumi.String("example"),
/// ExternalName: pulumi.String("example"),
/// },
/// MachineLists: pulumi.StringArray{
/// pulumi.String("192.168.1.1"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _default := sls.GetMachineGroupsOutput(ctx, sls.GetMachineGroupsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultMachineGroup.ID(),
/// },
/// GroupName: pulumi.String("group1"),
/// ProjectName: pulumi.String(projectName),
/// }, nil);
/// ctx.Export("alicloudSlsMachineGroupExampleId", _default.ApplyT(func(_default sls.GetMachineGroupsResult) (*string, error) {
/// return &default.Groups[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.sls.MachineGroup;
/// import com.pulumi.alicloud.sls.MachineGroupArgs;
/// import com.pulumi.alicloud.sls.inputs.MachineGroupGroupAttributeArgs;
/// import com.pulumi.alicloud.sls.SlsFunctions;
/// import com.pulumi.alicloud.sls.inputs.GetMachineGroupsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var projectName = config.get("projectName").orElse("project-for-machine-group-terraform");
///         var defaultyJqrue = new Project("defaultyJqrue", ProjectArgs.builder()
///             .description("for terraform example")
///             .name(projectName)
///             .build());
///
///         var defaultMachineGroup = new MachineGroup("defaultMachineGroup", MachineGroupArgs.builder()
///             .groupName("group1")
///             .projectName(projectName)
///             .machineIdentifyType("ip")
///             .groupAttribute(MachineGroupGroupAttributeArgs.builder()
///                 .groupTopic("example")
///                 .externalName("example")
///                 .build())
///             .machineLists("192.168.1.1")
///             .build());
///
///         final var default = SlsFunctions.getMachineGroups(GetMachineGroupsArgs.builder()
///             .ids(defaultMachineGroup.id())
///             .groupName("group1")
///             .projectName(projectName)
///             .build());
///
///         ctx.export("alicloudSlsMachineGroupExampleId", default_.applyValue(_default_ -> _default_.groups()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   projectName:
///     type: string
///     default: project-for-machine-group-terraform
/// resources:
///   defaultyJqrue:
///     type: alicloud:log:Project
///     properties:
///       description: for terraform example
///       name: ${projectName}
///   defaultMachineGroup:
///     type: alicloud:sls:MachineGroup
///     name: default
///     properties:
///       groupName: group1
///       projectName: ${projectName}
///       machineIdentifyType: ip
///       groupAttribute:
///         groupTopic: example
///         externalName: example
///       machineLists:
///         - 192.168.1.1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sls:getMachineGroups
///       arguments:
///         ids:
///           - ${defaultMachineGroup.id}
///         groupName: group1
///         projectName: ${projectName}
/// outputs:
///   alicloudSlsMachineGroupExampleId: ${default.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sls_get_machine_groups_get_machine_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineGroupsResult> getMachineGroups(
  GetMachineGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sls/getMachineGroups:getMachineGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineGroupsResult.fromMap(result);
}
