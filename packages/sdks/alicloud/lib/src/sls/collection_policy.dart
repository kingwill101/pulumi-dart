import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_policy_args.dart';
import 'collection_policy_centralize_config.dart';
import 'collection_policy_data_config.dart';
import 'collection_policy_policy_config.dart';
import 'collection_policy_resource_directory.dart';
import 'collection_policy_state.dart';

/// Provides a Log Service (SLS) Collection Policy resource.
///
/// Orchestration policies for cloud product log collection.
///
/// For information about Log Service (SLS) Collection Policy and how to use it, see [What is Collection Policy](https://www.alibabacloud.com/help/zh/sls/developer-reference/api-sls-2020-12-30-upsertcollectionpolicy).
///
/// &gt; **NOTE:** Available since v1.232.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const projectCreate01 = new alicloud.log.Project("project_create_01", {
///     description: name,
///     projectName: std.format({
///         input: "%s1%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const logstoreCreate01 = new alicloud.log.Store("logstore_create_01", {
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: projectCreate01.projectName,
///     logstoreName: std.format({
///         input: "%s1%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const update01 = new alicloud.log.Project("update_01", {
///     description: name,
///     projectName: std.format({
///         input: "%s2%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const logstore002 = new alicloud.log.Store("logstore002", {
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: update01.projectName,
///     logstoreName: std.format({
///         input: "%s2%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const defaultCollectionPolicy = new alicloud.sls.CollectionPolicy("default", {
///     policyConfig: {
///         resourceMode: "all",
///         regions: ["cn-hangzhou"],
///     },
///     dataCode: "metering_log",
///     centralizeEnabled: true,
///     productCode: "oss",
///     policyName: "xc-example-oss-01",
///     enabled: true,
///     dataConfig: {
///         dataRegion: "cn-hangzhou",
///     },
///     centralizeConfig: {
///         destTtl: 3,
///         destRegion: "cn-shanghai",
///         destProject: projectCreate01.projectName,
///         destLogstore: logstoreCreate01.logstoreName,
///     },
///     resourceDirectory: {
///         accountGroupType: "custom",
///         members: ["1936728897040477"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// project_create01 = alicloud.log.Project("project_create_01",
///     description=name,
///     project_name=std.format(input="%s1%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// logstore_create01 = alicloud.log.Store("logstore_create_01",
///     retention_period=30,
///     shard_count=2,
///     project_name=project_create01.project_name,
///     logstore_name=std.format(input="%s1%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// update01 = alicloud.log.Project("update_01",
///     description=name,
///     project_name=std.format(input="%s2%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// logstore002 = alicloud.log.Store("logstore002",
///     retention_period=30,
///     shard_count=2,
///     project_name=update01.project_name,
///     logstore_name=std.format(input="%s2%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// default_collection_policy = alicloud.sls.CollectionPolicy("default",
///     policy_config={
///         "resource_mode": "all",
///         "regions": ["cn-hangzhou"],
///     },
///     data_code="metering_log",
///     centralize_enabled=True,
///     product_code="oss",
///     policy_name="xc-example-oss-01",
///     enabled=True,
///     data_config={
///         "data_region": "cn-hangzhou",
///     },
///     centralize_config={
///         "dest_ttl": 3,
///         "dest_region": "cn-shanghai",
///         "dest_project": project_create01.project_name,
///         "dest_logstore": logstore_create01.logstore_name,
///     },
///     resource_directory={
///         "account_group_type": "custom",
///         "members": ["1936728897040477"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
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
///     var projectCreate01 = new AliCloud.Log.Project("project_create_01", new()
///     {
///         Description = name,
///         ProjectName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var logstoreCreate01 = new AliCloud.Log.Store("logstore_create_01", new()
///     {
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = projectCreate01.ProjectName,
///         LogstoreName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var update01 = new AliCloud.Log.Project("update_01", new()
///     {
///         Description = name,
///         ProjectName = Std.Format.Invoke(new()
///         {
///             Input = "%s2%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var logstore002 = new AliCloud.Log.Store("logstore002", new()
///     {
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = update01.ProjectName,
///         LogstoreName = Std.Format.Invoke(new()
///         {
///             Input = "%s2%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultCollectionPolicy = new AliCloud.Sls.CollectionPolicy("default", new()
///     {
///         PolicyConfig = new AliCloud.Sls.Inputs.CollectionPolicyPolicyConfigArgs
///         {
///             ResourceMode = "all",
///             Regions = new[]
///             {
///                 "cn-hangzhou",
///             },
///         },
///         DataCode = "metering_log",
///         CentralizeEnabled = true,
///         ProductCode = "oss",
///         PolicyName = "xc-example-oss-01",
///         Enabled = true,
///         DataConfig = new AliCloud.Sls.Inputs.CollectionPolicyDataConfigArgs
///         {
///             DataRegion = "cn-hangzhou",
///         },
///         CentralizeConfig = new AliCloud.Sls.Inputs.CollectionPolicyCentralizeConfigArgs
///         {
///             DestTtl = 3,
///             DestRegion = "cn-shanghai",
///             DestProject = projectCreate01.ProjectName,
///             DestLogstore = logstoreCreate01.LogstoreName,
///         },
///         ResourceDirectory = new AliCloud.Sls.Inputs.CollectionPolicyResourceDirectoryArgs
///         {
///             AccountGroupType = "custom",
///             Members = new[]
///             {
///                 "1936728897040477",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		projectCreate01, err := log.NewProject(ctx, "project_create_01", &log.ProjectArgs{
/// 			Description: pulumi.String(name),
/// 			ProjectName: pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logstoreCreate01, err := log.NewStore(ctx, "logstore_create_01", &log.StoreArgs{
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     projectCreate01.ProjectName,
/// 			LogstoreName:    pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		update01, err := log.NewProject(ctx, "update_01", &log.ProjectArgs{
/// 			Description: pulumi.String(name),
/// 			ProjectName: pulumi.String(invokeFormat2.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat3, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStore(ctx, "logstore002", &log.StoreArgs{
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     update01.ProjectName,
/// 			LogstoreName:    pulumi.String(invokeFormat3.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sls.NewCollectionPolicy(ctx, "default", &sls.CollectionPolicyArgs{
/// 			PolicyConfig: &sls.CollectionPolicyPolicyConfigArgs{
/// 				ResourceMode: pulumi.String("all"),
/// 				Regions: pulumi.StringArray{
/// 					pulumi.String("cn-hangzhou"),
/// 				},
/// 			},
/// 			DataCode:          pulumi.String("metering_log"),
/// 			CentralizeEnabled: pulumi.Bool(true),
/// 			ProductCode:       pulumi.String("oss"),
/// 			PolicyName:        pulumi.String("xc-example-oss-01"),
/// 			Enabled:           pulumi.Bool(true),
/// 			DataConfig: &sls.CollectionPolicyDataConfigArgs{
/// 				DataRegion: pulumi.String("cn-hangzhou"),
/// 			},
/// 			CentralizeConfig: &sls.CollectionPolicyCentralizeConfigArgs{
/// 				DestTtl:      pulumi.Int(3),
/// 				DestRegion:   pulumi.String("cn-shanghai"),
/// 				DestProject:  projectCreate01.ProjectName,
/// 				DestLogstore: logstoreCreate01.LogstoreName,
/// 			},
/// 			ResourceDirectory: &sls.CollectionPolicyResourceDirectoryArgs{
/// 				AccountGroupType: pulumi.String("custom"),
/// 				Members: pulumi.StringArray{
/// 					pulumi.String("1936728897040477"),
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.sls.CollectionPolicy;
/// import com.pulumi.alicloud.sls.CollectionPolicyArgs;
/// import com.pulumi.alicloud.sls.inputs.CollectionPolicyPolicyConfigArgs;
/// import com.pulumi.alicloud.sls.inputs.CollectionPolicyDataConfigArgs;
/// import com.pulumi.alicloud.sls.inputs.CollectionPolicyCentralizeConfigArgs;
/// import com.pulumi.alicloud.sls.inputs.CollectionPolicyResourceDirectoryArgs;
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
///         var projectCreate01 = new Project("projectCreate01", ProjectArgs.builder()
///             .description(name)
///             .projectName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var logstoreCreate01 = new Store("logstoreCreate01", StoreArgs.builder()
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(projectCreate01.projectName())
///             .logstoreName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var update01 = new Project("update01", ProjectArgs.builder()
///             .description(name)
///             .projectName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var logstore002 = new Store("logstore002", StoreArgs.builder()
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(update01.projectName())
///             .logstoreName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var defaultCollectionPolicy = new CollectionPolicy("defaultCollectionPolicy", CollectionPolicyArgs.builder()
///             .policyConfig(CollectionPolicyPolicyConfigArgs.builder()
///                 .resourceMode("all")
///                 .regions("cn-hangzhou")
///                 .build())
///             .dataCode("metering_log")
///             .centralizeEnabled(true)
///             .productCode("oss")
///             .policyName("xc-example-oss-01")
///             .enabled(true)
///             .dataConfig(CollectionPolicyDataConfigArgs.builder()
///                 .dataRegion("cn-hangzhou")
///                 .build())
///             .centralizeConfig(CollectionPolicyCentralizeConfigArgs.builder()
///                 .destTtl(3)
///                 .destRegion("cn-shanghai")
///                 .destProject(projectCreate01.projectName())
///                 .destLogstore(logstoreCreate01.logstoreName())
///                 .build())
///             .resourceDirectory(CollectionPolicyResourceDirectoryArgs.builder()
///                 .accountGroupType("custom")
///                 .members("1936728897040477")
///                 .build())
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
///   projectCreate01:
///     type: alicloud:log:Project
///     name: project_create_01
///     properties:
///       description: ${name}
///       projectName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   logstoreCreate01:
///     type: alicloud:log:Store
///     name: logstore_create_01
///     properties:
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${projectCreate01.projectName}
///       logstoreName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   update01:
///     type: alicloud:log:Project
///     name: update_01
///     properties:
///       description: ${name}
///       projectName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   logstore002:
///     type: alicloud:log:Store
///     properties:
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${update01.projectName}
///       logstoreName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   defaultCollectionPolicy:
///     type: alicloud:sls:CollectionPolicy
///     name: default
///     properties:
///       policyConfig:
///         resourceMode: all
///         regions:
///           - cn-hangzhou
///       dataCode: metering_log
///       centralizeEnabled: true
///       productCode: oss
///       policyName: xc-example-oss-01
///       enabled: true
///       dataConfig:
///         dataRegion: cn-hangzhou
///       centralizeConfig:
///         destTtl: '3'
///         destRegion: cn-shanghai
///         destProject: ${projectCreate01.projectName}
///         destLogstore: ${logstoreCreate01.logstoreName}
///       resourceDirectory:
///         accountGroupType: custom
///         members:
///           - '1936728897040477'
/// ```
///
///
/// Enable real-time log query for one or more specific OSS buckets
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example-on-single-bucket";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const projectCreate01 = new alicloud.log.Project("project_create_01", {
///     description: name,
///     projectName: std.format({
///         input: "%s1%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const logstoreCreate01 = new alicloud.log.Store("logstore_create_01", {
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: projectCreate01.projectName,
///     logstoreName: std.format({
///         input: "%s1%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const update01 = new alicloud.log.Project("update_01", {
///     description: name,
///     projectName: std.format({
///         input: "%s2%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const logstore002 = new alicloud.log.Store("logstore002", {
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: update01.projectName,
///     logstoreName: std.format({
///         input: "%s2%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const bucket = new alicloud.oss.Bucket("bucket", {bucket: std.format({
///     input: "%s1%s",
///     args: [
///         name,
///         _default.result,
///     ],
/// }).then(invoke => invoke.result)});
/// const defaultCollectionPolicy = new alicloud.sls.CollectionPolicy("default", {
///     policyConfig: {
///         resourceMode: "instanceMode",
///         instanceIds: [bucket.id],
///     },
///     dataCode: "access_log",
///     centralizeEnabled: false,
///     productCode: "oss",
///     policyName: "xc-example-oss-01",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example-on-single-bucket"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// project_create01 = alicloud.log.Project("project_create_01",
///     description=name,
///     project_name=std.format(input="%s1%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// logstore_create01 = alicloud.log.Store("logstore_create_01",
///     retention_period=30,
///     shard_count=2,
///     project_name=project_create01.project_name,
///     logstore_name=std.format(input="%s1%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// update01 = alicloud.log.Project("update_01",
///     description=name,
///     project_name=std.format(input="%s2%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// logstore002 = alicloud.log.Store("logstore002",
///     retention_period=30,
///     shard_count=2,
///     project_name=update01.project_name,
///     logstore_name=std.format(input="%s2%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// bucket = alicloud.oss.Bucket("bucket", bucket=std.format(input="%s1%s",
///     args=[
///         name,
///         default["result"],
///     ]).result)
/// default_collection_policy = alicloud.sls.CollectionPolicy("default",
///     policy_config={
///         "resource_mode": "instanceMode",
///         "instance_ids": [bucket.id],
///     },
///     data_code="access_log",
///     centralize_enabled=False,
///     product_code="oss",
///     policy_name="xc-example-oss-01",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example-on-single-bucket";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var projectCreate01 = new AliCloud.Log.Project("project_create_01", new()
///     {
///         Description = name,
///         ProjectName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var logstoreCreate01 = new AliCloud.Log.Store("logstore_create_01", new()
///     {
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = projectCreate01.ProjectName,
///         LogstoreName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var update01 = new AliCloud.Log.Project("update_01", new()
///     {
///         Description = name,
///         ProjectName = Std.Format.Invoke(new()
///         {
///             Input = "%s2%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var logstore002 = new AliCloud.Log.Store("logstore002", new()
///     {
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = update01.ProjectName,
///         LogstoreName = Std.Format.Invoke(new()
///         {
///             Input = "%s2%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var bucket = new AliCloud.Oss.Bucket("bucket", new()
///     {
///         BucketName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultCollectionPolicy = new AliCloud.Sls.CollectionPolicy("default", new()
///     {
///         PolicyConfig = new AliCloud.Sls.Inputs.CollectionPolicyPolicyConfigArgs
///         {
///             ResourceMode = "instanceMode",
///             InstanceIds = new[]
///             {
///                 bucket.Id,
///             },
///         },
///         DataCode = "access_log",
///         CentralizeEnabled = false,
///         ProductCode = "oss",
///         PolicyName = "xc-example-oss-01",
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example-on-single-bucket"
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		projectCreate01, err := log.NewProject(ctx, "project_create_01", &log.ProjectArgs{
/// 			Description: pulumi.String(name),
/// 			ProjectName: pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStore(ctx, "logstore_create_01", &log.StoreArgs{
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     projectCreate01.ProjectName,
/// 			LogstoreName:    pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		update01, err := log.NewProject(ctx, "update_01", &log.ProjectArgs{
/// 			Description: pulumi.String(name),
/// 			ProjectName: pulumi.String(invokeFormat2.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat3, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStore(ctx, "logstore002", &log.StoreArgs{
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     update01.ProjectName,
/// 			LogstoreName:    pulumi.String(invokeFormat3.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat4, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := oss.NewBucket(ctx, "bucket", &oss.BucketArgs{
/// 			Bucket: pulumi.String(invokeFormat4.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sls.NewCollectionPolicy(ctx, "default", &sls.CollectionPolicyArgs{
/// 			PolicyConfig: &sls.CollectionPolicyPolicyConfigArgs{
/// 				ResourceMode: pulumi.String("instanceMode"),
/// 				InstanceIds: pulumi.StringArray{
/// 					bucket.ID(),
/// 				},
/// 			},
/// 			DataCode:          pulumi.String("access_log"),
/// 			CentralizeEnabled: pulumi.Bool(false),
/// 			ProductCode:       pulumi.String("oss"),
/// 			PolicyName:        pulumi.String("xc-example-oss-01"),
/// 			Enabled:           pulumi.Bool(true),
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.sls.CollectionPolicy;
/// import com.pulumi.alicloud.sls.CollectionPolicyArgs;
/// import com.pulumi.alicloud.sls.inputs.CollectionPolicyPolicyConfigArgs;
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
///         final var name = config.get("name").orElse("terraform-example-on-single-bucket");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var projectCreate01 = new Project("projectCreate01", ProjectArgs.builder()
///             .description(name)
///             .projectName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var logstoreCreate01 = new Store("logstoreCreate01", StoreArgs.builder()
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(projectCreate01.projectName())
///             .logstoreName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var update01 = new Project("update01", ProjectArgs.builder()
///             .description(name)
///             .projectName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var logstore002 = new Store("logstore002", StoreArgs.builder()
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(update01.projectName())
///             .logstoreName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var defaultCollectionPolicy = new CollectionPolicy("defaultCollectionPolicy", CollectionPolicyArgs.builder()
///             .policyConfig(CollectionPolicyPolicyConfigArgs.builder()
///                 .resourceMode("instanceMode")
///                 .instanceIds(bucket.id())
///                 .build())
///             .dataCode("access_log")
///             .centralizeEnabled(false)
///             .productCode("oss")
///             .policyName("xc-example-oss-01")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example-on-single-bucket
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   projectCreate01:
///     type: alicloud:log:Project
///     name: project_create_01
///     properties:
///       description: ${name}
///       projectName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   logstoreCreate01:
///     type: alicloud:log:Store
///     name: logstore_create_01
///     properties:
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${projectCreate01.projectName}
///       logstoreName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   update01:
///     type: alicloud:log:Project
///     name: update_01
///     properties:
///       description: ${name}
///       projectName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   logstore002:
///     type: alicloud:log:Store
///     properties:
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${update01.projectName}
///       logstoreName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   bucket:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   defaultCollectionPolicy:
///     type: alicloud:sls:CollectionPolicy
///     name: default
///     properties:
///       policyConfig:
///         resourceMode: instanceMode
///         instanceIds:
///           - ${bucket.id}
///       dataCode: access_log
///       centralizeEnabled: false
///       productCode: oss
///       policyName: xc-example-oss-01
///       enabled: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Service (SLS) Collection Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/collectionPolicy:CollectionPolicy example <policy_name>
/// ```
class CollectionPolicy extends pulumi.CustomResource {
  /// Centralized forwarding configuration. See `centralize_config` below.
  late final pulumi.Output<CollectionPolicyCentralizeConfig> centralizeConfig;

  /// Specifies whether to enable centralized forwarding. Default value: false.
  late final pulumi.Output<bool?> centralizeEnabled;

  /// Log type code.
  late final pulumi.Output<String> dataCode;

  /// This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration. See `data_config` below.
  late final pulumi.Output<CollectionPolicyDataConfig> dataConfig;

  /// Whether enabled.
  late final pulumi.Output<bool> enabled;

  /// Collection rule configuration. See `policy_config` below.
  late final pulumi.Output<CollectionPolicyPolicyConfig> policyConfig;

  /// The naming rules are as follows:
  /// - It can contain only lowercase letters, digits, hyphens (-), and underscores (_).
  /// - It must start with a letter.
  /// - Its length must be between 3 and 63 characters.
  late final pulumi.Output<String> policyName;

  /// Product code.
  late final pulumi.Output<String> productCode;

  /// Resource Directory configuration. The account must have Resource Directory enabled and be either a management account or a delegated administrator. See `resource_directory` below.
  late final pulumi.Output<CollectionPolicyResourceDirectory> resourceDirectory;

  /// Creates a new [CollectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CollectionPolicy]. {@macro pulumi_sls_collection_policy_collection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CollectionPolicy(
    String name, {
    CollectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sls/collectionPolicy:CollectionPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    centralizeConfig = registerOutput<CollectionPolicyCentralizeConfig>(
      'centralizeConfig',
    );
    centralizeEnabled = registerOutput<bool?>('centralizeEnabled');
    dataCode = registerOutput<String>('dataCode');
    dataConfig = registerOutput<CollectionPolicyDataConfig>('dataConfig');
    enabled = registerOutput<bool>('enabled');
    policyConfig = registerOutput<CollectionPolicyPolicyConfig>('policyConfig');
    policyName = registerOutput<String>('policyName');
    productCode = registerOutput<String>('productCode');
    resourceDirectory = registerOutput<CollectionPolicyResourceDirectory>(
      'resourceDirectory',
    );
  }

  /// Gets an existing [CollectionPolicy] resource's state with the given [name] and [id].
  static CollectionPolicy get(
    String name,
    pulumi.Input<String> id, {
    CollectionPolicyState? state,
  }) {
    return CollectionPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CollectionPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sls/collectionPolicy:CollectionPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    centralizeConfig = registerOutput<CollectionPolicyCentralizeConfig>(
      'centralizeConfig',
    );
    centralizeEnabled = registerOutput<bool?>('centralizeEnabled');
    dataCode = registerOutput<String>('dataCode');
    dataConfig = registerOutput<CollectionPolicyDataConfig>('dataConfig');
    enabled = registerOutput<bool>('enabled');
    policyConfig = registerOutput<CollectionPolicyPolicyConfig>('policyConfig');
    policyName = registerOutput<String>('policyName');
    productCode = registerOutput<String>('productCode');
    resourceDirectory = registerOutput<CollectionPolicyResourceDirectory>(
      'resourceDirectory',
    );
  }
}
