import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_args.dart';
import 'flow_log_state.dart';

/// Provides a VPC Flow Log resource.
///
/// While it uses alicloud.vpc.FlowLog to build a vpc flow log resource, it will be active by default.
///
/// For information about VPC Flow Log and how to use it, see [What is Flow Log](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/flow-logs-overview).
///
/// > **NOTE:** Available since v1.117.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const exampleUuid = new random.index.Uuid("example", {});
/// const exampleProject = new alicloud.log.Project("example", {
///     projectName: std.replace({
///         text: exampleUuid.result,
///         search: "-",
///         replace: "",
///     }).then(invoke => std.substr({
///         input: `tf-example-${invoke.result}`,
///         offset: 0,
///         length: 16,
///     })).then(invoke => invoke.result),
///     description: name,
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: exampleProject.projectName,
///     logstoreName: name,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleFlowLog = new alicloud.vpc.FlowLog("example", {
///     flowLogName: name,
///     logStoreName: exampleStore.logstoreName,
///     description: name,
///     trafficPaths: ["all"],
///     projectName: exampleProject.projectName,
///     resourceType: "VPC",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     resourceId: example.id,
///     aggregationInterval: "1",
///     trafficType: "All",
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
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// example = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// example_uuid = random.index.Uuid("example")
/// example_project = alicloud.log.Project("example",
///     project_name=std.substr(input=f"tf-example-{std.replace(text=example_uuid['result'],
///             search='-',
///             replace='').result}",
///         offset=0,
///         length=16).result,
///     description=name)
/// example_store = alicloud.log.Store("example",
///     project_name=example_project.project_name,
///     logstore_name=name,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_flow_log = alicloud.vpc.FlowLog("example",
///     flow_log_name=name,
///     log_store_name=example_store.logstore_name,
///     description=name,
///     traffic_paths=["all"],
///     project_name=example_project.project_name,
///     resource_type="VPC",
///     resource_group_id=default.ids[0],
///     resource_id=example.id,
///     aggregation_interval="1",
///     traffic_type="All")
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var exampleUuid = new Random.Index.Uuid("example");
///
///     var exampleProject = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = Std.Replace.Invoke(new()
///         {
///             Text = exampleUuid.Result,
///             Search = "-",
///             Replace = "",
///         }).Apply(invoke => Std.Substr.Invoke(new()
///         {
///             Input = $"tf-example-{invoke.Result}",
///             Offset = 0,
///             Length = 16,
///         })).Apply(invoke => invoke.Result),
///         Description = name,
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = exampleProject.ProjectName,
///         LogstoreName = name,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleFlowLog = new AliCloud.Vpc.FlowLog("example", new()
///     {
///         FlowLogName = name,
///         LogStoreName = exampleStore.LogstoreName,
///         Description = name,
///         TrafficPaths = new[]
///         {
///             "all",
///         },
///         ProjectName = exampleProject.ProjectName,
///         ResourceType = "VPC",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         ResourceId = example.Id,
///         AggregationInterval = "1",
///         TrafficType = "All",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUuid, err := random.NewUuid(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeSubstr, err := std.Substr(ctx, &std.SubstrArgs{
/// 			Input: fmt.Sprintf("tf-example-%v", std.Replace(ctx, &std.ReplaceArgs{
/// 				Text:    exampleUuid.Result,
/// 				Search:  "-",
/// 				Replace: "",
/// 			}, nil).Result),
/// 			Offset: 0,
/// 			Length: 16,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProject, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.String(invokeSubstr.Result),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        exampleProject.ProjectName,
/// 			LogstoreName:       pulumi.String(name),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewFlowLog(ctx, "example", &vpc.FlowLogArgs{
/// 			FlowLogName:  pulumi.String(name),
/// 			LogStoreName: exampleStore.LogstoreName,
/// 			Description:  pulumi.String(name),
/// 			TrafficPaths: pulumi.StringArray{
/// 				pulumi.String("all"),
/// 			},
/// 			ProjectName:         exampleProject.ProjectName,
/// 			ResourceType:        pulumi.String("VPC"),
/// 			ResourceGroupId:     pulumi.String(_default.Ids[0]),
/// 			ResourceId:          example.ID(),
/// 			AggregationInterval: pulumi.String("1"),
/// 			TrafficType:         pulumi.String("All"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.std.inputs.SubstrArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.vpc.FlowLog;
/// import com.pulumi.alicloud.vpc.FlowLogArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var exampleUuid = new Uuid("exampleUuid");
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .projectName(StdFunctions.substr(SubstrArgs.builder()
///                 .input(String.format("tf-example-%s", StdFunctions.replace(ReplaceArgs.builder()
///                     .text(exampleUuid.result())
///                     .search("-")
///                     .replace("")
///                     .build()).result()))
///                 .offset(0)
///                 .length(16)
///                 .build()).result())
///             .description(name)
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(exampleProject.projectName())
///             .logstoreName(name)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleFlowLog = new FlowLog("exampleFlowLog", FlowLogArgs.builder()
///             .flowLogName(name)
///             .logStoreName(exampleStore.logstoreName())
///             .description(name)
///             .trafficPaths("all")
///             .projectName(exampleProject.projectName())
///             .resourceType("VPC")
///             .resourceGroupId(default_.ids()[0])
///             .resourceId(example.id())
///             .aggregationInterval("1")
///             .trafficType("All")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   exampleUuid:
///     type: random:Uuid
///     name: example
///   exampleProject:
///     type: alicloud:log:Project
///     name: example
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
///                         text: ${exampleUuid.result}
///                         search: '-'
///                         replace: ""
///                       return: result
///             offset: 0
///             length: 16
///           return: result
///       description: ${name}
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${exampleProject.projectName}
///       logstoreName: ${name}
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleFlowLog:
///     type: alicloud:vpc:FlowLog
///     name: example
///     properties:
///       flowLogName: ${name}
///       logStoreName: ${exampleStore.logstoreName}
///       description: ${name}
///       trafficPaths:
///         - all
///       projectName: ${exampleProject.projectName}
///       resourceType: VPC
///       resourceGroupId: ${default.ids[0]}
///       resourceId: ${example.id}
///       aggregationInterval: '1'
///       trafficType: All
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Flow Log can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/flowLog:FlowLog example <id>
/// ```
class FlowLog extends pulumi.CustomResource {
  /// The sampling interval of the flow log. Unit: seconds. Valid values: 1, 5, and 10 (default).
  late final pulumi.Output<String> aggregationInterval;
  /// Business status
  late final pulumi.Output<String> businessStatus;
  /// Creation time
  late final pulumi.Output<String> createTime;
  /// The Description of the VPC Flow Log.
  late final pulumi.Output<String?> description;
  /// The flow log ID.
  late final pulumi.Output<String> flowLogId;
  /// The Name of the VPC Flow Log.
  late final pulumi.Output<String?> flowLogName;
  /// The IP address type of the collected traffic.
  late final pulumi.Output<String> ipVersion;
  /// The Logstore that stores the captured traffic data.
  late final pulumi.Output<String> logStoreName;
  /// The project that manages the captured traffic data.
  late final pulumi.Output<String> projectName;
  /// The region ID.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The ID of the resource.
  late final pulumi.Output<String> resourceId;
  /// The resource type of the traffic captured by the flow log:
  /// - `NetworkInterface`: ENI.
  /// - `VSwitch`: All ENIs in the VSwitch.
  /// - `VPC`: All ENIs in the VPC.
  late final pulumi.Output<String> resourceType;
  /// The status of the VPC Flow Log. Valid values: `Active` and `Inactive`.
  late final pulumi.Output<String> status;
  /// The tag of the current instance resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The collected flow path. Value:
  /// - *all**: indicates full acquisition.
  /// - *internetGateway**: indicates public network traffic collection.
  late final pulumi.Output<List<String>> trafficPaths;
  /// The type of traffic collected. Valid values:
  /// - *All**: All traffic.
  /// - *Allow**: Access control allowedtraffic.
  /// - *Drop**: Access control denied traffic.
  late final pulumi.Output<String> trafficType;

  /// Creates a new [FlowLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowLog]. {@macro pulumi_vpc_flow_log_flow_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowLog(
    String name, {
    FlowLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/flowLog:FlowLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregationInterval = registerOutput<String>('aggregationInterval');
    this.businessStatus = registerOutput<String>('businessStatus');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.flowLogId = registerOutput<String>('flowLogId');
    this.flowLogName = registerOutput<String?>('flowLogName');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.logStoreName = registerOutput<String>('logStoreName');
    this.projectName = registerOutput<String>('projectName');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trafficPaths = registerOutput<List<String>>('trafficPaths');
    this.trafficType = registerOutput<String>('trafficType');
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
          'alicloud:vpc/flowLog:FlowLog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregationInterval = registerOutput<String>('aggregationInterval');
    this.businessStatus = registerOutput<String>('businessStatus');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.flowLogId = registerOutput<String>('flowLogId');
    this.flowLogName = registerOutput<String?>('flowLogName');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.logStoreName = registerOutput<String>('logStoreName');
    this.projectName = registerOutput<String>('projectName');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trafficPaths = registerOutput<List<String>>('trafficPaths');
    this.trafficType = registerOutput<String>('trafficType');
  }
}
