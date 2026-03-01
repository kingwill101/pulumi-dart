import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_args.dart';
import 'alert_configuration.dart';
import 'alert_schedule.dart';

/// Provides a SLS Alert resource.
///
/// For information about SLS Alert and how to use it, see [What is Alert](https://www.alibabacloud.com/help/en/doc-detail/209202.html).
///
/// > **NOTE:** Available since v1.223.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const alertName = config.get("alertName") || "openapi-terraform-alert";
/// const projectName = config.get("projectName") || "terraform-alert-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultINsMgl = new alicloud.log.Project("defaultINsMgl", {
///     description: `${projectName}-${_default.result}`,
///     projectName: `${projectName}-${_default.result}`,
/// });
/// const defaultAlert = new alicloud.sls.Alert("default", {
///     schedule: {
///         type: "FixedRate",
///         runImmdiately: true,
///         interval: "1m",
///         timeZone: "+0800",
///         delay: 10,
///     },
///     displayName: "openapi-terraform",
///     description: "create alert",
///     status: "ENABLED",
///     configuration: {
///         groupConfiguration: {
///             fields: [
///                 "a",
///                 "b",
///             ],
///             type: "no_group",
///         },
///         noDataFire: false,
///         version: "2",
///         severityConfigurations: [{
///             severity: 6,
///             evalCondition: {
///                 countCondition: "cnt > 0",
///                 condition: "__count__ > 1",
///             },
///         }],
///         labels: [{
///             key: "a",
///             value: "b",
///         }],
///         autoAnnotation: true,
///         templateConfiguration: {
///             lang: "cn",
///             tokens: {
///                 a: "b",
///             },
///             annotations: {
///                 x: "y",
///             },
///             templateId: "sls.app.ack.autoscaler.cluster_unhealthy",
///             type: "sys",
///             version: "1.0",
///         },
///         muteUntil: 0,
///         annotations: [{
///             key: "x",
///             value: "y",
///         }],
///         sendResolved: false,
///         threshold: 1,
///         sinkCms: {
///             enabled: false,
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
///         type: "tpl",
///         queryLists: [
///             {
///                 ui: "{}",
///                 roleArn: "acs:ram::1654218965343050:role/aliyunslsalertmonitorrole",
///                 query: "* | select *",
///                 timeSpanType: "Relative",
///                 project: defaultINsMgl.projectName,
///                 powerSqlMode: "disable",
///                 dashboardId: "wkb-dashboard",
///                 chartTitle: "wkb-chart",
///                 start: "-15m",
///                 end: "now",
///                 storeType: "log",
///                 store: "alert",
///                 region: "cn-shanghai",
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
///         sinkEventStore: {
///             enabled: true,
///             endpoint: "cn-shanghai-intranet.log.aliyuncs.com",
///             project: "wkb-wangren",
///             eventStore: "alert",
///             roleArn: "acs:ram::1654218965343050:role/aliyunlogetlrole",
///         },
///         sinkAlerthub: {
///             enabled: false,
///         },
///         noDataSeverity: 6,
///         tags: [
///             "wkb",
///             "wangren",
///             "sls",
///         ],
///     },
///     alertName: alertName,
///     projectName: defaultINsMgl.projectName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
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
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_ins_mgl = alicloud.log.Project("defaultINsMgl",
///     description=f"{project_name}-{default['result']}",
///     project_name=f"{project_name}-{default['result']}")
/// default_alert = alicloud.sls.Alert("default",
///     schedule={
///         "type": "FixedRate",
///         "run_immdiately": True,
///         "interval": "1m",
///         "time_zone": "+0800",
///         "delay": 10,
///     },
///     display_name="openapi-terraform",
///     description="create alert",
///     status="ENABLED",
///     configuration={
///         "group_configuration": {
///             "fields": [
///                 "a",
///                 "b",
///             ],
///             "type": "no_group",
///         },
///         "no_data_fire": False,
///         "version": "2",
///         "severity_configurations": [{
///             "severity": 6,
///             "eval_condition": {
///                 "count_condition": "cnt > 0",
///                 "condition": "__count__ > 1",
///             },
///         }],
///         "labels": [{
///             "key": "a",
///             "value": "b",
///         }],
///         "auto_annotation": True,
///         "template_configuration": {
///             "lang": "cn",
///             "tokens": {
///                 "a": "b",
///             },
///             "annotations": {
///                 "x": "y",
///             },
///             "template_id": "sls.app.ack.autoscaler.cluster_unhealthy",
///             "type": "sys",
///             "version": "1.0",
///         },
///         "mute_until": 0,
///         "annotations": [{
///             "key": "x",
///             "value": "y",
///         }],
///         "send_resolved": False,
///         "threshold": 1,
///         "sink_cms": {
///             "enabled": False,
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
///         "type": "tpl",
///         "query_lists": [
///             {
///                 "ui": "{}",
///                 "role_arn": "acs:ram::1654218965343050:role/aliyunslsalertmonitorrole",
///                 "query": "* | select *",
///                 "time_span_type": "Relative",
///                 "project": default_ins_mgl.project_name,
///                 "power_sql_mode": "disable",
///                 "dashboard_id": "wkb-dashboard",
///                 "chart_title": "wkb-chart",
///                 "start": "-15m",
///                 "end": "now",
///                 "store_type": "log",
///                 "store": "alert",
///                 "region": "cn-shanghai",
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
///         "sink_event_store": {
///             "enabled": True,
///             "endpoint": "cn-shanghai-intranet.log.aliyuncs.com",
///             "project": "wkb-wangren",
///             "event_store": "alert",
///             "role_arn": "acs:ram::1654218965343050:role/aliyunlogetlrole",
///         },
///         "sink_alerthub": {
///             "enabled": False,
///         },
///         "no_data_severity": 6,
///         "tags": [
///             "wkb",
///             "wangren",
///             "sls",
///         ],
///     },
///     alert_name=alert_name,
///     project_name=default_ins_mgl.project_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var alertName = config.Get("alertName") ?? "openapi-terraform-alert";
///     var projectName = config.Get("projectName") ?? "terraform-alert-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultINsMgl = new AliCloud.Log.Project("defaultINsMgl", new()
///     {
///         Description = $"{projectName}-{@default.Result}",
///         ProjectName = $"{projectName}-{@default.Result}",
///     });
///
///     var defaultAlert = new AliCloud.Sls.Alert("default", new()
///     {
///         Schedule = new AliCloud.Sls.Inputs.AlertScheduleArgs
///         {
///             Type = "FixedRate",
///             RunImmdiately = true,
///             Interval = "1m",
///             TimeZone = "+0800",
///             Delay = 10,
///         },
///         DisplayName = "openapi-terraform",
///         Description = "create alert",
///         Status = "ENABLED",
///         Configuration = new AliCloud.Sls.Inputs.AlertConfigurationArgs
///         {
///             GroupConfiguration = new AliCloud.Sls.Inputs.AlertConfigurationGroupConfigurationArgs
///             {
///                 Fields = new[]
///                 {
///                     "a",
///                     "b",
///                 },
///                 Type = "no_group",
///             },
///             NoDataFire = false,
///             Version = "2",
///             SeverityConfigurations = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationSeverityConfigurationArgs
///                 {
///                     Severity = 6,
///                     EvalCondition = new AliCloud.Sls.Inputs.AlertConfigurationSeverityConfigurationEvalConditionArgs
///                     {
///                         CountCondition = "cnt > 0",
///                         Condition = "__count__ > 1",
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
///             AutoAnnotation = true,
///             TemplateConfiguration = new AliCloud.Sls.Inputs.AlertConfigurationTemplateConfigurationArgs
///             {
///                 Lang = "cn",
///                 Tokens =
///                 {
///                     { "a", "b" },
///                 },
///                 Annotations =
///                 {
///                     { "x", "y" },
///                 },
///                 TemplateId = "sls.app.ack.autoscaler.cluster_unhealthy",
///                 Type = "sys",
///                 Version = "1.0",
///             },
///             MuteUntil = 0,
///             Annotations = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationAnnotationArgs
///                 {
///                     Key = "x",
///                     Value = "y",
///                 },
///             },
///             SendResolved = false,
///             Threshold = 1,
///             SinkCms = new AliCloud.Sls.Inputs.AlertConfigurationSinkCmsArgs
///             {
///                 Enabled = false,
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
///             Type = "tpl",
///             QueryLists = new[]
///             {
///                 new AliCloud.Sls.Inputs.AlertConfigurationQueryListArgs
///                 {
///                     Ui = "{}",
///                     RoleArn = "acs:ram::1654218965343050:role/aliyunslsalertmonitorrole",
///                     Query = "* | select *",
///                     TimeSpanType = "Relative",
///                     Project = defaultINsMgl.ProjectName,
///                     PowerSqlMode = "disable",
///                     DashboardId = "wkb-dashboard",
///                     ChartTitle = "wkb-chart",
///                     Start = "-15m",
///                     End = "now",
///                     StoreType = "log",
///                     Store = "alert",
///                     Region = "cn-shanghai",
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
///             SinkEventStore = new AliCloud.Sls.Inputs.AlertConfigurationSinkEventStoreArgs
///             {
///                 Enabled = true,
///                 Endpoint = "cn-shanghai-intranet.log.aliyuncs.com",
///                 Project = "wkb-wangren",
///                 EventStore = "alert",
///                 RoleArn = "acs:ram::1654218965343050:role/aliyunlogetlrole",
///             },
///             SinkAlerthub = new AliCloud.Sls.Inputs.AlertConfigurationSinkAlerthubArgs
///             {
///                 Enabled = false,
///             },
///             NoDataSeverity = 6,
///             Tags = new[]
///             {
///                 "wkb",
///                 "wangren",
///                 "sls",
///             },
///         },
///         AlertName = alertName,
///         ProjectName = defaultINsMgl.ProjectName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		alertName := "openapi-terraform-alert"
/// 		if param := cfg.Get("alertName"); param != "" {
/// 			alertName = param
/// 		}
/// 		projectName := "terraform-alert-example"
/// 		if param := cfg.Get("projectName"); param != "" {
/// 			projectName = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultINsMgl, err := log.NewProject(ctx, "defaultINsMgl", &log.ProjectArgs{
/// 			Description: pulumi.Sprintf("%v-%v", projectName, _default.Result),
/// 			ProjectName: pulumi.Sprintf("%v-%v", projectName, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sls.NewAlert(ctx, "default", &sls.AlertArgs{
/// 			Schedule: &sls.AlertScheduleArgs{
/// 				Type:          pulumi.String("FixedRate"),
/// 				RunImmdiately: pulumi.Bool(true),
/// 				Interval:      pulumi.String("1m"),
/// 				TimeZone:      pulumi.String("+0800"),
/// 				Delay:         pulumi.Int(10),
/// 			},
/// 			DisplayName: pulumi.String("openapi-terraform"),
/// 			Description: pulumi.String("create alert"),
/// 			Status:      pulumi.String("ENABLED"),
/// 			Configuration: &sls.AlertConfigurationArgs{
/// 				GroupConfiguration: &sls.AlertConfigurationGroupConfigurationArgs{
/// 					Fields: pulumi.StringArray{
/// 						pulumi.String("a"),
/// 						pulumi.String("b"),
/// 					},
/// 					Type: pulumi.String("no_group"),
/// 				},
/// 				NoDataFire: pulumi.Bool(false),
/// 				Version:    pulumi.String("2"),
/// 				SeverityConfigurations: sls.AlertConfigurationSeverityConfigurationArray{
/// 					&sls.AlertConfigurationSeverityConfigurationArgs{
/// 						Severity: pulumi.Int(6),
/// 						EvalCondition: &sls.AlertConfigurationSeverityConfigurationEvalConditionArgs{
/// 							CountCondition: pulumi.String("cnt > 0"),
/// 							Condition:      pulumi.String("__count__ > 1"),
/// 						},
/// 					},
/// 				},
/// 				Labels: sls.AlertConfigurationLabelArray{
/// 					&sls.AlertConfigurationLabelArgs{
/// 						Key:   pulumi.String("a"),
/// 						Value: pulumi.String("b"),
/// 					},
/// 				},
/// 				AutoAnnotation: pulumi.Bool(true),
/// 				TemplateConfiguration: &sls.AlertConfigurationTemplateConfigurationArgs{
/// 					Lang: pulumi.String("cn"),
/// 					Tokens: pulumi.StringMap{
/// 						"a": pulumi.String("b"),
/// 					},
/// 					Annotations: pulumi.StringMap{
/// 						"x": pulumi.String("y"),
/// 					},
/// 					TemplateId: pulumi.String("sls.app.ack.autoscaler.cluster_unhealthy"),
/// 					Type:       pulumi.String("sys"),
/// 					Version:    pulumi.String("1.0"),
/// 				},
/// 				MuteUntil: pulumi.Int(0),
/// 				Annotations: sls.AlertConfigurationAnnotationArray{
/// 					&sls.AlertConfigurationAnnotationArgs{
/// 						Key:   pulumi.String("x"),
/// 						Value: pulumi.String("y"),
/// 					},
/// 				},
/// 				SendResolved: pulumi.Bool(false),
/// 				Threshold:    pulumi.Int(1),
/// 				SinkCms: &sls.AlertConfigurationSinkCmsArgs{
/// 					Enabled: pulumi.Bool(false),
/// 				},
/// 				ConditionConfiguration: &sls.AlertConfigurationConditionConfigurationArgs{
/// 					Condition:      pulumi.String("cnt > 3"),
/// 					CountCondition: pulumi.String("__count__ < 3"),
/// 				},
/// 				PolicyConfiguration: &sls.AlertConfigurationPolicyConfigurationArgs{
/// 					AlertPolicyId:  pulumi.String("sls.builtin.dynamic"),
/// 					ActionPolicyId: pulumi.String("wkb-action"),
/// 					RepeatInterval: pulumi.String("1m"),
/// 				},
/// 				Dashboard: pulumi.String("internal-alert"),
/// 				Type:      pulumi.String("tpl"),
/// 				QueryLists: sls.AlertConfigurationQueryListArray{
/// 					&sls.AlertConfigurationQueryListArgs{
/// 						Ui:           pulumi.String("{}"),
/// 						RoleArn:      pulumi.String("acs:ram::1654218965343050:role/aliyunslsalertmonitorrole"),
/// 						Query:        pulumi.String("* | select *"),
/// 						TimeSpanType: pulumi.String("Relative"),
/// 						Project:      defaultINsMgl.ProjectName,
/// 						PowerSqlMode: pulumi.String("disable"),
/// 						DashboardId:  pulumi.String("wkb-dashboard"),
/// 						ChartTitle:   pulumi.String("wkb-chart"),
/// 						Start:        pulumi.String("-15m"),
/// 						End:          pulumi.String("now"),
/// 						StoreType:    pulumi.String("log"),
/// 						Store:        pulumi.String("alert"),
/// 						Region:       pulumi.String("cn-shanghai"),
/// 					},
/// 					&sls.AlertConfigurationQueryListArgs{
/// 						StoreType: pulumi.String("meta"),
/// 						Store:     pulumi.String("user.rds_ip_whitelist"),
/// 					},
/// 					&sls.AlertConfigurationQueryListArgs{
/// 						StoreType: pulumi.String("meta"),
/// 						Store:     pulumi.String("myexample1"),
/// 					},
/// 				},
/// 				JoinConfigurations: sls.AlertConfigurationJoinConfigurationArray{
/// 					&sls.AlertConfigurationJoinConfigurationArgs{
/// 						Type:      pulumi.String("no_join"),
/// 						Condition: pulumi.String("aa"),
/// 					},
/// 					&sls.AlertConfigurationJoinConfigurationArgs{
/// 						Type:      pulumi.String("cross_join"),
/// 						Condition: pulumi.String("qqq"),
/// 					},
/// 					&sls.AlertConfigurationJoinConfigurationArgs{
/// 						Type:      pulumi.String("inner_join"),
/// 						Condition: pulumi.String("fefefe"),
/// 					},
/// 				},
/// 				SinkEventStore: &sls.AlertConfigurationSinkEventStoreArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					Endpoint:   pulumi.String("cn-shanghai-intranet.log.aliyuncs.com"),
/// 					Project:    pulumi.String("wkb-wangren"),
/// 					EventStore: pulumi.String("alert"),
/// 					RoleArn:    pulumi.String("acs:ram::1654218965343050:role/aliyunlogetlrole"),
/// 				},
/// 				SinkAlerthub: &sls.AlertConfigurationSinkAlerthubArgs{
/// 					Enabled: pulumi.Bool(false),
/// 				},
/// 				NoDataSeverity: pulumi.Int(6),
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("wkb"),
/// 					pulumi.String("wangren"),
/// 					pulumi.String("sls"),
/// 				},
/// 			},
/// 			AlertName:   pulumi.String(alertName),
/// 			ProjectName: defaultINsMgl.ProjectName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.alicloud.sls.Alert;
/// import com.pulumi.alicloud.sls.AlertArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertScheduleArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationGroupConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationTemplateConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationSinkCmsArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationConditionConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationPolicyConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationSinkEventStoreArgs;
/// import com.pulumi.alicloud.sls.inputs.AlertConfigurationSinkAlerthubArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultINsMgl = new Project("defaultINsMgl", ProjectArgs.builder()
///             .description(String.format("%s-%s", projectName,default_.result()))
///             .projectName(String.format("%s-%s", projectName,default_.result()))
///             .build());
///
///         var defaultAlert = new Alert("defaultAlert", AlertArgs.builder()
///             .schedule(AlertScheduleArgs.builder()
///                 .type("FixedRate")
///                 .runImmdiately(true)
///                 .interval("1m")
///                 .timeZone("+0800")
///                 .delay(10)
///                 .build())
///             .displayName("openapi-terraform")
///             .description("create alert")
///             .status("ENABLED")
///             .configuration(AlertConfigurationArgs.builder()
///                 .groupConfiguration(AlertConfigurationGroupConfigurationArgs.builder()
///                     .fields(
///                         "a",
///                         "b")
///                     .type("no_group")
///                     .build())
///                 .noDataFire(false)
///                 .version("2")
///                 .severityConfigurations(AlertConfigurationSeverityConfigurationArgs.builder()
///                     .severity(6)
///                     .evalCondition(AlertConfigurationSeverityConfigurationEvalConditionArgs.builder()
///                         .countCondition("cnt > 0")
///                         .condition("__count__ > 1")
///                         .build())
///                     .build())
///                 .labels(AlertConfigurationLabelArgs.builder()
///                     .key("a")
///                     .value("b")
///                     .build())
///                 .autoAnnotation(true)
///                 .templateConfiguration(AlertConfigurationTemplateConfigurationArgs.builder()
///                     .lang("cn")
///                     .tokens(Map.of("a", "b"))
///                     .annotations(Map.of("x", "y"))
///                     .templateId("sls.app.ack.autoscaler.cluster_unhealthy")
///                     .type("sys")
///                     .version("1.0")
///                     .build())
///                 .muteUntil(0)
///                 .annotations(AlertConfigurationAnnotationArgs.builder()
///                     .key("x")
///                     .value("y")
///                     .build())
///                 .sendResolved(false)
///                 .threshold(1)
///                 .sinkCms(AlertConfigurationSinkCmsArgs.builder()
///                     .enabled(false)
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
///                 .type("tpl")
///                 .queryLists(
///                     AlertConfigurationQueryListArgs.builder()
///                         .ui("{}")
///                         .roleArn("acs:ram::1654218965343050:role/aliyunslsalertmonitorrole")
///                         .query("* | select *")
///                         .timeSpanType("Relative")
///                         .project(defaultINsMgl.projectName())
///                         .powerSqlMode("disable")
///                         .dashboardId("wkb-dashboard")
///                         .chartTitle("wkb-chart")
///                         .start("-15m")
///                         .end("now")
///                         .storeType("log")
///                         .store("alert")
///                         .region("cn-shanghai")
///                         .build(),
///                     AlertConfigurationQueryListArgs.builder()
///                         .storeType("meta")
///                         .store("user.rds_ip_whitelist")
///                         .build(),
///                     AlertConfigurationQueryListArgs.builder()
///                         .storeType("meta")
///                         .store("myexample1")
///                         .build())
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
///                 .sinkEventStore(AlertConfigurationSinkEventStoreArgs.builder()
///                     .enabled(true)
///                     .endpoint("cn-shanghai-intranet.log.aliyuncs.com")
///                     .project("wkb-wangren")
///                     .eventStore("alert")
///                     .roleArn("acs:ram::1654218965343050:role/aliyunlogetlrole")
///                     .build())
///                 .sinkAlerthub(AlertConfigurationSinkAlerthubArgs.builder()
///                     .enabled(false)
///                     .build())
///                 .noDataSeverity(6)
///                 .tags(
///                     "wkb",
///                     "wangren",
///                     "sls")
///                 .build())
///             .alertName(alertName)
///             .projectName(defaultINsMgl.projectName())
///             .build());
///
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
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultINsMgl:
///     type: alicloud:log:Project
///     properties:
///       description: ${projectName}-${default.result}
///       projectName: ${projectName}-${default.result}
///   defaultAlert:
///     type: alicloud:sls:Alert
///     name: default
///     properties:
///       schedule:
///         type: FixedRate
///         runImmdiately: 'true'
///         interval: 1m
///         timeZone: '+0800'
///         delay: '10'
///       displayName: openapi-terraform
///       description: create alert
///       status: ENABLED
///       configuration:
///         groupConfiguration:
///           fields:
///             - a
///             - b
///           type: no_group
///         noDataFire: 'false'
///         version: '2'
///         severityConfigurations:
///           - severity: '6'
///             evalCondition:
///               countCondition: cnt > 0
///               condition: __count__ > 1
///         labels:
///           - key: a
///             value: b
///         autoAnnotation: 'true'
///         templateConfiguration:
///           lang: cn
///           tokens:
///             a: b
///           annotations:
///             x: y
///           templateId: sls.app.ack.autoscaler.cluster_unhealthy
///           type: sys
///           version: '1.0'
///         muteUntil: '0'
///         annotations:
///           - key: x
///             value: y
///         sendResolved: 'false'
///         threshold: '1'
///         sinkCms:
///           enabled: 'false'
///         conditionConfiguration:
///           condition: cnt > 3
///           countCondition: __count__ < 3
///         policyConfiguration:
///           alertPolicyId: sls.builtin.dynamic
///           actionPolicyId: wkb-action
///           repeatInterval: 1m
///         dashboard: internal-alert
///         type: tpl
///         queryLists:
///           - ui: '{}'
///             roleArn: acs:ram::1654218965343050:role/aliyunslsalertmonitorrole
///             query: '* | select *'
///             timeSpanType: Relative
///             project: ${defaultINsMgl.projectName}
///             powerSqlMode: disable
///             dashboardId: wkb-dashboard
///             chartTitle: wkb-chart
///             start: -15m
///             end: now
///             storeType: log
///             store: alert
///             region: cn-shanghai
///           - storeType: meta
///             store: user.rds_ip_whitelist
///           - storeType: meta
///             store: myexample1
///         joinConfigurations:
///           - type: no_join
///             condition: aa
///           - type: cross_join
///             condition: qqq
///           - type: inner_join
///             condition: fefefe
///         sinkEventStore:
///           enabled: 'true'
///           endpoint: cn-shanghai-intranet.log.aliyuncs.com
///           project: wkb-wangren
///           eventStore: alert
///           roleArn: acs:ram::1654218965343050:role/aliyunlogetlrole
///         sinkAlerthub:
///           enabled: 'false'
///         noDataSeverity: '6'
///         tags:
///           - wkb
///           - wangren
///           - sls
///       alertName: ${alertName}
///       projectName: ${defaultINsMgl.projectName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SLS Alert can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/alert:Alert example <project_name>:<alert_name>
/// ```
class Alert extends pulumi.CustomResource {
  /// Alert rule ID, unique under Project.
  late final pulumi.Output<String> alertName;
  /// Detailed configuration of alarm monitoring rules. See `configuration` below.
  late final pulumi.Output<AlertConfiguration> configuration;
  /// Alarm rule creation time.
  late final pulumi.Output<int> createTime;
  /// Compatible fields, set to empty strings.
  late final pulumi.Output<String?> description;
  /// Display name of the alarm rule.
  late final pulumi.Output<String> displayName;
  /// Project Name.
  late final pulumi.Output<String> projectName;
  /// Check the frequency-dependent configuration. See `schedule` below.
  late final pulumi.Output<AlertSchedule> schedule;
  /// Resource attribute field representing alarm status.
  late final pulumi.Output<String> status;

  /// Creates a new [Alert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alert]. {@macro pulumi_sls_alert_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alert(
    String name, {
    AlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sls/alert:Alert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertName = registerOutput<String>('alertName');
    this.configuration = registerOutput<AlertConfiguration>('configuration');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.projectName = registerOutput<String>('projectName');
    this.schedule = registerOutput<AlertSchedule>('schedule');
    this.status = registerOutput<String>('status');
  }
}
