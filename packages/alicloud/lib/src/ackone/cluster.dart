import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_network.dart';

/// Provides a Ack One Cluster resource. Fleet Manager Cluster.
///
/// For information about Ack One Cluster and how to use it, see [What is Cluster](https://www.alibabacloud.com/help/en/ack/distributed-cloud-container-platform-for-kubernetes/developer-reference/api-adcp-2022-01-01-createhubcluster).
///
/// > **NOTE:** Available since v1.212.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultVpc = new alicloud.vpc.Network("defaultVpc", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const defaultyVSwitch = new alicloud.vpc.Switch("defaultyVSwitch", {
///     vpcId: defaultVpc.id,
///     cidrBlock: "172.16.2.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultCluster = new alicloud.ackone.Cluster("default", {
///     network: {
///         vpcId: defaultVpc.id,
///         vswitches: [defaultyVSwitch.id],
///     },
///     profile: "XFlow",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_vpc = alicloud.vpc.Network("defaultVpc",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// defaulty_v_switch = alicloud.vpc.Switch("defaultyVSwitch",
///     vpc_id=default_vpc.id,
///     cidr_block="172.16.2.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_cluster = alicloud.ackone.Cluster("default",
///     network={
///         "vpc_id": default_vpc.id,
///         "vswitches": [defaulty_v_switch.id],
///     },
///     profile="XFlow")
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultVpc = new AliCloud.Vpc.Network("defaultVpc", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var defaultyVSwitch = new AliCloud.Vpc.Switch("defaultyVSwitch", new()
///     {
///         VpcId = defaultVpc.Id,
///         CidrBlock = "172.16.2.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultCluster = new AliCloud.AckOne.Cluster("default", new()
///     {
///         Network = new AliCloud.AckOne.Inputs.ClusterNetworkArgs
///         {
///             VpcId = defaultVpc.Id,
///             Vswitches = new[]
///             {
///                 defaultyVSwitch.Id,
///             },
///         },
///         Profile = "XFlow",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ackone"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVpc, err := vpc.NewNetwork(ctx, "defaultVpc", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultyVSwitch, err := vpc.NewSwitch(ctx, "defaultyVSwitch", &vpc.SwitchArgs{
/// 			VpcId:       defaultVpc.ID(),
/// 			CidrBlock:   pulumi.String("172.16.2.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ackone.NewCluster(ctx, "default", &ackone.ClusterArgs{
/// 			Network: &ackone.ClusterNetworkArgs{
/// 				VpcId: defaultVpc.ID(),
/// 				Vswitches: pulumi.StringArray{
/// 					defaultyVSwitch.ID(),
/// 				},
/// 			},
/// 			Profile: pulumi.String("XFlow"),
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
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ackone.Cluster;
/// import com.pulumi.alicloud.ackone.ClusterArgs;
/// import com.pulumi.alicloud.ackone.inputs.ClusterNetworkArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultVpc = new Network("defaultVpc", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var defaultyVSwitch = new Switch("defaultyVSwitch", SwitchArgs.builder()
///             .vpcId(defaultVpc.id())
///             .cidrBlock("172.16.2.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .network(ClusterNetworkArgs.builder()
///                 .vpcId(defaultVpc.id())
///                 .vswitches(defaultyVSwitch.id())
///                 .build())
///             .profile("XFlow")
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
///   defaultVpc:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   defaultyVSwitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultVpc.id}
///       cidrBlock: 172.16.2.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultCluster:
///     type: alicloud:ackone:Cluster
///     name: default
///     properties:
///       network:
///         vpcId: ${defaultVpc.id}
///         vswitches:
///           - ${defaultyVSwitch.id}
///       profile: XFlow
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ack One Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ackone/cluster:Cluster example <id>
/// ```
class Cluster extends pulumi.CustomResource {
  /// (Available since v1.243.0) Whether to enable ArgoCD. Default to true. Only valid when `profile` is 'Default'. It has to be false when cluster is deleted.
  late final pulumi.Output<bool> argocdEnabled;
  /// Cluster name.
  late final pulumi.Output<String> clusterName;
  /// Cluster creation time.
  late final pulumi.Output<String> createTime;
  /// Cluster network information. See `network` below.
  late final pulumi.Output<ClusterNetwork> network;
  /// Cluster attributes. Valid values: 'Default', 'XFlow'.
  ///
  /// **Note**: When profile is Default, vswitches might not be deleted when cluster is deleted because there are some remaining resources in the vswitches. We are still fixing this problem.
  late final pulumi.Output<String> profile;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_ackone_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ackone/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.argocdEnabled = registerOutput<bool>('argocdEnabled');
    this.clusterName = registerOutput<String>('clusterName');
    this.createTime = registerOutput<String>('createTime');
    this.network = registerOutput<ClusterNetwork>('network');
    this.profile = registerOutput<String>('profile');
    this.status = registerOutput<String>('status');
  }
}
