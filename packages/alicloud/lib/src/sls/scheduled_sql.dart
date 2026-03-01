import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_sql_args.dart';
import 'scheduled_sql_schedule.dart';
import 'scheduled_sql_scheduled_sql_configuration.dart';

/// Provides a Log Service (SLS) Scheduled Sql resource.
///
/// Scheduled SQL task.
///
/// For information about Log Service (SLS) Scheduled Sql and how to use it, see [What is Scheduled Sql](https://www.alibabacloud.com/help/zh/sls/developer-reference/api-sls-2020-12-30-createscheduledsql).
///
/// > **NOTE:** Available since v1.224.0.
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
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultKIe4KV = new alicloud.log.Project("defaultKIe4KV", {
///     description: `${name}-${_default.result}`,
///     projectName: `${name}-${_default.result}`,
/// });
/// const default1LI9we = new alicloud.log.Store("default1LI9we", {
///     hotTtl: 8,
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: defaultKIe4KV.projectName,
///     logstoreName: `${name}-${_default.result}`,
/// });
/// const defaultScheduledSql = new alicloud.sls.ScheduledSql("default", {
///     description: "example-tf-scheduled-sql-0006",
///     schedule: {
///         type: "Cron",
///         timeZone: "+0700",
///         delay: 20,
///         cronExpression: "0 0/1 * * *",
///     },
///     displayName: "example-tf-scheduled-sql-0006",
///     scheduledSqlConfiguration: {
///         script: "* | select * from log",
///         sqlType: "searchQuery",
///         destEndpoint: "ap-northeast-1.log.aliyuncs.com",
///         destProject: "job-e2e-project-jj78kur-ap-southeast-1",
///         sourceLogstore: default1LI9we.logstoreName,
///         destLogstore: "example-open-api02",
///         roleArn: "acs:ram::1395894005868720:role/aliyunlogetlrole",
///         destRoleArn: "acs:ram::1395894005868720:role/aliyunlogetlrole",
///         fromTimeExpr: "@m-1m",
///         toTimeExpr: "@m",
///         maxRunTimeInSeconds: 1800,
///         resourcePool: "enhanced",
///         maxRetries: 5,
///         fromTime: 1713196800,
///         toTime: 0,
///         dataFormat: "log2log",
///     },
///     scheduledSqlName: name,
///     project: defaultKIe4KV.projectName,
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
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_k_ie4_kv = alicloud.log.Project("defaultKIe4KV",
///     description=f"{name}-{default['result']}",
///     project_name=f"{name}-{default['result']}")
/// default1_li9we = alicloud.log.Store("default1LI9we",
///     hot_ttl=8,
///     retention_period=30,
///     shard_count=2,
///     project_name=default_k_ie4_kv.project_name,
///     logstore_name=f"{name}-{default['result']}")
/// default_scheduled_sql = alicloud.sls.ScheduledSql("default",
///     description="example-tf-scheduled-sql-0006",
///     schedule={
///         "type": "Cron",
///         "time_zone": "+0700",
///         "delay": 20,
///         "cron_expression": "0 0/1 * * *",
///     },
///     display_name="example-tf-scheduled-sql-0006",
///     scheduled_sql_configuration={
///         "script": "* | select * from log",
///         "sql_type": "searchQuery",
///         "dest_endpoint": "ap-northeast-1.log.aliyuncs.com",
///         "dest_project": "job-e2e-project-jj78kur-ap-southeast-1",
///         "source_logstore": default1_li9we.logstore_name,
///         "dest_logstore": "example-open-api02",
///         "role_arn": "acs:ram::1395894005868720:role/aliyunlogetlrole",
///         "dest_role_arn": "acs:ram::1395894005868720:role/aliyunlogetlrole",
///         "from_time_expr": "@m-1m",
///         "to_time_expr": "@m",
///         "max_run_time_in_seconds": 1800,
///         "resource_pool": "enhanced",
///         "max_retries": 5,
///         "from_time": 1713196800,
///         "to_time": 0,
///         "data_format": "log2log",
///     },
///     scheduled_sql_name=name,
///     project=default_k_ie4_kv.project_name)
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultKIe4KV = new AliCloud.Log.Project("defaultKIe4KV", new()
///     {
///         Description = $"{name}-{@default.Result}",
///         ProjectName = $"{name}-{@default.Result}",
///     });
///
///     var default1LI9we = new AliCloud.Log.Store("default1LI9we", new()
///     {
///         HotTtl = 8,
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = defaultKIe4KV.ProjectName,
///         LogstoreName = $"{name}-{@default.Result}",
///     });
///
///     var defaultScheduledSql = new AliCloud.Sls.ScheduledSql("default", new()
///     {
///         Description = "example-tf-scheduled-sql-0006",
///         Schedule = new AliCloud.Sls.Inputs.ScheduledSqlScheduleArgs
///         {
///             Type = "Cron",
///             TimeZone = "+0700",
///             Delay = 20,
///             CronExpression = "0 0/1 * * *",
///         },
///         DisplayName = "example-tf-scheduled-sql-0006",
///         ScheduledSqlConfiguration = new AliCloud.Sls.Inputs.ScheduledSqlScheduledSqlConfigurationArgs
///         {
///             Script = "* | select * from log",
///             SqlType = "searchQuery",
///             DestEndpoint = "ap-northeast-1.log.aliyuncs.com",
///             DestProject = "job-e2e-project-jj78kur-ap-southeast-1",
///             SourceLogstore = default1LI9we.LogstoreName,
///             DestLogstore = "example-open-api02",
///             RoleArn = "acs:ram::1395894005868720:role/aliyunlogetlrole",
///             DestRoleArn = "acs:ram::1395894005868720:role/aliyunlogetlrole",
///             FromTimeExpr = "@m-1m",
///             ToTimeExpr = "@m",
///             MaxRunTimeInSeconds = 1800,
///             ResourcePool = "enhanced",
///             MaxRetries = 5,
///             FromTime = 1713196800,
///             ToTime = 0,
///             DataFormat = "log2log",
///         },
///         ScheduledSqlName = name,
///         Project = defaultKIe4KV.ProjectName,
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKIe4KV, err := log.NewProject(ctx, "defaultKIe4KV", &log.ProjectArgs{
/// 			Description: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			ProjectName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default1LI9we, err := log.NewStore(ctx, "default1LI9we", &log.StoreArgs{
/// 			HotTtl:          pulumi.Int(8),
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     defaultKIe4KV.ProjectName,
/// 			LogstoreName:    pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sls.NewScheduledSql(ctx, "default", &sls.ScheduledSqlArgs{
/// 			Description: pulumi.String("example-tf-scheduled-sql-0006"),
/// 			Schedule: &sls.ScheduledSqlScheduleArgs{
/// 				Type:           pulumi.String("Cron"),
/// 				TimeZone:       pulumi.String("+0700"),
/// 				Delay:          pulumi.Int(20),
/// 				CronExpression: pulumi.String("0 0/1 * * *"),
/// 			},
/// 			DisplayName: pulumi.String("example-tf-scheduled-sql-0006"),
/// 			ScheduledSqlConfiguration: &sls.ScheduledSqlScheduledSqlConfigurationArgs{
/// 				Script:              pulumi.String("* | select * from log"),
/// 				SqlType:             pulumi.String("searchQuery"),
/// 				DestEndpoint:        pulumi.String("ap-northeast-1.log.aliyuncs.com"),
/// 				DestProject:         pulumi.String("job-e2e-project-jj78kur-ap-southeast-1"),
/// 				SourceLogstore:      default1LI9we.LogstoreName,
/// 				DestLogstore:        pulumi.String("example-open-api02"),
/// 				RoleArn:             pulumi.String("acs:ram::1395894005868720:role/aliyunlogetlrole"),
/// 				DestRoleArn:         pulumi.String("acs:ram::1395894005868720:role/aliyunlogetlrole"),
/// 				FromTimeExpr:        pulumi.String("@m-1m"),
/// 				ToTimeExpr:          pulumi.String("@m"),
/// 				MaxRunTimeInSeconds: pulumi.Int(1800),
/// 				ResourcePool:        pulumi.String("enhanced"),
/// 				MaxRetries:          pulumi.Int(5),
/// 				FromTime:            pulumi.Int(1713196800),
/// 				ToTime:              pulumi.Int(0),
/// 				DataFormat:          pulumi.String("log2log"),
/// 			},
/// 			ScheduledSqlName: pulumi.String(name),
/// 			Project:          defaultKIe4KV.ProjectName,
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
/// import com.pulumi.alicloud.sls.ScheduledSql;
/// import com.pulumi.alicloud.sls.ScheduledSqlArgs;
/// import com.pulumi.alicloud.sls.inputs.ScheduledSqlScheduleArgs;
/// import com.pulumi.alicloud.sls.inputs.ScheduledSqlScheduledSqlConfigurationArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultKIe4KV = new Project("defaultKIe4KV", ProjectArgs.builder()
///             .description(String.format("%s-%s", name,default_.result()))
///             .projectName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var default1LI9we = new Store("default1LI9we", StoreArgs.builder()
///             .hotTtl(8)
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(defaultKIe4KV.projectName())
///             .logstoreName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultScheduledSql = new ScheduledSql("defaultScheduledSql", ScheduledSqlArgs.builder()
///             .description("example-tf-scheduled-sql-0006")
///             .schedule(ScheduledSqlScheduleArgs.builder()
///                 .type("Cron")
///                 .timeZone("+0700")
///                 .delay(20)
///                 .cronExpression("0 0/1 * * *")
///                 .build())
///             .displayName("example-tf-scheduled-sql-0006")
///             .scheduledSqlConfiguration(ScheduledSqlScheduledSqlConfigurationArgs.builder()
///                 .script("* | select * from log")
///                 .sqlType("searchQuery")
///                 .destEndpoint("ap-northeast-1.log.aliyuncs.com")
///                 .destProject("job-e2e-project-jj78kur-ap-southeast-1")
///                 .sourceLogstore(default1LI9we.logstoreName())
///                 .destLogstore("example-open-api02")
///                 .roleArn("acs:ram::1395894005868720:role/aliyunlogetlrole")
///                 .destRoleArn("acs:ram::1395894005868720:role/aliyunlogetlrole")
///                 .fromTimeExpr("@m-1m")
///                 .toTimeExpr("@m")
///                 .maxRunTimeInSeconds(1800)
///                 .resourcePool("enhanced")
///                 .maxRetries(5)
///                 .fromTime(1713196800)
///                 .toTime(0)
///                 .dataFormat("log2log")
///                 .build())
///             .scheduledSqlName(name)
///             .project(defaultKIe4KV.projectName())
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
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultKIe4KV:
///     type: alicloud:log:Project
///     properties:
///       description: ${name}-${default.result}
///       projectName: ${name}-${default.result}
///   default1LI9we:
///     type: alicloud:log:Store
///     properties:
///       hotTtl: '8'
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${defaultKIe4KV.projectName}
///       logstoreName: ${name}-${default.result}
///   defaultScheduledSql:
///     type: alicloud:sls:ScheduledSql
///     name: default
///     properties:
///       description: example-tf-scheduled-sql-0006
///       schedule:
///         type: Cron
///         timeZone: '+0700'
///         delay: '20'
///         cronExpression: 0 0/1 * * *
///       displayName: example-tf-scheduled-sql-0006
///       scheduledSqlConfiguration:
///         script: '* | select * from log'
///         sqlType: searchQuery
///         destEndpoint: ap-northeast-1.log.aliyuncs.com
///         destProject: job-e2e-project-jj78kur-ap-southeast-1
///         sourceLogstore: ${default1LI9we.logstoreName}
///         destLogstore: example-open-api02
///         roleArn: acs:ram::1395894005868720:role/aliyunlogetlrole
///         destRoleArn: acs:ram::1395894005868720:role/aliyunlogetlrole
///         fromTimeExpr: '@m-1m'
///         toTimeExpr: '@m'
///         maxRunTimeInSeconds: '1800'
///         resourcePool: enhanced
///         maxRetries: '5'
///         fromTime: '1713196800'
///         toTime: '0'
///         dataFormat: log2log
///       scheduledSqlName: ${name}
///       project: ${defaultKIe4KV.projectName}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Service (SLS) Scheduled Sql can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/scheduledSql:ScheduledSql example <project>:<scheduled_sql_name>
/// ```
class ScheduledSql extends pulumi.CustomResource {
  /// Job description.
  late final pulumi.Output<String?> description;
  /// Task display name.
  late final pulumi.Output<String> displayName;
  /// A short description of struct.
  late final pulumi.Output<String> project;
  /// Schedule type. This field generally does not need to be specified. If you have strict scheduling requirements—for example, running an import job every Monday at 8:00 AM—you can use a cron expression. See `schedule` below.
  late final pulumi.Output<ScheduledSqlSchedule> schedule;
  /// Task configuration. See `scheduled_sql_configuration` below.
  late final pulumi.Output<ScheduledSqlScheduledSqlConfiguration> scheduledSqlConfiguration;
  /// The job name. The naming rules are as follows:
  /// - Job names must be unique within the same project.
  /// - The name can contain only lowercase letters, digits, hyphens (-), and underscores (_).
  /// - The name must start and end with a lowercase letter or digit.
  /// - The length must be between 2 and 64 characters.
  late final pulumi.Output<String> scheduledSqlName;
  /// The status of the scheduled SQL job.
  late final pulumi.Output<String> status;

  /// Creates a new [ScheduledSql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledSql]. {@macro pulumi_sls_scheduled_sql_scheduled_sql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledSql(
    String name, {
    ScheduledSqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sls/scheduledSql:ScheduledSql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.project = registerOutput<String>('project');
    this.schedule = registerOutput<ScheduledSqlSchedule>('schedule');
    this.scheduledSqlConfiguration = registerOutput<ScheduledSqlScheduledSqlConfiguration>('scheduledSqlConfiguration');
    this.scheduledSqlName = registerOutput<String>('scheduledSqlName');
    this.status = registerOutput<String>('status');
  }
}
