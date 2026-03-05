import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_monitor_sls_task_args.dart';
import 'hybrid_monitor_sls_task_sls_process_config.dart';
import 'hybrid_monitor_sls_task_state.dart';

/// Provides a Cloud Monitor Service Hybrid Monitor Sls Task resource.
///
/// For information about Cloud Monitor Service Hybrid Monitor Sls Task and how to use it, see [What is Hybrid Monitor Sls Task](https://www.alibabacloud.com/help/en/cloudmonitor/latest/createhybridmonitortask).
///
/// &gt; **NOTE:** Available since v1.179.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.getAccount({});
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultUuid = new random.index.Uuid("default", {});
/// const defaultProject = new alicloud.log.Project("default", {projectName: std.replace({
///     text: defaultUuid.result,
///     search: "-",
///     replace: "",
/// }).then(invoke => std.substr({
///     input: `tf-example-${invoke.result}`,
///     offset: 0,
///     length: 16,
/// })).then(invoke => invoke.result)});
/// const defaultStore = new alicloud.log.Store("default", {
///     projectName: defaultProject.projectName,
///     logstoreName: name,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const defaultSlsGroup = new alicloud.cms.SlsGroup("default", {
///     slsGroupConfigs: [{
///         slsUserId: _default.then(_default => _default.id),
///         slsLogstore: defaultStore.logstoreName,
///         slsProject: defaultProject.projectName,
///         slsRegion: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///     }],
///     slsGroupDescription: name,
///     slsGroupName: name,
/// });
/// const defaultNamespace = new alicloud.cms.Namespace("default", {
///     namespace: std.replace({
///         text: defaultUuid.result,
///         search: "-",
///         replace: "",
///     }).then(invoke => std.substr({
///         input: `tf-example-${invoke.result}`,
///         offset: 0,
///         length: 16,
///     })).then(invoke => invoke.result),
///     specification: "cms.s1.large",
/// });
/// const defaultHybridMonitorSlsTask = new alicloud.cms.HybridMonitorSlsTask("default", {
///     taskName: name,
///     namespace: defaultNamespace.id,
///     description: name,
///     collectInterval: 60,
///     collectTargetType: defaultSlsGroup.id,
///     slsProcessConfig: {
///         filter: {
///             relation: "and",
///             filters: [{
///                 operator: "=",
///                 value: "200",
///                 slsKeyName: "code",
///             }],
///         },
///         statistics: [{
///             "function": "count",
///             alias: "level_count",
///             slsKeyName: "name",
///             parameterOne: "200",
///             parameterTwo: "299",
///         }],
///         groupBies: [{
///             alias: "code",
///             slsKeyName: "ApiResult",
///         }],
///         expresses: [{
///             express: "success_count",
///             alias: "SuccRate",
///         }],
///     },
///     attachLabels: [{
///         name: "app_service",
///         value: "example_Value",
///     }],
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
///     name = "tf_example"
/// default = alicloud.get_account()
/// default_get_regions = alicloud.get_regions(current=True)
/// default_uuid = random.index.Uuid("default")
/// default_project = alicloud.log.Project("default", project_name=std.substr(input=f"tf-example-{std.replace(text=default_uuid['result'],
///         search='-',
///         replace='').result}",
///     offset=0,
///     length=16).result)
/// default_store = alicloud.log.Store("default",
///     project_name=default_project.project_name,
///     logstore_name=name,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// default_sls_group = alicloud.cms.SlsGroup("default",
///     sls_group_configs=[{
///         "sls_user_id": default.id,
///         "sls_logstore": default_store.logstore_name,
///         "sls_project": default_project.project_name,
///         "sls_region": default_get_regions.regions[0].id,
///     }],
///     sls_group_description=name,
///     sls_group_name=name)
/// default_namespace = alicloud.cms.Namespace("default",
///     namespace=std.substr(input=f"tf-example-{std.replace(text=default_uuid['result'],
///             search='-',
///             replace='').result}",
///         offset=0,
///         length=16).result,
///     specification="cms.s1.large")
/// default_hybrid_monitor_sls_task = alicloud.cms.HybridMonitorSlsTask("default",
///     task_name=name,
///     namespace=default_namespace.id,
///     description=name,
///     collect_interval=60,
///     collect_target_type=default_sls_group.id,
///     sls_process_config={
///         "filter": {
///             "relation": "and",
///             "filters": [{
///                 "operator": "=",
///                 "value": "200",
///                 "sls_key_name": "code",
///             }],
///         },
///         "statistics": [{
///             "function": "count",
///             "alias": "level_count",
///             "sls_key_name": "name",
///             "parameter_one": "200",
///             "parameter_two": "299",
///         }],
///         "group_bies": [{
///             "alias": "code",
///             "sls_key_name": "ApiResult",
///         }],
///         "expresses": [{
///             "express": "success_count",
///             "alias": "SuccRate",
///         }],
///     },
///     attach_labels=[{
///         "name": "app_service",
///         "value": "example_Value",
///     }])
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultUuid = new Random.Index.Uuid("default");
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = Std.Replace.Invoke(new()
///         {
///             Text = defaultUuid.Result,
///             Search = "-",
///             Replace = "",
///         }).Apply(invoke => Std.Substr.Invoke(new()
///         {
///             Input = $"tf-example-{invoke.Result}",
///             Offset = 0,
///             Length = 16,
///         })).Apply(invoke => invoke.Result),
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         ProjectName = defaultProject.ProjectName,
///         LogstoreName = name,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var defaultSlsGroup = new AliCloud.Cms.SlsGroup("default", new()
///     {
///         SlsGroupConfigs = new[]
///         {
///             new AliCloud.Cms.Inputs.SlsGroupSlsGroupConfigArgs
///             {
///                 SlsUserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///                 SlsLogstore = defaultStore.LogstoreName,
///                 SlsProject = defaultProject.ProjectName,
///                 SlsRegion = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///             },
///         },
///         SlsGroupDescription = name,
///         SlsGroupName = name,
///     });
///
///     var defaultNamespace = new AliCloud.Cms.Namespace("default", new()
///     {
///         NamespaceName = Std.Replace.Invoke(new()
///         {
///             Text = defaultUuid.Result,
///             Search = "-",
///             Replace = "",
///         }).Apply(invoke => Std.Substr.Invoke(new()
///         {
///             Input = $"tf-example-{invoke.Result}",
///             Offset = 0,
///             Length = 16,
///         })).Apply(invoke => invoke.Result),
///         Specification = "cms.s1.large",
///     });
///
///     var defaultHybridMonitorSlsTask = new AliCloud.Cms.HybridMonitorSlsTask("default", new()
///     {
///         TaskName = name,
///         Namespace = defaultNamespace.Id,
///         Description = name,
///         CollectInterval = 60,
///         CollectTargetType = defaultSlsGroup.Id,
///         SlsProcessConfig = new AliCloud.Cms.Inputs.HybridMonitorSlsTaskSlsProcessConfigArgs
///         {
///             Filter = new AliCloud.Cms.Inputs.HybridMonitorSlsTaskSlsProcessConfigFilterArgs
///             {
///                 Relation = "and",
///                 Filters = new[]
///                 {
///                     new AliCloud.Cms.Inputs.HybridMonitorSlsTaskSlsProcessConfigFilterFilterArgs
///                     {
///                         Operator = "=",
///                         Value = "200",
///                         SlsKeyName = "code",
///                     },
///                 },
///             },
///             Statistics = new[]
///             {
///                 new AliCloud.Cms.Inputs.HybridMonitorSlsTaskSlsProcessConfigStatisticArgs
///                 {
///                     Function = "count",
///                     Alias = "level_count",
///                     SlsKeyName = "name",
///                     ParameterOne = "200",
///                     ParameterTwo = "299",
///                 },
///             },
///             GroupBies = new[]
///             {
///                 new AliCloud.Cms.Inputs.HybridMonitorSlsTaskSlsProcessConfigGroupByArgs
///                 {
///                     Alias = "code",
///                     SlsKeyName = "ApiResult",
///                 },
///             },
///             Expresses = new[]
///             {
///                 new AliCloud.Cms.Inputs.HybridMonitorSlsTaskSlsProcessConfigExpressArgs
///                 {
///                     Express = "success_count",
///                     Alias = "SuccRate",
///                 },
///             },
///         },
///         AttachLabels = new[]
///         {
///             new AliCloud.Cms.Inputs.HybridMonitorSlsTaskAttachLabelArgs
///             {
///                 Name = "app_service",
///                 Value = "example_Value",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUuid, err := random.NewUuid(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeSubstr, err := std.Substr(ctx, &std.SubstrArgs{
/// 			Input: fmt.Sprintf("tf-example-%v", std.Replace(ctx, &std.ReplaceArgs{
/// 				Text:    defaultUuid.Result,
/// 				Search:  "-",
/// 				Replace: "",
/// 			}, nil).Result),
/// 			Offset: 0,
/// 			Length: 16,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.String(invokeSubstr.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			ProjectName:        defaultProject.ProjectName,
/// 			LogstoreName:       pulumi.String(name),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSlsGroup, err := cms.NewSlsGroup(ctx, "default", &cms.SlsGroupArgs{
/// 			SlsGroupConfigs: cms.SlsGroupSlsGroupConfigArray{
/// 				&cms.SlsGroupSlsGroupConfigArgs{
/// 					SlsUserId:   pulumi.String(_default.Id),
/// 					SlsLogstore: defaultStore.LogstoreName,
/// 					SlsProject:  defaultProject.ProjectName,
/// 					SlsRegion:   pulumi.String(defaultGetRegions.Regions[0].Id),
/// 				},
/// 			},
/// 			SlsGroupDescription: pulumi.String(name),
/// 			SlsGroupName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeSubstr1, err := std.Substr(ctx, &std.SubstrArgs{
/// 			Input: fmt.Sprintf("tf-example-%v", std.Replace(ctx, &std.ReplaceArgs{
/// 				Text:    defaultUuid.Result,
/// 				Search:  "-",
/// 				Replace: "",
/// 			}, nil).Result),
/// 			Offset: 0,
/// 			Length: 16,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := cms.NewNamespace(ctx, "default", &cms.NamespaceArgs{
/// 			Namespace:     pulumi.String(invokeSubstr1.Result),
/// 			Specification: pulumi.String("cms.s1.large"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewHybridMonitorSlsTask(ctx, "default", &cms.HybridMonitorSlsTaskArgs{
/// 			TaskName:          pulumi.String(name),
/// 			Namespace:         defaultNamespace.ID(),
/// 			Description:       pulumi.String(name),
/// 			CollectInterval:   pulumi.Int(60),
/// 			CollectTargetType: defaultSlsGroup.ID(),
/// 			SlsProcessConfig: &cms.HybridMonitorSlsTaskSlsProcessConfigArgs{
/// 				Filter: &cms.HybridMonitorSlsTaskSlsProcessConfigFilterArgs{
/// 					Relation: pulumi.String("and"),
/// 					Filters: cms.HybridMonitorSlsTaskSlsProcessConfigFilterFilterArray{
/// 						&cms.HybridMonitorSlsTaskSlsProcessConfigFilterFilterArgs{
/// 							Operator:   pulumi.String("="),
/// 							Value:      pulumi.String("200"),
/// 							SlsKeyName: pulumi.String("code"),
/// 						},
/// 					},
/// 				},
/// 				Statistics: cms.HybridMonitorSlsTaskSlsProcessConfigStatisticArray{
/// 					&cms.HybridMonitorSlsTaskSlsProcessConfigStatisticArgs{
/// 						Function:     pulumi.String("count"),
/// 						Alias:        pulumi.String("level_count"),
/// 						SlsKeyName:   pulumi.String("name"),
/// 						ParameterOne: pulumi.String("200"),
/// 						ParameterTwo: pulumi.String("299"),
/// 					},
/// 				},
/// 				GroupBies: cms.HybridMonitorSlsTaskSlsProcessConfigGroupByArray{
/// 					&cms.HybridMonitorSlsTaskSlsProcessConfigGroupByArgs{
/// 						Alias:      pulumi.String("code"),
/// 						SlsKeyName: pulumi.String("ApiResult"),
/// 					},
/// 				},
/// 				Expresses: cms.HybridMonitorSlsTaskSlsProcessConfigExpressArray{
/// 					&cms.HybridMonitorSlsTaskSlsProcessConfigExpressArgs{
/// 						Express: pulumi.String("success_count"),
/// 						Alias:   pulumi.String("SuccRate"),
/// 					},
/// 				},
/// 			},
/// 			AttachLabels: cms.HybridMonitorSlsTaskAttachLabelArray{
/// 				&cms.HybridMonitorSlsTaskAttachLabelArgs{
/// 					Name:  pulumi.String("app_service"),
/// 					Value: pulumi.String("example_Value"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.std.inputs.SubstrArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.cms.SlsGroup;
/// import com.pulumi.alicloud.cms.SlsGroupArgs;
/// import com.pulumi.alicloud.cms.inputs.SlsGroupSlsGroupConfigArgs;
/// import com.pulumi.alicloud.cms.Namespace;
/// import com.pulumi.alicloud.cms.NamespaceArgs;
/// import com.pulumi.alicloud.cms.HybridMonitorSlsTask;
/// import com.pulumi.alicloud.cms.HybridMonitorSlsTaskArgs;
/// import com.pulumi.alicloud.cms.inputs.HybridMonitorSlsTaskSlsProcessConfigArgs;
/// import com.pulumi.alicloud.cms.inputs.HybridMonitorSlsTaskSlsProcessConfigFilterArgs;
/// import com.pulumi.alicloud.cms.inputs.HybridMonitorSlsTaskAttachLabelArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultUuid = new Uuid("defaultUuid");
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(StdFunctions.substr(SubstrArgs.builder()
///                 .input(String.format("tf-example-%s", StdFunctions.replace(ReplaceArgs.builder()
///                     .text(defaultUuid.result())
///                     .search("-")
///                     .replace("")
///                     .build()).result()))
///                 .offset(0)
///                 .length(16)
///                 .build()).result())
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .projectName(defaultProject.projectName())
///             .logstoreName(name)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var defaultSlsGroup = new SlsGroup("defaultSlsGroup", SlsGroupArgs.builder()
///             .slsGroupConfigs(SlsGroupSlsGroupConfigArgs.builder()
///                 .slsUserId(default_.id())
///                 .slsLogstore(defaultStore.logstoreName())
///                 .slsProject(defaultProject.projectName())
///                 .slsRegion(defaultGetRegions.regions()[0].id())
///                 .build())
///             .slsGroupDescription(name)
///             .slsGroupName(name)
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespace(StdFunctions.substr(SubstrArgs.builder()
///                 .input(String.format("tf-example-%s", StdFunctions.replace(ReplaceArgs.builder()
///                     .text(defaultUuid.result())
///                     .search("-")
///                     .replace("")
///                     .build()).result()))
///                 .offset(0)
///                 .length(16)
///                 .build()).result())
///             .specification("cms.s1.large")
///             .build());
///
///         var defaultHybridMonitorSlsTask = new HybridMonitorSlsTask("defaultHybridMonitorSlsTask", HybridMonitorSlsTaskArgs.builder()
///             .taskName(name)
///             .namespace(defaultNamespace.id())
///             .description(name)
///             .collectInterval(60)
///             .collectTargetType(defaultSlsGroup.id())
///             .slsProcessConfig(HybridMonitorSlsTaskSlsProcessConfigArgs.builder()
///                 .filter(HybridMonitorSlsTaskSlsProcessConfigFilterArgs.builder()
///                     .relation("and")
///                     .filters(HybridMonitorSlsTaskSlsProcessConfigFilterFilterArgs.builder()
///                         .operator("=")
///                         .value("200")
///                         .slsKeyName("code")
///                         .build())
///                     .build())
///                 .statistics(HybridMonitorSlsTaskSlsProcessConfigStatisticArgs.builder()
///                     .function("count")
///                     .alias("level_count")
///                     .slsKeyName("name")
///                     .parameterOne("200")
///                     .parameterTwo("299")
///                     .build())
///                 .groupBies(HybridMonitorSlsTaskSlsProcessConfigGroupByArgs.builder()
///                     .alias("code")
///                     .slsKeyName("ApiResult")
///                     .build())
///                 .expresses(HybridMonitorSlsTaskSlsProcessConfigExpressArgs.builder()
///                     .express("success_count")
///                     .alias("SuccRate")
///                     .build())
///                 .build())
///             .attachLabels(HybridMonitorSlsTaskAttachLabelArgs.builder()
///                 .name("app_service")
///                 .value("example_Value")
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
///     default: tf_example
/// resources:
///   defaultUuid:
///     type: random:Uuid
///     name: default
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       projectName:
///         fn::invoke:
///           function: std:substr
///           arguments:
///             input:
///               fn::join:
///                 - ""
///                 - - tf-example-
///                   - fn::invoke:
///                       function: std:replace
///                       arguments:
///                         text: ${defaultUuid.result}
///                         search: '-'
///                         replace: ""
///                       return: result
///             offset: 0
///             length: 16
///           return: result
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       projectName: ${defaultProject.projectName}
///       logstoreName: ${name}
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   defaultSlsGroup:
///     type: alicloud:cms:SlsGroup
///     name: default
///     properties:
///       slsGroupConfigs:
///         - slsUserId: ${default.id}
///           slsLogstore: ${defaultStore.logstoreName}
///           slsProject: ${defaultProject.projectName}
///           slsRegion: ${defaultGetRegions.regions[0].id}
///       slsGroupDescription: ${name}
///       slsGroupName: ${name}
///   defaultNamespace:
///     type: alicloud:cms:Namespace
///     name: default
///     properties:
///       namespace:
///         fn::invoke:
///           function: std:substr
///           arguments:
///             input:
///               fn::join:
///                 - ""
///                 - - tf-example-
///                   - fn::invoke:
///                       function: std:replace
///                       arguments:
///                         text: ${defaultUuid.result}
///                         search: '-'
///                         replace: ""
///                       return: result
///             offset: 0
///             length: 16
///           return: result
///       specification: cms.s1.large
///   defaultHybridMonitorSlsTask:
///     type: alicloud:cms:HybridMonitorSlsTask
///     name: default
///     properties:
///       taskName: ${name}
///       namespace: ${defaultNamespace.id}
///       description: ${name}
///       collectInterval: 60
///       collectTargetType: ${defaultSlsGroup.id}
///       slsProcessConfig:
///         filter:
///           relation: and
///           filters:
///             - operator: =
///               value: '200'
///               slsKeyName: code
///         statistics:
///           - function: count
///             alias: level_count
///             slsKeyName: name
///             parameterOne: '200'
///             parameterTwo: '299'
///         groupBies:
///           - alias: code
///             slsKeyName: ApiResult
///         expresses:
///           - express: success_count
///             alias: SuccRate
///       attachLabels:
///         - name: app_service
///           value: example_Value
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Hybrid Monitor Sls Task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/hybridMonitorSlsTask:HybridMonitorSlsTask example <id>
/// ```
class HybridMonitorSlsTask extends pulumi.CustomResource {
  /// The label of the monitoring task. See `attach_labels` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> attachLabels;
  /// The interval at which metrics are collected. Valid values: `15`, `60`(default value). Unit: seconds.
  late final pulumi.Output<int> collectInterval;
  /// The type of the collection target, enter the name of the Logstore group.
  late final pulumi.Output<String> collectTargetType;
  /// The description of the metric import task.
  late final pulumi.Output<String?> description;
  /// The name of the namespace.
  late final pulumi.Output<String> namespace;
  /// The configurations of the logs that are imported from Log Service. See `sls_process_config` below.
  late final pulumi.Output<HybridMonitorSlsTaskSlsProcessConfig> slsProcessConfig;
  /// The name of the metric import task, enter the name of the metric for logs imported from Log Service.
  late final pulumi.Output<String> taskName;

  /// Creates a new [HybridMonitorSlsTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridMonitorSlsTask]. {@macro pulumi_cms_hybrid_monitor_sls_task_hybrid_monitor_sls_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridMonitorSlsTask(
    String name, {
    HybridMonitorSlsTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/hybridMonitorSlsTask:HybridMonitorSlsTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachLabels = registerOutput<List<Map<String, dynamic>>?>('attachLabels');
    collectInterval = registerOutput<int>('collectInterval');
    collectTargetType = registerOutput<String>('collectTargetType');
    description = registerOutput<String?>('description');
    namespace = registerOutput<String>('namespace');
    slsProcessConfig = registerOutput<HybridMonitorSlsTaskSlsProcessConfig>('slsProcessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HybridMonitorSlsTaskSlsProcessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    taskName = registerOutput<String>('taskName');
  }

  /// Gets an existing [HybridMonitorSlsTask] resource's state with the given [name] and [id].
  static HybridMonitorSlsTask get(
    String name,
    pulumi.Input<String> id, {
    HybridMonitorSlsTaskState? state,
  }) {
    return HybridMonitorSlsTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HybridMonitorSlsTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/hybridMonitorSlsTask:HybridMonitorSlsTask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachLabels = registerOutput<List<Map<String, dynamic>>?>('attachLabels');
    collectInterval = registerOutput<int>('collectInterval');
    collectTargetType = registerOutput<String>('collectTargetType');
    description = registerOutput<String?>('description');
    namespace = registerOutput<String>('namespace');
    slsProcessConfig = registerOutput<HybridMonitorSlsTaskSlsProcessConfig>('slsProcessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HybridMonitorSlsTaskSlsProcessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    taskName = registerOutput<String>('taskName');
  }
}
