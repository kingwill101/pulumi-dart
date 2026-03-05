import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_args.dart';
import 'alert_group_configuration.dart';
import 'alert_policy_configuration.dart';
import 'alert_schedule.dart';
import 'alert_state.dart';
import 'alert_template_configuration.dart';

/// Log alert is a unit of log service, which is used to monitor and alert the user's logstore status information.
/// Log Service enables you to configure alerts based on the charts in a dashboard to monitor the service status in real time.
///
/// For information about SLS Alert and how to use it, see [SLS Alert Overview](https://www.alibabacloud.com/help/en/doc-detail/209202.html)
///
/// &gt; **NOTE:** Available in 1.78.0
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
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     name: `terraform-example-${_default.result}`,
///     description: "terraform-example",
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     project: example.name,
///     name: "example-store",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleAlert = new alicloud.log.Alert("example", {
///     projectName: example.name,
///     alertName: "example-alert",
///     alertDisplayname: "example-alert",
///     condition: "count> 100",
///     dashboard: "example-dashboard",
///     schedule: {
///         type: "FixedRate",
///         interval: "5m",
///         hour: 0,
///         dayOfWeek: 0,
///         delay: 0,
///         runImmediately: false,
///     },
///     queryLists: [{
///         logstore: exampleStore.name,
///         chartTitle: "chart_title",
///         start: "-60s",
///         end: "20s",
///         query: "* AND aliyun",
///     }],
///     notificationLists: [
///         {
///             type: "SMS",
///             mobileLists: [
///                 "12345678",
///                 "87654321",
///             ],
///             content: "alert content",
///         },
///         {
///             type: "Email",
///             emailLists: [
///                 "aliyun@alibaba-inc.com",
///                 "tf-example@123.com",
///             ],
///             content: "alert content",
///         },
///         {
///             type: "DingTalk",
///             serviceUri: "www.aliyun.com",
///             content: "alert content",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     name=f"terraform-example-{default['result']}",
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project=example.name,
///     name="example-store",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_alert = alicloud.log.Alert("example",
///     project_name=example.name,
///     alert_name="example-alert",
///     alert_displayname="example-alert",
///     condition="count> 100",
///     dashboard="example-dashboard",
///     schedule={
///         "type": "FixedRate",
///         "interval": "5m",
///         "hour": 0,
///         "day_of_week": 0,
///         "delay": 0,
///         "run_immediately": False,
///     },
///     query_lists=[{
///         "logstore": example_store.name,
///         "chart_title": "chart_title",
///         "start": "-60s",
///         "end": "20s",
///         "query": "* AND aliyun",
///     }],
///     notification_lists=[
///         {
///             "type": "SMS",
///             "mobile_lists": [
///                 "12345678",
///                 "87654321",
///             ],
///             "content": "alert content",
///         },
///         {
///             "type": "Email",
///             "email_lists": [
///                 "aliyun@alibaba-inc.com",
///                 "tf-example@123.com",
///             ],
///             "content": "alert content",
///         },
///         {
///             "type": "DingTalk",
///             "service_uri": "www.aliyun.com",
///             "content": "alert content",
///         },
///     ])
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         Name = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         Project = example.Name,
///         Name = "example-store",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleAlert = new AliCloud.Log.Alert("example", new()
///     {
///         ProjectName = example.Name,
///         AlertName = "example-alert",
///         AlertDisplayname = "example-alert",
///         Condition = "count> 100",
///         Dashboard = "example-dashboard",
///         Schedule = new AliCloud.Log.Inputs.AlertScheduleArgs
///         {
///             Type = "FixedRate",
///             Interval = "5m",
///             Hour = 0,
///             DayOfWeek = 0,
///             Delay = 0,
///             RunImmediately = false,
///         },
///         QueryLists = new[]
///         {
///             new AliCloud.Log.Inputs.AlertQueryListArgs
///             {
///                 Logstore = exampleStore.Name,
///                 ChartTitle = "chart_title",
///                 Start = "-60s",
///                 End = "20s",
///                 Query = "* AND aliyun",
///             },
///         },
///         NotificationLists = new[]
///         {
///             new AliCloud.Log.Inputs.AlertNotificationListArgs
///             {
///                 Type = "SMS",
///                 MobileLists = new[]
///                 {
///                     "12345678",
///                     "87654321",
///                 },
///                 Content = "alert content",
///             },
///             new AliCloud.Log.Inputs.AlertNotificationListArgs
///             {
///                 Type = "Email",
///                 EmailLists = new[]
///                 {
///                     "aliyun@alibaba-inc.com",
///                     "tf-example@123.com",
///                 },
///                 Content = "alert content",
///             },
///             new AliCloud.Log.Inputs.AlertNotificationListArgs
///             {
///                 Type = "DingTalk",
///                 ServiceUri = "www.aliyun.com",
///                 Content = "alert content",
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			Name:        pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			Project:            example.Name,
/// 			Name:               pulumi.String("example-store"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewAlert(ctx, "example", &log.AlertArgs{
/// 			ProjectName:      example.Name,
/// 			AlertName:        pulumi.String("example-alert"),
/// 			AlertDisplayname: pulumi.String("example-alert"),
/// 			Condition:        pulumi.String("count> 100"),
/// 			Dashboard:        pulumi.String("example-dashboard"),
/// 			Schedule: &log.AlertScheduleArgs{
/// 				Type:           pulumi.String("FixedRate"),
/// 				Interval:       pulumi.String("5m"),
/// 				Hour:           pulumi.Int(0),
/// 				DayOfWeek:      pulumi.Int(0),
/// 				Delay:          pulumi.Int(0),
/// 				RunImmediately: pulumi.Bool(false),
/// 			},
/// 			QueryLists: log.AlertQueryListArray{
/// 				&log.AlertQueryListArgs{
/// 					Logstore:   exampleStore.Name,
/// 					ChartTitle: pulumi.String("chart_title"),
/// 					Start:      pulumi.String("-60s"),
/// 					End:        pulumi.String("20s"),
/// 					Query:      pulumi.String("* AND aliyun"),
/// 				},
/// 			},
/// 			NotificationLists: log.AlertNotificationListArray{
/// 				&log.AlertNotificationListArgs{
/// 					Type: pulumi.String("SMS"),
/// 					MobileLists: pulumi.StringArray{
/// 						pulumi.String("12345678"),
/// 						pulumi.String("87654321"),
/// 					},
/// 					Content: pulumi.String("alert content"),
/// 				},
/// 				&log.AlertNotificationListArgs{
/// 					Type: pulumi.String("Email"),
/// 					EmailLists: pulumi.StringArray{
/// 						pulumi.String("aliyun@alibaba-inc.com"),
/// 						pulumi.String("tf-example@123.com"),
/// 					},
/// 					Content: pulumi.String("alert content"),
/// 				},
/// 				&log.AlertNotificationListArgs{
/// 					Type:       pulumi.String("DingTalk"),
/// 					ServiceUri: pulumi.String("www.aliyun.com"),
/// 					Content:    pulumi.String("alert content"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.log.Alert;
/// import com.pulumi.alicloud.log.AlertArgs;
/// import com.pulumi.alicloud.log.inputs.AlertScheduleArgs;
/// import com.pulumi.alicloud.log.inputs.AlertQueryListArgs;
/// import com.pulumi.alicloud.log.inputs.AlertNotificationListArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .name(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .project(example.name())
///             .name("example-store")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleAlert = new Alert("exampleAlert", AlertArgs.builder()
///             .projectName(example.name())
///             .alertName("example-alert")
///             .alertDisplayname("example-alert")
///             .condition("count> 100")
///             .dashboard("example-dashboard")
///             .schedule(AlertScheduleArgs.builder()
///                 .type("FixedRate")
///                 .interval("5m")
///                 .hour(0)
///                 .dayOfWeek(0)
///                 .delay(0)
///                 .runImmediately(false)
///                 .build())
///             .queryLists(AlertQueryListArgs.builder()
///                 .logstore(exampleStore.name())
///                 .chartTitle("chart_title")
///                 .start("-60s")
///                 .end("20s")
///                 .query("* AND aliyun")
///                 .build())
///             .notificationLists(
///                 AlertNotificationListArgs.builder()
///                     .type("SMS")
///                     .mobileLists(
///                         "12345678",
///                         "87654321")
///                     .content("alert content")
///                     .build(),
///                 AlertNotificationListArgs.builder()
///                     .type("Email")
///                     .emailLists(
///                         "aliyun@alibaba-inc.com",
///                         "tf-example@123.com")
///                     .content("alert content")
///                     .build(),
///                 AlertNotificationListArgs.builder()
///                     .type("DingTalk")
///                     .serviceUri("www.aliyun.com")
///                     .content("alert content")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       name: terraform-example-${default.result}
///       description: terraform-example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       project: ${example.name}
///       name: example-store
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleAlert:
///     type: alicloud:log:Alert
///     name: example
///     properties:
///       projectName: ${example.name}
///       alertName: example-alert
///       alertDisplayname: example-alert
///       condition: count> 100
///       dashboard: example-dashboard
///       schedule:
///         type: FixedRate
///         interval: 5m
///         hour: 0
///         dayOfWeek: 0
///         delay: 0
///         runImmediately: false
///       queryLists:
///         - logstore: ${exampleStore.name}
///           chartTitle: chart_title
///           start: -60s
///           end: 20s
///           query: '* AND aliyun'
///       notificationLists:
///         - type: SMS
///           mobileLists:
///             - '12345678'
///             - '87654321'
///           content: alert content
///         - type: Email
///           emailLists:
///             - aliyun@alibaba-inc.com
///             - tf-example@123.com
///           content: alert content
///         - type: DingTalk
///           serviceUri: www.aliyun.com
///           content: alert content
/// ```
///
///
/// Basic Usage for new alert
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: example.projectName,
///     logstoreName: "example-store",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const example_2 = new alicloud.log.Alert("example-2", {
///     version: "2.0",
///     type: "default",
///     projectName: example.projectName,
///     alertName: "example-alert",
///     alertDisplayname: "example-alert",
///     muteUntil: 1632486684,
///     noDataFire: false,
///     noDataSeverity: 8,
///     sendResolved: true,
///     autoAnnotation: true,
///     schedule: {
///         type: "FixedRate",
///         interval: "5m",
///         hour: 0,
///         dayOfWeek: 0,
///         delay: 0,
///         runImmediately: false,
///     },
///     queryLists: [
///         {
///             store: exampleStore.logstoreName,
///             storeType: "log",
///             project: example.projectName,
///             region: "cn-heyuan",
///             chartTitle: "chart_title",
///             start: "-60s",
///             end: "20s",
///             query: "* AND aliyun | select count(1) as cnt",
///             powerSqlMode: "auto",
///             dashboardId: "example-dashboard",
///         },
///         {
///             store: exampleStore.logstoreName,
///             storeType: "log",
///             project: example.projectName,
///             region: "cn-heyuan",
///             chartTitle: "chart_title",
///             start: "-60s",
///             end: "20s",
///             query: "error | select count(1) as error_cnt",
///             powerSqlMode: "enable",
///             dashboardId: "example-dashboard",
///         },
///     ],
///     labels: [{
///         key: "env",
///         value: "test",
///     }],
///     annotations: [
///         {
///             key: "title",
///             value: "alert title",
///         },
///         {
///             key: "desc",
///             value: "alert desc",
///         },
///         {
///             key: "test_key",
///             value: "test value",
///         },
///     ],
///     groupConfiguration: {
///         type: "custom",
///         fields: ["cnt"],
///     },
///     policyConfiguration: {
///         alertPolicyId: "sls.bultin",
///         actionPolicyId: "sls_test_action",
///         repeatInterval: "4h",
///     },
///     severityConfigurations: [
///         {
///             severity: 8,
///             evalCondition: {
///                 condition: "cnt > 3",
///                 count_condition: "__count__ > 3",
///             },
///         },
///         {
///             severity: 6,
///             evalCondition: {
///                 condition: "",
///                 count_condition: "__count__ > 0",
///             },
///         },
///         {
///             severity: 2,
///             evalCondition: {
///                 condition: "",
///                 count_condition: "",
///             },
///         },
///     ],
///     joinConfigurations: [{
///         type: "cross_join",
///         condition: "",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project_name=example.project_name,
///     logstore_name="example-store",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_2 = alicloud.log.Alert("example-2",
///     version="2.0",
///     type="default",
///     project_name=example.project_name,
///     alert_name="example-alert",
///     alert_displayname="example-alert",
///     mute_until=1632486684,
///     no_data_fire=False,
///     no_data_severity=8,
///     send_resolved=True,
///     auto_annotation=True,
///     schedule={
///         "type": "FixedRate",
///         "interval": "5m",
///         "hour": 0,
///         "day_of_week": 0,
///         "delay": 0,
///         "run_immediately": False,
///     },
///     query_lists=[
///         {
///             "store": example_store.logstore_name,
///             "store_type": "log",
///             "project": example.project_name,
///             "region": "cn-heyuan",
///             "chart_title": "chart_title",
///             "start": "-60s",
///             "end": "20s",
///             "query": "* AND aliyun | select count(1) as cnt",
///             "power_sql_mode": "auto",
///             "dashboard_id": "example-dashboard",
///         },
///         {
///             "store": example_store.logstore_name,
///             "store_type": "log",
///             "project": example.project_name,
///             "region": "cn-heyuan",
///             "chart_title": "chart_title",
///             "start": "-60s",
///             "end": "20s",
///             "query": "error | select count(1) as error_cnt",
///             "power_sql_mode": "enable",
///             "dashboard_id": "example-dashboard",
///         },
///     ],
///     labels=[{
///         "key": "env",
///         "value": "test",
///     }],
///     annotations=[
///         {
///             "key": "title",
///             "value": "alert title",
///         },
///         {
///             "key": "desc",
///             "value": "alert desc",
///         },
///         {
///             "key": "test_key",
///             "value": "test value",
///         },
///     ],
///     group_configuration={
///         "type": "custom",
///         "fields": ["cnt"],
///     },
///     policy_configuration={
///         "alert_policy_id": "sls.bultin",
///         "action_policy_id": "sls_test_action",
///         "repeat_interval": "4h",
///     },
///     severity_configurations=[
///         {
///             "severity": 8,
///             "eval_condition": {
///                 "condition": "cnt > 3",
///                 "count_condition": "__count__ > 3",
///             },
///         },
///         {
///             "severity": 6,
///             "eval_condition": {
///                 "condition": "",
///                 "count_condition": "__count__ > 0",
///             },
///         },
///         {
///             "severity": 2,
///             "eval_condition": {
///                 "condition": "",
///                 "count_condition": "",
///             },
///         },
///     ],
///     join_configurations=[{
///         "type": "cross_join",
///         "condition": "",
///     }])
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var example_2 = new AliCloud.Log.Alert("example-2", new()
///     {
///         Version = "2.0",
///         Type = "default",
///         ProjectName = example.ProjectName,
///         AlertName = "example-alert",
///         AlertDisplayname = "example-alert",
///         MuteUntil = 1632486684,
///         NoDataFire = false,
///         NoDataSeverity = 8,
///         SendResolved = true,
///         AutoAnnotation = true,
///         Schedule = new AliCloud.Log.Inputs.AlertScheduleArgs
///         {
///             Type = "FixedRate",
///             Interval = "5m",
///             Hour = 0,
///             DayOfWeek = 0,
///             Delay = 0,
///             RunImmediately = false,
///         },
///         QueryLists = new[]
///         {
///             new AliCloud.Log.Inputs.AlertQueryListArgs
///             {
///                 Store = exampleStore.LogstoreName,
///                 StoreType = "log",
///                 Project = example.ProjectName,
///                 Region = "cn-heyuan",
///                 ChartTitle = "chart_title",
///                 Start = "-60s",
///                 End = "20s",
///                 Query = "* AND aliyun | select count(1) as cnt",
///                 PowerSqlMode = "auto",
///                 DashboardId = "example-dashboard",
///             },
///             new AliCloud.Log.Inputs.AlertQueryListArgs
///             {
///                 Store = exampleStore.LogstoreName,
///                 StoreType = "log",
///                 Project = example.ProjectName,
///                 Region = "cn-heyuan",
///                 ChartTitle = "chart_title",
///                 Start = "-60s",
///                 End = "20s",
///                 Query = "error | select count(1) as error_cnt",
///                 PowerSqlMode = "enable",
///                 DashboardId = "example-dashboard",
///             },
///         },
///         Labels = new[]
///         {
///             new AliCloud.Log.Inputs.AlertLabelArgs
///             {
///                 Key = "env",
///                 Value = "test",
///             },
///         },
///         Annotations = new[]
///         {
///             new AliCloud.Log.Inputs.AlertAnnotationArgs
///             {
///                 Key = "title",
///                 Value = "alert title",
///             },
///             new AliCloud.Log.Inputs.AlertAnnotationArgs
///             {
///                 Key = "desc",
///                 Value = "alert desc",
///             },
///             new AliCloud.Log.Inputs.AlertAnnotationArgs
///             {
///                 Key = "test_key",
///                 Value = "test value",
///             },
///         },
///         GroupConfiguration = new AliCloud.Log.Inputs.AlertGroupConfigurationArgs
///         {
///             Type = "custom",
///             Fields = new[]
///             {
///                 "cnt",
///             },
///         },
///         PolicyConfiguration = new AliCloud.Log.Inputs.AlertPolicyConfigurationArgs
///         {
///             AlertPolicyId = "sls.bultin",
///             ActionPolicyId = "sls_test_action",
///             RepeatInterval = "4h",
///         },
///         SeverityConfigurations = new[]
///         {
///             new AliCloud.Log.Inputs.AlertSeverityConfigurationArgs
///             {
///                 Severity = 8,
///                 EvalCondition =
///                 {
///                     { "condition", "cnt > 3" },
///                     { "count_condition", "__count__ > 3" },
///                 },
///             },
///             new AliCloud.Log.Inputs.AlertSeverityConfigurationArgs
///             {
///                 Severity = 6,
///                 EvalCondition =
///                 {
///                     { "condition", "" },
///                     { "count_condition", "__count__ > 0" },
///                 },
///             },
///             new AliCloud.Log.Inputs.AlertSeverityConfigurationArgs
///             {
///                 Severity = 2,
///                 EvalCondition =
///                 {
///                     { "condition", "" },
///                     { "count_condition", "" },
///                 },
///             },
///         },
///         JoinConfigurations = new[]
///         {
///             new AliCloud.Log.Inputs.AlertJoinConfigurationArgs
///             {
///                 Type = "cross_join",
///                 Condition = "",
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewAlert(ctx, "example-2", &log.AlertArgs{
/// 			Version:          pulumi.String("2.0"),
/// 			Type:             pulumi.String("default"),
/// 			ProjectName:      example.ProjectName,
/// 			AlertName:        pulumi.String("example-alert"),
/// 			AlertDisplayname: pulumi.String("example-alert"),
/// 			MuteUntil:        pulumi.Int(1632486684),
/// 			NoDataFire:       pulumi.Bool(false),
/// 			NoDataSeverity:   pulumi.Int(8),
/// 			SendResolved:     pulumi.Bool(true),
/// 			AutoAnnotation:   pulumi.Bool(true),
/// 			Schedule: &log.AlertScheduleArgs{
/// 				Type:           pulumi.String("FixedRate"),
/// 				Interval:       pulumi.String("5m"),
/// 				Hour:           pulumi.Int(0),
/// 				DayOfWeek:      pulumi.Int(0),
/// 				Delay:          pulumi.Int(0),
/// 				RunImmediately: pulumi.Bool(false),
/// 			},
/// 			QueryLists: log.AlertQueryListArray{
/// 				&log.AlertQueryListArgs{
/// 					Store:        exampleStore.LogstoreName,
/// 					StoreType:    pulumi.String("log"),
/// 					Project:      example.ProjectName,
/// 					Region:       pulumi.String("cn-heyuan"),
/// 					ChartTitle:   pulumi.String("chart_title"),
/// 					Start:        pulumi.String("-60s"),
/// 					End:          pulumi.String("20s"),
/// 					Query:        pulumi.String("* AND aliyun | select count(1) as cnt"),
/// 					PowerSqlMode: pulumi.String("auto"),
/// 					DashboardId:  pulumi.String("example-dashboard"),
/// 				},
/// 				&log.AlertQueryListArgs{
/// 					Store:        exampleStore.LogstoreName,
/// 					StoreType:    pulumi.String("log"),
/// 					Project:      example.ProjectName,
/// 					Region:       pulumi.String("cn-heyuan"),
/// 					ChartTitle:   pulumi.String("chart_title"),
/// 					Start:        pulumi.String("-60s"),
/// 					End:          pulumi.String("20s"),
/// 					Query:        pulumi.String("error | select count(1) as error_cnt"),
/// 					PowerSqlMode: pulumi.String("enable"),
/// 					DashboardId:  pulumi.String("example-dashboard"),
/// 				},
/// 			},
/// 			Labels: log.AlertLabelArray{
/// 				&log.AlertLabelArgs{
/// 					Key:   pulumi.String("env"),
/// 					Value: pulumi.String("test"),
/// 				},
/// 			},
/// 			Annotations: log.AlertAnnotationArray{
/// 				&log.AlertAnnotationArgs{
/// 					Key:   pulumi.String("title"),
/// 					Value: pulumi.String("alert title"),
/// 				},
/// 				&log.AlertAnnotationArgs{
/// 					Key:   pulumi.String("desc"),
/// 					Value: pulumi.String("alert desc"),
/// 				},
/// 				&log.AlertAnnotationArgs{
/// 					Key:   pulumi.String("test_key"),
/// 					Value: pulumi.String("test value"),
/// 				},
/// 			},
/// 			GroupConfiguration: &log.AlertGroupConfigurationArgs{
/// 				Type: pulumi.String("custom"),
/// 				Fields: pulumi.StringArray{
/// 					pulumi.String("cnt"),
/// 				},
/// 			},
/// 			PolicyConfiguration: &log.AlertPolicyConfigurationArgs{
/// 				AlertPolicyId:  pulumi.String("sls.bultin"),
/// 				ActionPolicyId: pulumi.String("sls_test_action"),
/// 				RepeatInterval: pulumi.String("4h"),
/// 			},
/// 			SeverityConfigurations: log.AlertSeverityConfigurationArray{
/// 				&log.AlertSeverityConfigurationArgs{
/// 					Severity: pulumi.Int(8),
/// 					EvalCondition: pulumi.StringMap{
/// 						"condition":       pulumi.String("cnt > 3"),
/// 						"count_condition": pulumi.String("__count__ > 3"),
/// 					},
/// 				},
/// 				&log.AlertSeverityConfigurationArgs{
/// 					Severity: pulumi.Int(6),
/// 					EvalCondition: pulumi.StringMap{
/// 						"condition":       pulumi.String(""),
/// 						"count_condition": pulumi.String("__count__ > 0"),
/// 					},
/// 				},
/// 				&log.AlertSeverityConfigurationArgs{
/// 					Severity: pulumi.Int(2),
/// 					EvalCondition: pulumi.StringMap{
/// 						"condition":       pulumi.String(""),
/// 						"count_condition": pulumi.String(""),
/// 					},
/// 				},
/// 			},
/// 			JoinConfigurations: log.AlertJoinConfigurationArray{
/// 				&log.AlertJoinConfigurationArgs{
/// 					Type:      pulumi.String("cross_join"),
/// 					Condition: pulumi.String(""),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.log.Alert;
/// import com.pulumi.alicloud.log.AlertArgs;
/// import com.pulumi.alicloud.log.inputs.AlertScheduleArgs;
/// import com.pulumi.alicloud.log.inputs.AlertQueryListArgs;
/// import com.pulumi.alicloud.log.inputs.AlertLabelArgs;
/// import com.pulumi.alicloud.log.inputs.AlertAnnotationArgs;
/// import com.pulumi.alicloud.log.inputs.AlertGroupConfigurationArgs;
/// import com.pulumi.alicloud.log.inputs.AlertPolicyConfigurationArgs;
/// import com.pulumi.alicloud.log.inputs.AlertSeverityConfigurationArgs;
/// import com.pulumi.alicloud.log.inputs.AlertJoinConfigurationArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var example_2 = new Alert("example-2", AlertArgs.builder()
///             .version("2.0")
///             .type("default")
///             .projectName(example.projectName())
///             .alertName("example-alert")
///             .alertDisplayname("example-alert")
///             .muteUntil(1632486684)
///             .noDataFire(false)
///             .noDataSeverity(8)
///             .sendResolved(true)
///             .autoAnnotation(true)
///             .schedule(AlertScheduleArgs.builder()
///                 .type("FixedRate")
///                 .interval("5m")
///                 .hour(0)
///                 .dayOfWeek(0)
///                 .delay(0)
///                 .runImmediately(false)
///                 .build())
///             .queryLists(
///                 AlertQueryListArgs.builder()
///                     .store(exampleStore.logstoreName())
///                     .storeType("log")
///                     .project(example.projectName())
///                     .region("cn-heyuan")
///                     .chartTitle("chart_title")
///                     .start("-60s")
///                     .end("20s")
///                     .query("* AND aliyun | select count(1) as cnt")
///                     .powerSqlMode("auto")
///                     .dashboardId("example-dashboard")
///                     .build(),
///                 AlertQueryListArgs.builder()
///                     .store(exampleStore.logstoreName())
///                     .storeType("log")
///                     .project(example.projectName())
///                     .region("cn-heyuan")
///                     .chartTitle("chart_title")
///                     .start("-60s")
///                     .end("20s")
///                     .query("error | select count(1) as error_cnt")
///                     .powerSqlMode("enable")
///                     .dashboardId("example-dashboard")
///                     .build())
///             .labels(AlertLabelArgs.builder()
///                 .key("env")
///                 .value("test")
///                 .build())
///             .annotations(
///                 AlertAnnotationArgs.builder()
///                     .key("title")
///                     .value("alert title")
///                     .build(),
///                 AlertAnnotationArgs.builder()
///                     .key("desc")
///                     .value("alert desc")
///                     .build(),
///                 AlertAnnotationArgs.builder()
///                     .key("test_key")
///                     .value("test value")
///                     .build())
///             .groupConfiguration(AlertGroupConfigurationArgs.builder()
///                 .type("custom")
///                 .fields("cnt")
///                 .build())
///             .policyConfiguration(AlertPolicyConfigurationArgs.builder()
///                 .alertPolicyId("sls.bultin")
///                 .actionPolicyId("sls_test_action")
///                 .repeatInterval("4h")
///                 .build())
///             .severityConfigurations(
///                 AlertSeverityConfigurationArgs.builder()
///                     .severity(8)
///                     .evalCondition(Map.ofEntries(
///                         Map.entry("condition", "cnt > 3"),
///                         Map.entry("count_condition", "__count__ > 3")
///                     ))
///                     .build(),
///                 AlertSeverityConfigurationArgs.builder()
///                     .severity(6)
///                     .evalCondition(Map.ofEntries(
///                         Map.entry("condition", ""),
///                         Map.entry("count_condition", "__count__ > 0")
///                     ))
///                     .build(),
///                 AlertSeverityConfigurationArgs.builder()
///                     .severity(2)
///                     .evalCondition(Map.ofEntries(
///                         Map.entry("condition", ""),
///                         Map.entry("count_condition", "")
///                     ))
///                     .build())
///             .joinConfigurations(AlertJoinConfigurationArgs.builder()
///                 .type("cross_join")
///                 .condition("")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   example-2:
///     type: alicloud:log:Alert
///     properties:
///       version: '2.0'
///       type: default
///       projectName: ${example.projectName}
///       alertName: example-alert
///       alertDisplayname: example-alert
///       muteUntil: '1632486684'
///       noDataFire: 'false'
///       noDataSeverity: 8
///       sendResolved: true
///       autoAnnotation: true
///       schedule:
///         type: FixedRate
///         interval: 5m
///         hour: 0
///         dayOfWeek: 0
///         delay: 0
///         runImmediately: false
///       queryLists:
///         - store: ${exampleStore.logstoreName}
///           storeType: log
///           project: ${example.projectName}
///           region: cn-heyuan
///           chartTitle: chart_title
///           start: -60s
///           end: 20s
///           query: '* AND aliyun | select count(1) as cnt'
///           powerSqlMode: auto
///           dashboardId: example-dashboard
///         - store: ${exampleStore.logstoreName}
///           storeType: log
///           project: ${example.projectName}
///           region: cn-heyuan
///           chartTitle: chart_title
///           start: -60s
///           end: 20s
///           query: error | select count(1) as error_cnt
///           powerSqlMode: enable
///           dashboardId: example-dashboard
///       labels:
///         - key: env
///           value: test
///       annotations:
///         - key: title
///           value: alert title
///         - key: desc
///           value: alert desc
///         - key: test_key
///           value: test value
///       groupConfiguration:
///         type: custom
///         fields:
///           - cnt
///       policyConfiguration:
///         alertPolicyId: sls.bultin
///         actionPolicyId: sls_test_action
///         repeatInterval: 4h
///       severityConfigurations:
///         - severity: 8
///           evalCondition:
///             condition: cnt > 3
///             count_condition: __count__ > 3
///         - severity: 6
///           evalCondition:
///             condition: ""
///             count_condition: __count__ > 0
///         - severity: 2
///           evalCondition:
///             condition: ""
///             count_condition: ""
///       joinConfigurations:
///         - type: cross_join
///           condition: ""
/// ```
///
///
/// Basic Usage for alert template
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: example.projectName,
///     logstoreName: "example-store",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const example_3 = new alicloud.log.Alert("example-3", {
///     version: "2.0",
///     type: "tpl",
///     projectName: example.projectName,
///     alertName: "example-alert",
///     alertDisplayname: "example-alert",
///     muteUntil: 1632486684,
///     schedule: {
///         type: "FixedRate",
///         interval: "5m",
///         hour: 0,
///         dayOfWeek: 0,
///         delay: 0,
///         runImmediately: false,
///     },
///     templateConfiguration: {
///         id: "sls.app.sls_ack.node.down",
///         type: "sys",
///         lang: "cn",
///         annotations: {},
///         tokens: {
///             interval_minute: "5",
///             "default.action_policy": "sls.app.ack.builtin",
///             "default.severity": "6",
///             sendResolved: "false",
///             "default.project": example.projectName,
///             "default.logstore": "k8s-event",
///             "default.repeatInterval": "4h",
///             trigger_threshold: "1",
///             "default.clusterId": "example-cluster-id",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project_name=example.project_name,
///     logstore_name="example-store",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_3 = alicloud.log.Alert("example-3",
///     version="2.0",
///     type="tpl",
///     project_name=example.project_name,
///     alert_name="example-alert",
///     alert_displayname="example-alert",
///     mute_until=1632486684,
///     schedule={
///         "type": "FixedRate",
///         "interval": "5m",
///         "hour": 0,
///         "day_of_week": 0,
///         "delay": 0,
///         "run_immediately": False,
///     },
///     template_configuration={
///         "id": "sls.app.sls_ack.node.down",
///         "type": "sys",
///         "lang": "cn",
///         "annotations": {},
///         "tokens": {
///             "interval_minute": "5",
///             "default.action_policy": "sls.app.ack.builtin",
///             "default.severity": "6",
///             "sendResolved": "false",
///             "default.project": example.project_name,
///             "default.logstore": "k8s-event",
///             "default.repeatInterval": "4h",
///             "trigger_threshold": "1",
///             "default.clusterId": "example-cluster-id",
///         },
///     })
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var example_3 = new AliCloud.Log.Alert("example-3", new()
///     {
///         Version = "2.0",
///         Type = "tpl",
///         ProjectName = example.ProjectName,
///         AlertName = "example-alert",
///         AlertDisplayname = "example-alert",
///         MuteUntil = 1632486684,
///         Schedule = new AliCloud.Log.Inputs.AlertScheduleArgs
///         {
///             Type = "FixedRate",
///             Interval = "5m",
///             Hour = 0,
///             DayOfWeek = 0,
///             Delay = 0,
///             RunImmediately = false,
///         },
///         TemplateConfiguration = new AliCloud.Log.Inputs.AlertTemplateConfigurationArgs
///         {
///             Id = "sls.app.sls_ack.node.down",
///             Type = "sys",
///             Lang = "cn",
///             Annotations = null,
///             Tokens =
///             {
///                 { "interval_minute", "5" },
///                 { "default.action_policy", "sls.app.ack.builtin" },
///                 { "default.severity", "6" },
///                 { "sendResolved", "false" },
///                 { "default.project", example.ProjectName },
///                 { "default.logstore", "k8s-event" },
///                 { "default.repeatInterval", "4h" },
///                 { "trigger_threshold", "1" },
///                 { "default.clusterId", "example-cluster-id" },
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewAlert(ctx, "example-3", &log.AlertArgs{
/// 			Version:          pulumi.String("2.0"),
/// 			Type:             pulumi.String("tpl"),
/// 			ProjectName:      example.ProjectName,
/// 			AlertName:        pulumi.String("example-alert"),
/// 			AlertDisplayname: pulumi.String("example-alert"),
/// 			MuteUntil:        pulumi.Int(1632486684),
/// 			Schedule: &log.AlertScheduleArgs{
/// 				Type:           pulumi.String("FixedRate"),
/// 				Interval:       pulumi.String("5m"),
/// 				Hour:           pulumi.Int(0),
/// 				DayOfWeek:      pulumi.Int(0),
/// 				Delay:          pulumi.Int(0),
/// 				RunImmediately: pulumi.Bool(false),
/// 			},
/// 			TemplateConfiguration: &log.AlertTemplateConfigurationArgs{
/// 				Id:          pulumi.String("sls.app.sls_ack.node.down"),
/// 				Type:        pulumi.String("sys"),
/// 				Lang:        pulumi.String("cn"),
/// 				Annotations: pulumi.StringMap{},
/// 				Tokens: pulumi.StringMap{
/// 					"interval_minute":        pulumi.String("5"),
/// 					"default.action_policy":  pulumi.String("sls.app.ack.builtin"),
/// 					"default.severity":       pulumi.String("6"),
/// 					"sendResolved":           pulumi.String("false"),
/// 					"default.project":        example.ProjectName,
/// 					"default.logstore":       pulumi.String("k8s-event"),
/// 					"default.repeatInterval": pulumi.String("4h"),
/// 					"trigger_threshold":      pulumi.String("1"),
/// 					"default.clusterId":      pulumi.String("example-cluster-id"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.log.Alert;
/// import com.pulumi.alicloud.log.AlertArgs;
/// import com.pulumi.alicloud.log.inputs.AlertScheduleArgs;
/// import com.pulumi.alicloud.log.inputs.AlertTemplateConfigurationArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var example_3 = new Alert("example-3", AlertArgs.builder()
///             .version("2.0")
///             .type("tpl")
///             .projectName(example.projectName())
///             .alertName("example-alert")
///             .alertDisplayname("example-alert")
///             .muteUntil(1632486684)
///             .schedule(AlertScheduleArgs.builder()
///                 .type("FixedRate")
///                 .interval("5m")
///                 .hour(0)
///                 .dayOfWeek(0)
///                 .delay(0)
///                 .runImmediately(false)
///                 .build())
///             .templateConfiguration(AlertTemplateConfigurationArgs.builder()
///                 .id("sls.app.sls_ack.node.down")
///                 .type("sys")
///                 .lang("cn")
///                 .annotations(Map.ofEntries(
///                 ))
///                 .tokens(Map.ofEntries(
///                     Map.entry("interval_minute", "5"),
///                     Map.entry("default.action_policy", "sls.app.ack.builtin"),
///                     Map.entry("default.severity", "6"),
///                     Map.entry("sendResolved", "false"),
///                     Map.entry("default.project", example.projectName()),
///                     Map.entry("default.logstore", "k8s-event"),
///                     Map.entry("default.repeatInterval", "4h"),
///                     Map.entry("trigger_threshold", "1"),
///                     Map.entry("default.clusterId", "example-cluster-id")
///                 ))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   example-3:
///     type: alicloud:log:Alert
///     properties:
///       version: '2.0'
///       type: tpl
///       projectName: ${example.projectName}
///       alertName: example-alert
///       alertDisplayname: example-alert
///       muteUntil: '1632486684'
///       schedule:
///         type: FixedRate
///         interval: 5m
///         hour: 0
///         dayOfWeek: 0
///         delay: 0
///         runImmediately: false
///       templateConfiguration:
///         id: sls.app.sls_ack.node.down
///         type: sys
///         lang: cn
///         annotations: {}
///         tokens:
///           interval_minute: '5'
///           default.action_policy: sls.app.ack.builtin
///           default.severity: '6'
///           sendResolved: 'false'
///           default.project: ${example.projectName}
///           default.logstore: k8s-event
///           default.repeatInterval: 4h
///           trigger_threshold: '1'
///           default.clusterId: example-cluster-id
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log alert can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/alert:Alert example tf-log:tf-log-alert
/// ```
class Alert extends pulumi.CustomResource {
  /// Alert description.
  late final pulumi.Output<String?> alertDescription;

  /// Alert displayname.
  late final pulumi.Output<String> alertDisplayname;

  /// Name of logstore for configuring alarm service.
  late final pulumi.Output<String> alertName;

  /// Annotations for new alert.
  late final pulumi.Output<List<Map<String, dynamic>>?> annotations;

  /// whether to add automatic annotation, default is false.
  late final pulumi.Output<bool?> autoAnnotation;

  /// Conditional expression, such as: count&gt; 100, Deprecated from 1.161.0+.
  late final pulumi.Output<String?> condition;
  late final pulumi.Output<String?> dashboard;

  /// Group configuration for new alert.
  late final pulumi.Output<AlertGroupConfiguration?> groupConfiguration;

  /// Join configuration for different queries.
  late final pulumi.Output<List<Map<String, dynamic>>?> joinConfigurations;

  /// Labels for new alert.
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;

  /// Timestamp, notifications before closing again.
  late final pulumi.Output<int> muteUntil;

  /// Switch for whether new alert fires when no data happens, default is false.
  late final pulumi.Output<bool?> noDataFire;

  /// when no data happens, the severity of new alert.
  late final pulumi.Output<int?> noDataSeverity;

  /// Alarm information notification list, Deprecated from 1.161.0+.
  late final pulumi.Output<List<Map<String, dynamic>>?> notificationLists;

  /// Notification threshold, which is not notified until the number of triggers is reached. The default is 1, Deprecated from 1.161.0+.
  late final pulumi.Output<int?> notifyThreshold;

  /// Policy configuration for new alert.
  late final pulumi.Output<AlertPolicyConfiguration?> policyConfiguration;

  /// The project name.
  late final pulumi.Output<String> projectName;

  /// Multiple conditions for configured alarm query.
  late final pulumi.Output<List<Map<String, dynamic>>?> queryLists;

  /// schedule for alert.
  late final pulumi.Output<AlertSchedule?> schedule;

  /// Execution interval. 60 seconds minimum, such as 60s, 1h. Deprecated from 1.176.0+. use interval in schedule.
  late final pulumi.Output<String> scheduleInterval;

  /// Default FixedRate. No need to configure this parameter. Deprecated from 1.176.0+. use type in schedule.
  late final pulumi.Output<String> scheduleType;

  /// when new alert is resolved, whether to notify, default is false.
  late final pulumi.Output<bool?> sendResolved;

  /// Severity configuration for new alert.
  late final pulumi.Output<List<Map<String, dynamic>>?> severityConfigurations;

  /// Template configuration for alert, when `type` is `tpl`.
  late final pulumi.Output<AlertTemplateConfiguration?> templateConfiguration;

  /// Evaluation threshold, alert will not fire until the number of triggers is reached. The default is 1.
  late final pulumi.Output<int> threshold;

  /// Notification interval, default is no interval. Support number + unit type, for example 60s, 1h, Deprecated from 1.161.0+.
  late final pulumi.Output<String?> throttling;

  /// The type of new alert, `default` for custom alert, `tpl` for template alert.
  late final pulumi.Output<String?> type;

  /// The version of alert, new alert is 2.0.
  late final pulumi.Output<String?> version;

  /// Creates a new [Alert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alert]. {@macro pulumi_log_alert_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alert(String name, {AlertArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:log/alert:Alert',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    alertDescription = registerOutput<String?>('alertDescription');
    alertDisplayname = registerOutput<String>('alertDisplayname');
    alertName = registerOutput<String>('alertName');
    annotations = registerOutput<List<Map<String, dynamic>>?>('annotations');
    autoAnnotation = registerOutput<bool?>('autoAnnotation');
    condition = registerOutput<String?>('condition');
    dashboard = registerOutput<String?>('dashboard');
    groupConfiguration = registerOutput<AlertGroupConfiguration?>(
      'groupConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertGroupConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    joinConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'joinConfigurations',
    );
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    muteUntil = registerOutput<int>('muteUntil');
    noDataFire = registerOutput<bool?>('noDataFire');
    noDataSeverity = registerOutput<int?>('noDataSeverity');
    notificationLists = registerOutput<List<Map<String, dynamic>>?>(
      'notificationLists',
    );
    notifyThreshold = registerOutput<int?>('notifyThreshold');
    policyConfiguration = registerOutput<AlertPolicyConfiguration?>(
      'policyConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertPolicyConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    projectName = registerOutput<String>('projectName');
    queryLists = registerOutput<List<Map<String, dynamic>>?>('queryLists');
    schedule = registerOutput<AlertSchedule?>(
      'schedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    scheduleInterval = registerOutput<String>('scheduleInterval');
    scheduleType = registerOutput<String>('scheduleType');
    sendResolved = registerOutput<bool?>('sendResolved');
    severityConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'severityConfigurations',
    );
    templateConfiguration = registerOutput<AlertTemplateConfiguration?>(
      'templateConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertTemplateConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    threshold = registerOutput<int>('threshold');
    throttling = registerOutput<String?>('throttling');
    type = registerOutput<String?>('type');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [Alert] resource's state with the given [name] and [id].
  static Alert get(String name, pulumi.Input<String> id, {AlertState? state}) {
    return Alert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Alert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:log/alert:Alert',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alertDescription = registerOutput<String?>('alertDescription');
    alertDisplayname = registerOutput<String>('alertDisplayname');
    alertName = registerOutput<String>('alertName');
    annotations = registerOutput<List<Map<String, dynamic>>?>('annotations');
    autoAnnotation = registerOutput<bool?>('autoAnnotation');
    condition = registerOutput<String?>('condition');
    dashboard = registerOutput<String?>('dashboard');
    groupConfiguration = registerOutput<AlertGroupConfiguration?>(
      'groupConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertGroupConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    joinConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'joinConfigurations',
    );
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    muteUntil = registerOutput<int>('muteUntil');
    noDataFire = registerOutput<bool?>('noDataFire');
    noDataSeverity = registerOutput<int?>('noDataSeverity');
    notificationLists = registerOutput<List<Map<String, dynamic>>?>(
      'notificationLists',
    );
    notifyThreshold = registerOutput<int?>('notifyThreshold');
    policyConfiguration = registerOutput<AlertPolicyConfiguration?>(
      'policyConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertPolicyConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    projectName = registerOutput<String>('projectName');
    queryLists = registerOutput<List<Map<String, dynamic>>?>('queryLists');
    schedule = registerOutput<AlertSchedule?>(
      'schedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    scheduleInterval = registerOutput<String>('scheduleInterval');
    scheduleType = registerOutput<String>('scheduleType');
    sendResolved = registerOutput<bool?>('sendResolved');
    severityConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'severityConfigurations',
    );
    templateConfiguration = registerOutput<AlertTemplateConfiguration?>(
      'templateConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertTemplateConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    threshold = registerOutput<int>('threshold');
    throttling = registerOutput<String?>('throttling');
    type = registerOutput<String?>('type');
    version = registerOutput<String?>('version');
  }
}
