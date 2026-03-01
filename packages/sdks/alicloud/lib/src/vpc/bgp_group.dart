import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_group_args.dart';
import 'bgp_group_state.dart';

/// Provides a Express Connect Bgp Group resource.
///
///
///
/// For information about Express Connect Bgp Group and how to use it, see [What is Bgp Group](https://www.alibabacloud.com/help/en/doc-detail/91267.html).
///
/// > **NOTE:** Available since v1.152.0.
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
/// 		_, err = vpc.NewBgpGroup(ctx, "example", &vpc.BgpGroupArgs{
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
/// Express Connect Bgp Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/bgpGroup:BgpGroup example <id>
/// ```
class BgpGroup extends pulumi.CustomResource {
  /// The authentication key of the BGP group.
  late final pulumi.Output<String?> authKey;
  /// The name of the BGP group. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String?> bgpGroupName;
  /// Specifies whether to clear the secret key. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> clearAuthKey;
  /// The description of the BGP group. The description must be 2 to 256 characters in length. It must start with a letter and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The IP version. Valid values:
  /// - `IPv4`: This is the default value.
  /// - `IPv6`: IPv6 is supported only if the VBR for which you want to create the BGP group has IPv6 enabled.
  late final pulumi.Output<String> ipVersion;
  /// Specifies whether to use a fake AS number. Valid values: `true`, `false`.
  ///
  /// > **NOTE:** Note A router that runs BGP typically belongs to only one AS. If you need to replace an AS with a new one, but you cannot immediately modify BGP configurations due to business requirements, you can specify a fake AS number to establish a connection with the local end. This ensures service continuity in scenarios such as AS migration or AS merging.
  late final pulumi.Output<bool> isFakeAsn;
  /// The custom ASN on the Alibaba Cloud side. Valid values:
  late final pulumi.Output<int> localAsn;
  /// The ASN of the gateway device in the data center.
  late final pulumi.Output<int> peerAsn;
  /// The Region ID of the BGP group.
  late final pulumi.Output<String> regionId;
  /// The maximum number of routes supported by a BGP peer. Default value: 110.
  late final pulumi.Output<int> routeLimit;
  /// The ID of the virtual border router (VBR) that is associated with the BGP group.
  late final pulumi.Output<String> routerId;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [BgpGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpGroup]. {@macro pulumi_vpc_bgp_group_bgp_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpGroup(
    String name, {
    BgpGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/bgpGroup:BgpGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authKey = registerOutput<String?>('authKey');
    this.bgpGroupName = registerOutput<String?>('bgpGroupName');
    this.clearAuthKey = registerOutput<bool?>('clearAuthKey');
    this.description = registerOutput<String?>('description');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.isFakeAsn = registerOutput<bool>('isFakeAsn');
    this.localAsn = registerOutput<int>('localAsn');
    this.peerAsn = registerOutput<int>('peerAsn');
    this.regionId = registerOutput<String>('regionId');
    this.routeLimit = registerOutput<int>('routeLimit');
    this.routerId = registerOutput<String>('routerId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [BgpGroup] resource's state with the given [name] and [id].
  static BgpGroup get(
    String name,
    pulumi.Input<String> id, {
    BgpGroupState? state,
  }) {
    return BgpGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/bgpGroup:BgpGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authKey = registerOutput<String?>('authKey');
    this.bgpGroupName = registerOutput<String?>('bgpGroupName');
    this.clearAuthKey = registerOutput<bool?>('clearAuthKey');
    this.description = registerOutput<String?>('description');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.isFakeAsn = registerOutput<bool>('isFakeAsn');
    this.localAsn = registerOutput<int>('localAsn');
    this.peerAsn = registerOutput<int>('peerAsn');
    this.regionId = registerOutput<String>('regionId');
    this.routeLimit = registerOutput<int>('routeLimit');
    this.routerId = registerOutput<String>('routerId');
    this.status = registerOutput<String>('status');
  }
}
