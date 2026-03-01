import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_network_args.dart';

/// Provides a Express Connect Bgp Network resource.
///
///
///
/// For information about Express Connect Bgp Network and how to use it, see [What is Bgp Network](https://www.alibabacloud.com/help/en/express-connect/developer-reference/api-vpc-2016-04-28-addbgpnetwork-express-connect).
///
/// > **NOTE:** Available since v1.153.0.
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
/// const _default = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 1,
///     max: 2999,
/// });
/// const defaultVirtualBorderRouter = new alicloud.expressconnect.VirtualBorderRouter("default", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: _default.then(_default => _default.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: defaultInteger.id,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
/// });
/// const defaultBgpNetwork = new alicloud.vpc.BgpNetwork("default", {
///     dstCidrBlock: "192.168.0.0/24",
///     routerId: defaultVirtualBorderRouter.id,
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
/// default = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// default_integer = random.index.Integer("default",
///     min=1,
///     max=2999)
/// default_virtual_border_router = alicloud.expressconnect.VirtualBorderRouter("default",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=default.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=default_integer["id"],
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10)
/// default_bgp_network = alicloud.vpc.BgpNetwork("default",
///     dst_cidr_block="192.168.0.0/24",
///     router_id=default_virtual_border_router.id)
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
///     var @default = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 1,
///         Max = 2999,
///     });
///
///     var defaultVirtualBorderRouter = new AliCloud.ExpressConnect.VirtualBorderRouter("default", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = @default.Apply(@default => @default.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id)),
///         VirtualBorderRouterName = name,
///         VlanId = defaultInteger.Id,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///     });
///
///     var defaultBgpNetwork = new AliCloud.Vpc.BgpNetwork("default", new()
///     {
///         DstCidrBlock = "192.168.0.0/24",
///         RouterId = defaultVirtualBorderRouter.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 1,
/// 			Max: 2999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVirtualBorderRouter, err := expressconnect.NewVirtualBorderRouter(ctx, "default", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(_default.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  defaultInteger.Id,
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewBgpNetwork(ctx, "default", &vpc.BgpNetworkArgs{
/// 			DstCidrBlock: pulumi.String("192.168.0.0/24"),
/// 			RouterId:     defaultVirtualBorderRouter.ID(),
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.vpc.BgpNetwork;
/// import com.pulumi.alicloud.vpc.BgpNetworkArgs;
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
///         final var default = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(1)
///             .max(2999)
///             .build());
///
///         var defaultVirtualBorderRouter = new VirtualBorderRouter("defaultVirtualBorderRouter", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(default_.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(defaultInteger.id())
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .build());
///
///         var defaultBgpNetwork = new BgpNetwork("defaultBgpNetwork", BgpNetworkArgs.builder()
///             .dstCidrBlock("192.168.0.0/24")
///             .routerId(defaultVirtualBorderRouter.id())
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 1
///       max: 2999
///   defaultVirtualBorderRouter:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     name: default
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${default.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: ${defaultInteger.id}
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///   defaultBgpNetwork:
///     type: alicloud:vpc:BgpNetwork
///     name: default
///     properties:
///       dstCidrBlock: 192.168.0.0/24
///       routerId: ${defaultVirtualBorderRouter.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Bgp Network can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/bgpNetwork:BgpNetwork example <router_id>:<dst_cidr_block>
/// ```
class BgpNetwork extends pulumi.CustomResource {
  /// The CIDR block of the virtual private cloud (VPC) or vSwitch that you want to connect to a data center.
  late final pulumi.Output<String> dstCidrBlock;
  /// The region ID of the virtual border router (VBR) group.
  late final pulumi.Output<String> routerId;
  /// The state of the advertised BGP network.
  late final pulumi.Output<String> status;
  /// The ID of the VPC.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [BgpNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpNetwork]. {@macro pulumi_vpc_bgp_network_bgp_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpNetwork(
    String name, {
    BgpNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/bgpNetwork:BgpNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dstCidrBlock = registerOutput<String>('dstCidrBlock');
    this.routerId = registerOutput<String>('routerId');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
