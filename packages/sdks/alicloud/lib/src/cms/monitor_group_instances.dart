import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_group_instances_args.dart';
import 'monitor_group_instances_state.dart';

/// Provides a Cloud Monitor Service Monitor Group Instances resource.
///
/// For information about Cloud Monitor Service Monitor Group Instances and how to use it, see [What is Monitor Group Instances](https://www.alibabacloud.com/help/en/cloudmonitor/latest/createmonitorgroupinstances).
///
/// &gt; **NOTE:** Available since v1.115.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultMonitorGroup = new alicloud.cms.MonitorGroup("default", {monitorGroupName: name});
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const example = new alicloud.cms.MonitorGroupInstances("example", {
///     groupId: defaultMonitorGroup.id,
///     instances: [{
///         instanceId: defaultNetwork.id,
///         instanceName: name,
///         regionId: _default.then(_default => _default.regions?.[0]?.id),
///         category: "vpc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_monitor_group = alicloud.cms.MonitorGroup("default", monitor_group_name=name)
/// default = alicloud.get_regions(current=True)
/// example = alicloud.cms.MonitorGroupInstances("example",
///     group_id=default_monitor_group.id,
///     instances=[{
///         "instance_id": default_network.id,
///         "instance_name": name,
///         "region_id": default.regions[0].id,
///         "category": "vpc",
///     }])
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
///     var name = config.Get("name") ?? "tf_example";
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultMonitorGroup = new AliCloud.Cms.MonitorGroup("default", new()
///     {
///         MonitorGroupName = name,
///     });
///
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = new AliCloud.Cms.MonitorGroupInstances("example", new()
///     {
///         GroupId = defaultMonitorGroup.Id,
///         Instances = new[]
///         {
///             new AliCloud.Cms.Inputs.MonitorGroupInstancesInstanceArgs
///             {
///                 InstanceId = defaultNetwork.Id,
///                 InstanceName = name,
///                 RegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///                 Category = "vpc",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMonitorGroup, err := cms.NewMonitorGroup(ctx, "default", &cms.MonitorGroupArgs{
/// 			MonitorGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewMonitorGroupInstances(ctx, "example", &cms.MonitorGroupInstancesArgs{
/// 			GroupId: defaultMonitorGroup.ID(),
/// 			Instances: cms.MonitorGroupInstancesInstanceArray{
/// 				&cms.MonitorGroupInstancesInstanceArgs{
/// 					InstanceId:   defaultNetwork.ID(),
/// 					InstanceName: pulumi.String(name),
/// 					RegionId:     pulumi.String(_default.Regions[0].Id),
/// 					Category:     pulumi.String("vpc"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cms.MonitorGroup;
/// import com.pulumi.alicloud.cms.MonitorGroupArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.cms.MonitorGroupInstances;
/// import com.pulumi.alicloud.cms.MonitorGroupInstancesArgs;
/// import com.pulumi.alicloud.cms.inputs.MonitorGroupInstancesInstanceArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultMonitorGroup = new MonitorGroup("defaultMonitorGroup", MonitorGroupArgs.builder()
///             .monitorGroupName(name)
///             .build());
///
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var example = new MonitorGroupInstances("example", MonitorGroupInstancesArgs.builder()
///             .groupId(defaultMonitorGroup.id())
///             .instances(MonitorGroupInstancesInstanceArgs.builder()
///                 .instanceId(defaultNetwork.id())
///                 .instanceName(name)
///                 .regionId(default_.regions()[0].id())
///                 .category("vpc")
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   defaultMonitorGroup:
///     type: alicloud:cms:MonitorGroup
///     name: default
///     properties:
///       monitorGroupName: ${name}
///   example:
///     type: alicloud:cms:MonitorGroupInstances
///     properties:
///       groupId: ${defaultMonitorGroup.id}
///       instances:
///         - instanceId: ${defaultNetwork.id}
///           instanceName: ${name}
///           regionId: ${default.regions[0].id}
///           category: vpc
/// variables:
///   default:
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
/// Cloud Monitor Service Monitor Group Instances can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/monitorGroupInstances:MonitorGroupInstances example <group_id>
/// ```
class MonitorGroupInstances extends pulumi.CustomResource {
  /// The id of Cms Group.
  late final pulumi.Output<String> groupId;

  /// Instance information added to the Cms Group. See `instances` below.
  late final pulumi.Output<List<Map<String, dynamic>>> instances;

  /// Creates a new [MonitorGroupInstances].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitorGroupInstances]. {@macro pulumi_cms_monitor_group_instances_monitor_group_instances_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitorGroupInstances(
    String name, {
    MonitorGroupInstancesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/monitorGroupInstances:MonitorGroupInstances',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupId = registerOutput<String>('groupId');
    instances = registerOutput<List<Map<String, dynamic>>>('instances');
  }

  /// Gets an existing [MonitorGroupInstances] resource's state with the given [name] and [id].
  static MonitorGroupInstances get(
    String name,
    pulumi.Input<String> id, {
    MonitorGroupInstancesState? state,
  }) {
    return MonitorGroupInstances._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitorGroupInstances._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/monitorGroupInstances:MonitorGroupInstances',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupId = registerOutput<String>('groupId');
    instances = registerOutput<List<Map<String, dynamic>>>('instances');
  }
}
