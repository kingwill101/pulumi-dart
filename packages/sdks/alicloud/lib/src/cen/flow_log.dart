import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_args.dart';
import 'flow_log_state.dart';

/// Provides a CEN Flow Log resource.
///
///
///
/// For information about CEN Flow Log and how to use it, see [What is Flow Log](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createflowlog).
///
/// > **NOTE:** Available since v1.73.0.
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
///
/// // Create a cen flowlog resource and use it to publish a route entry pointing to an ECS.
/// const _default = new alicloud.cen.Instance("default", {name: "my-cen"});
/// const defaultProject = new alicloud.log.Project("default", {
///     name: "sls-for-flowlog",
///     description: "create by terraform",
/// });
/// const defaultStore = new alicloud.log.Store("default", {
///     project: defaultProject.name,
///     name: "sls-for-flowlog",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const defaultFlowLog = new alicloud.cen.FlowLog("default", {
///     flowLogName: "my-flowlog",
///     cenId: _default.id,
///     projectName: defaultProject.name,
///     logStoreName: defaultStore.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create a cen flowlog resource and use it to publish a route entry pointing to an ECS.
/// default = alicloud.cen.Instance("default", name="my-cen")
/// default_project = alicloud.log.Project("default",
///     name="sls-for-flowlog",
///     description="create by terraform")
/// default_store = alicloud.log.Store("default",
///     project=default_project.name,
///     name="sls-for-flowlog",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// default_flow_log = alicloud.cen.FlowLog("default",
///     flow_log_name="my-flowlog",
///     cen_id=default.id,
///     project_name=default_project.name,
///     log_store_name=default_store.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a cen flowlog resource and use it to publish a route entry pointing to an ECS.
///     var @default = new AliCloud.Cen.Instance("default", new()
///     {
///         Name = "my-cen",
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         Name = "sls-for-flowlog",
///         Description = "create by terraform",
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         Project = defaultProject.Name,
///         Name = "sls-for-flowlog",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var defaultFlowLog = new AliCloud.Cen.FlowLog("default", new()
///     {
///         FlowLogName = "my-flowlog",
///         CenId = @default.Id,
///         ProjectName = defaultProject.Name,
///         LogStoreName = defaultStore.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a cen flowlog resource and use it to publish a route entry pointing to an ECS.
/// 		_default, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			Name: pulumi.String("my-cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			Name:        pulumi.String("sls-for-flowlog"),
/// 			Description: pulumi.String("create by terraform"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			Project:            defaultProject.Name,
/// 			Name:               pulumi.String("sls-for-flowlog"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewFlowLog(ctx, "default", &cen.FlowLogArgs{
/// 			FlowLogName:  pulumi.String("my-flowlog"),
/// 			CenId:        _default.ID(),
/// 			ProjectName:  defaultProject.Name,
/// 			LogStoreName: defaultStore.Name,
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.cen.FlowLog;
/// import com.pulumi.alicloud.cen.FlowLogArgs;
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
///         // Create a cen flowlog resource and use it to publish a route entry pointing to an ECS.
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("my-cen")
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .name("sls-for-flowlog")
///             .description("create by terraform")
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .project(defaultProject.name())
///             .name("sls-for-flowlog")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var defaultFlowLog = new FlowLog("defaultFlowLog", FlowLogArgs.builder()
///             .flowLogName("my-flowlog")
///             .cenId(default_.id())
///             .projectName(defaultProject.name())
///             .logStoreName(defaultStore.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a cen flowlog resource and use it to publish a route entry pointing to an ECS.
///   default:
///     type: alicloud:cen:Instance
///     properties:
///       name: my-cen
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       name: sls-for-flowlog
///       description: create by terraform
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       project: ${defaultProject.name}
///       name: sls-for-flowlog
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   defaultFlowLog:
///     type: alicloud:cen:FlowLog
///     name: default
///     properties:
///       flowLogName: my-flowlog
///       cenId: ${default.id}
///       projectName: ${defaultProject.name}
///       logStoreName: ${defaultStore.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN Flow Log can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/flowLog:FlowLog example <id>
/// ```
class FlowLog extends pulumi.CustomResource {
  /// cen id
  late final pulumi.Output<String> cenId;
  /// CreateTime
  late final pulumi.Output<String> createTime;
  /// The description of the flowlog.
  late final pulumi.Output<String?> description;
  /// The name of the flowlog.
  late final pulumi.Output<String?> flowLogName;
  /// The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: `60` or **600 * *. Default value: **600 * *.
  late final pulumi.Output<int?> interval;
  /// Log Format
  late final pulumi.Output<String?> logFormatString;
  /// The LogStore that stores the flowlog.
  late final pulumi.Output<String> logStoreName;
  /// The Project that stores the flowlog.
  late final pulumi.Output<String> projectName;
  /// region id
  late final pulumi.Output<String> regionId;
  /// The status of the flow log. Valid values:
  /// - `Active`: started.
  /// - `InActive`: not started.
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Cross-region Connection ID or VBR connection ID.
  ///
  /// > **NOTE:**  This parameter is required.
  late final pulumi.Output<String?> transitRouterAttachmentId;
  /// Transit Router ID
  late final pulumi.Output<String?> transitRouterId;

  /// Creates a new [FlowLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowLog]. {@macro pulumi_cen_flow_log_flow_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowLog(
    String name, {
    FlowLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/flowLog:FlowLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.flowLogName = registerOutput<String?>('flowLogName');
    this.interval = registerOutput<int?>('interval');
    this.logFormatString = registerOutput<String?>('logFormatString');
    this.logStoreName = registerOutput<String>('logStoreName');
    this.projectName = registerOutput<String>('projectName');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterAttachmentId = registerOutput<String?>('transitRouterAttachmentId');
    this.transitRouterId = registerOutput<String?>('transitRouterId');
  }

  /// Gets an existing [FlowLog] resource's state with the given [name] and [id].
  static FlowLog get(
    String name,
    pulumi.Input<String> id, {
    FlowLogState? state,
  }) {
    return FlowLog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlowLog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/flowLog:FlowLog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.flowLogName = registerOutput<String?>('flowLogName');
    this.interval = registerOutput<int?>('interval');
    this.logFormatString = registerOutput<String?>('logFormatString');
    this.logStoreName = registerOutput<String>('logStoreName');
    this.projectName = registerOutput<String>('projectName');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterAttachmentId = registerOutput<String?>('transitRouterAttachmentId');
    this.transitRouterId = registerOutput<String?>('transitRouterId');
  }
}
