import 'package:pulumi/pulumi.dart' as pulumi;
import 'sls_group_args.dart';
import 'sls_group_sls_group_config.dart';
import 'sls_group_state.dart';

/// Provides a Cloud Monitor Service Sls Group resource.
///
/// For information about Cloud Monitor Service Sls Group and how to use it, see [What is Sls Group](https://www.alibabacloud.com/help/doc-detail/28608.htm).
///
/// > **NOTE:** Available since v1.171.0.
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
/// 		_, err = cms.NewSlsGroup(ctx, "default", &cms.SlsGroupArgs{
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
/// Cloud Monitor Service Sls Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/slsGroup:SlsGroup example <sls_group_name>
/// ```
class SlsGroup extends pulumi.CustomResource {
  /// The Config of the Sls Group. You can specify up to 25 Config. See `sls_group_config` below.
  late final pulumi.Output<List<SlsGroupSlsGroupConfig>> slsGroupConfigs;
  /// The Description of the Sls Group.
  late final pulumi.Output<String?> slsGroupDescription;
  /// The name of the resource. The name must be `2` to `32` characters in length, and can contain letters, digits and underscores (_). It must start with a letter.
  late final pulumi.Output<String> slsGroupName;

  /// Creates a new [SlsGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SlsGroup]. {@macro pulumi_cms_sls_group_sls_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SlsGroup(
    String name, {
    SlsGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/slsGroup:SlsGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.slsGroupConfigs = registerOutput<List<SlsGroupSlsGroupConfig>>('slsGroupConfigs');
    this.slsGroupDescription = registerOutput<String?>('slsGroupDescription');
    this.slsGroupName = registerOutput<String>('slsGroupName');
  }

  /// Gets an existing [SlsGroup] resource's state with the given [name] and [id].
  static SlsGroup get(
    String name,
    pulumi.Input<String> id, {
    SlsGroupState? state,
  }) {
    return SlsGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SlsGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/slsGroup:SlsGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.slsGroupConfigs = registerOutput<List<SlsGroupSlsGroupConfig>>('slsGroupConfigs');
    this.slsGroupDescription = registerOutput<String?>('slsGroupDescription');
    this.slsGroupName = registerOutput<String>('slsGroupName');
  }
}
