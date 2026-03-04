import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_peer_args.dart';
import 'bgp_peer_state.dart';

/// Provides a Express Connect Bgp Peer resource.
///
/// For information about VPC Bgp Peer and how to use it, see [What is Bgp Peer](https://www.alibabacloud.com/help/en/doc-detail/91267.html).
///
/// &gt; **NOTE:** Available since v1.153.0.
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
/// const name = config.get("name") || "tf-example";
/// const example = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const vlanId = new random.index.Integer("vlan_id", {
///     max: 2999,
///     min: 1,
/// });
/// const exampleVirtualBorderRouter = new alicloud.expressconnect.VirtualBorderRouter("example", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: example.then(example => example.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: vlanId.id,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
/// });
/// const exampleBgpGroup = new alicloud.vpc.BgpGroup("example", {
///     authKey: "YourPassword+12345678",
///     bgpGroupName: name,
///     description: name,
///     peerAsn: 1111,
///     routerId: exampleVirtualBorderRouter.id,
///     isFakeAsn: true,
/// });
/// const exampleBgpPeer = new alicloud.vpc.BgpPeer("example", {
///     bfdMultiHop: 10,
///     bgpGroupId: exampleBgpGroup.id,
///     enableBfd: true,
///     ipVersion: "IPV4",
///     peerIpAddress: "1.1.1.1",
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
///     name = "tf-example"
/// example = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// vlan_id = random.index.Integer("vlan_id",
///     max=2999,
///     min=1)
/// example_virtual_border_router = alicloud.expressconnect.VirtualBorderRouter("example",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=example.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=vlan_id["id"],
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10)
/// example_bgp_group = alicloud.vpc.BgpGroup("example",
///     auth_key="YourPassword+12345678",
///     bgp_group_name=name,
///     description=name,
///     peer_asn=1111,
///     router_id=example_virtual_border_router.id,
///     is_fake_asn=True)
/// example_bgp_peer = alicloud.vpc.BgpPeer("example",
///     bfd_multi_hop=10,
///     bgp_group_id=example_bgp_group.id,
///     enable_bfd=True,
///     ip_version="IPV4",
///     peer_ip_address="1.1.1.1")
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
///     var name = config.Get("name") ?? "tf-example";
///     var example = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var vlanId = new Random.Index.Integer("vlan_id", new()
///     {
///         Max = 2999,
///         Min = 1,
///     });
///
///     var exampleVirtualBorderRouter = new AliCloud.ExpressConnect.VirtualBorderRouter("example", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = example.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VirtualBorderRouterName = name,
///         VlanId = vlanId.Id,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///     });
///
///     var exampleBgpGroup = new AliCloud.Vpc.BgpGroup("example", new()
///     {
///         AuthKey = "YourPassword+12345678",
///         BgpGroupName = name,
///         Description = name,
///         PeerAsn = 1111,
///         RouterId = exampleVirtualBorderRouter.Id,
///         IsFakeAsn = true,
///     });
///
///     var exampleBgpPeer = new AliCloud.Vpc.BgpPeer("example", new()
///     {
///         BfdMultiHop = 10,
///         BgpGroupId = exampleBgpGroup.Id,
///         EnableBfd = true,
///         IpVersion = "IPV4",
///         PeerIpAddress = "1.1.1.1",
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vlanId, err := random.NewInteger(ctx, "vlan_id", &random.IntegerArgs{
/// 			Max: 2999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualBorderRouter, err := expressconnect.NewVirtualBorderRouter(ctx, "example", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(example.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  vlanId.Id,
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBgpGroup, err := vpc.NewBgpGroup(ctx, "example", &vpc.BgpGroupArgs{
/// 			AuthKey:      pulumi.String("YourPassword+12345678"),
/// 			BgpGroupName: pulumi.String(name),
/// 			Description:  pulumi.String(name),
/// 			PeerAsn:      pulumi.Int(1111),
/// 			RouterId:     exampleVirtualBorderRouter.ID(),
/// 			IsFakeAsn:    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewBgpPeer(ctx, "example", &vpc.BgpPeerArgs{
/// 			BfdMultiHop:   pulumi.Int(10),
/// 			BgpGroupId:    exampleBgpGroup.ID(),
/// 			EnableBfd:     pulumi.Bool(true),
/// 			IpVersion:     pulumi.String("IPV4"),
/// 			PeerIpAddress: pulumi.String("1.1.1.1"),
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
/// import com.pulumi.alicloud.vpc.BgpGroup;
/// import com.pulumi.alicloud.vpc.BgpGroupArgs;
/// import com.pulumi.alicloud.vpc.BgpPeer;
/// import com.pulumi.alicloud.vpc.BgpPeerArgs;
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
///         final var example = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var vlanId = new Integer("vlanId", IntegerArgs.builder()
///             .max(2999)
///             .min(1)
///             .build());
///
///         var exampleVirtualBorderRouter = new VirtualBorderRouter("exampleVirtualBorderRouter", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(example.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(vlanId.id())
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .build());
///
///         var exampleBgpGroup = new BgpGroup("exampleBgpGroup", BgpGroupArgs.builder()
///             .authKey("YourPassword+12345678")
///             .bgpGroupName(name)
///             .description(name)
///             .peerAsn(1111)
///             .routerId(exampleVirtualBorderRouter.id())
///             .isFakeAsn(true)
///             .build());
///
///         var exampleBgpPeer = new BgpPeer("exampleBgpPeer", BgpPeerArgs.builder()
///             .bfdMultiHop(10)
///             .bgpGroupId(exampleBgpGroup.id())
///             .enableBfd(true)
///             .ipVersion("IPV4")
///             .peerIpAddress("1.1.1.1")
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
///   vlanId:
///     type: random:Integer
///     name: vlan_id
///     properties:
///       max: 2999
///       min: 1
///   exampleVirtualBorderRouter:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     name: example
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${example.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: ${vlanId.id}
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///   exampleBgpGroup:
///     type: alicloud:vpc:BgpGroup
///     name: example
///     properties:
///       authKey: YourPassword+12345678
///       bgpGroupName: ${name}
///       description: ${name}
///       peerAsn: 1111
///       routerId: ${exampleVirtualBorderRouter.id}
///       isFakeAsn: true
///   exampleBgpPeer:
///     type: alicloud:vpc:BgpPeer
///     name: example
///     properties:
///       bfdMultiHop: '10'
///       bgpGroupId: ${exampleBgpGroup.id}
///       enableBfd: true
///       ipVersion: IPV4
///       peerIpAddress: 1.1.1.1
/// variables:
///   example:
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
/// Express Connect Bgp Peer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/bgpPeer:BgpPeer example <id>
/// ```
class BgpPeer extends pulumi.CustomResource {
  /// The BFD hop count. Valid values: `1` to `255`. **NOTE:** The attribute is valid when the attribute `enable_bfd` is `true`. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection.
  late final pulumi.Output<int?> bfdMultiHop;

  /// The ID of the BGP group.
  late final pulumi.Output<String> bgpGroupId;

  /// The name of the BGP neighbor.
  late final pulumi.Output<String> bgpPeerName;

  /// Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature.
  late final pulumi.Output<bool?> enableBfd;

  /// The IP version.
  late final pulumi.Output<String> ipVersion;

  /// The IP address of the BGP peer.
  late final pulumi.Output<String> peerIpAddress;

  /// Status of BGP neighbors.
  late final pulumi.Output<String> status;

  /// Creates a new [BgpPeer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpPeer]. {@macro pulumi_vpc_bgp_peer_bgp_peer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpPeer(
    String name, {
    BgpPeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/bgpPeer:BgpPeer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bfdMultiHop = registerOutput<int?>('bfdMultiHop');
    bgpGroupId = registerOutput<String>('bgpGroupId');
    bgpPeerName = registerOutput<String>('bgpPeerName');
    enableBfd = registerOutput<bool?>('enableBfd');
    ipVersion = registerOutput<String>('ipVersion');
    peerIpAddress = registerOutput<String>('peerIpAddress');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BgpPeer] resource's state with the given [name] and [id].
  static BgpPeer get(
    String name,
    pulumi.Input<String> id, {
    BgpPeerState? state,
  }) {
    return BgpPeer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpPeer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/bgpPeer:BgpPeer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bfdMultiHop = registerOutput<int?>('bfdMultiHop');
    bgpGroupId = registerOutput<String>('bgpGroupId');
    bgpPeerName = registerOutput<String>('bgpPeerName');
    enableBfd = registerOutput<bool?>('enableBfd');
    ipVersion = registerOutput<String>('ipVersion');
    peerIpAddress = registerOutput<String>('peerIpAddress');
    status = registerOutput<String>('status');
  }
}
