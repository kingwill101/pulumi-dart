import 'package:pulumi/pulumi.dart' as pulumi;
import 'vbr_pconn_association_args.dart';
import 'vbr_pconn_association_state.dart';

/// Provides a Express Connect Vbr Pconn Association resource.
///
/// VBR multi-pconn Association.
///
/// For information about Express Connect Vbr Pconn Association and how to use it, see [What is Vbr Pconn Association](https://www.alibabacloud.com/help/en/express-connect/latest/associatephysicalconnectiontovirtualborderrouter#doc-api-Vpc-AssociatePhysicalConnectionToVirtualBorderRouter).
///
/// > **NOTE:** Available since v1.196.0.
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
/// const name = config.get("name") || "tf-example";
/// const example = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const _default = new alicloud.expressconnect.VirtualBorderRouter("default", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: example.then(example => example.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: 110,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
///     enableIpv6: true,
///     localIpv6GatewayIp: "2408:4004:cc:400::1",
///     peerIpv6GatewayIp: "2408:4004:cc:400::2",
///     peeringIpv6SubnetMask: "2408:4004:cc:400::/56",
/// });
/// const exampleVbrPconnAssociation = new alicloud.expressconnect.VbrPconnAssociation("example", {
///     peerGatewayIp: "10.0.0.6",
///     localGatewayIp: "10.0.0.5",
///     physicalConnectionId: example.then(example => example.connections?.[1]?.id),
///     vbrId: _default.id,
///     peeringSubnetMask: "255.255.255.252",
///     vlanId: 1122,
///     enableIpv6: true,
///     localIpv6GatewayIp: "2408:4004:cc::3",
///     peerIpv6GatewayIp: "2408:4004:cc::4",
///     peeringIpv6SubnetMask: "2408:4004:cc::/56",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// example = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// default = alicloud.expressconnect.VirtualBorderRouter("default",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=example.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=110,
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10,
///     enable_ipv6=True,
///     local_ipv6_gateway_ip="2408:4004:cc:400::1",
///     peer_ipv6_gateway_ip="2408:4004:cc:400::2",
///     peering_ipv6_subnet_mask="2408:4004:cc:400::/56")
/// example_vbr_pconn_association = alicloud.expressconnect.VbrPconnAssociation("example",
///     peer_gateway_ip="10.0.0.6",
///     local_gateway_ip="10.0.0.5",
///     physical_connection_id=example.connections[1].id,
///     vbr_id=default.id,
///     peering_subnet_mask="255.255.255.252",
///     vlan_id=1122,
///     enable_ipv6=True,
///     local_ipv6_gateway_ip="2408:4004:cc::3",
///     peer_ipv6_gateway_ip="2408:4004:cc::4",
///     peering_ipv6_subnet_mask="2408:4004:cc::/56")
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
///     var name = config.Get("name") ?? "tf-example";
///     var example = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var @default = new AliCloud.ExpressConnect.VirtualBorderRouter("default", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = example.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VirtualBorderRouterName = name,
///         VlanId = 110,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///         EnableIpv6 = true,
///         LocalIpv6GatewayIp = "2408:4004:cc:400::1",
///         PeerIpv6GatewayIp = "2408:4004:cc:400::2",
///         PeeringIpv6SubnetMask = "2408:4004:cc:400::/56",
///     });
///
///     var exampleVbrPconnAssociation = new AliCloud.ExpressConnect.VbrPconnAssociation("example", new()
///     {
///         PeerGatewayIp = "10.0.0.6",
///         LocalGatewayIp = "10.0.0.5",
///         PhysicalConnectionId = example.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[1]?.Id),
///         VbrId = @default.Id,
///         PeeringSubnetMask = "255.255.255.252",
///         VlanId = 1122,
///         EnableIpv6 = true,
///         LocalIpv6GatewayIp = "2408:4004:cc::3",
///         PeerIpv6GatewayIp = "2408:4004:cc::4",
///         PeeringIpv6SubnetMask = "2408:4004:cc::/56",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
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
/// 		_default, err := expressconnect.NewVirtualBorderRouter(ctx, "default", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(example.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  pulumi.Int(110),
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 			EnableIpv6:              pulumi.Bool(true),
/// 			LocalIpv6GatewayIp:      pulumi.String("2408:4004:cc:400::1"),
/// 			PeerIpv6GatewayIp:       pulumi.String("2408:4004:cc:400::2"),
/// 			PeeringIpv6SubnetMask:   pulumi.String("2408:4004:cc:400::/56"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewVbrPconnAssociation(ctx, "example", &expressconnect.VbrPconnAssociationArgs{
/// 			PeerGatewayIp:         pulumi.String("10.0.0.6"),
/// 			LocalGatewayIp:        pulumi.String("10.0.0.5"),
/// 			PhysicalConnectionId:  pulumi.String(example.Connections[1].Id),
/// 			VbrId:                 _default.ID(),
/// 			PeeringSubnetMask:     pulumi.String("255.255.255.252"),
/// 			VlanId:                pulumi.Int(1122),
/// 			EnableIpv6:            pulumi.Bool(true),
/// 			LocalIpv6GatewayIp:    pulumi.String("2408:4004:cc::3"),
/// 			PeerIpv6GatewayIp:     pulumi.String("2408:4004:cc::4"),
/// 			PeeringIpv6SubnetMask: pulumi.String("2408:4004:cc::/56"),
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
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.expressconnect.VbrPconnAssociation;
/// import com.pulumi.alicloud.expressconnect.VbrPconnAssociationArgs;
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
///         var default_ = new VirtualBorderRouter("default", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(example.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(110)
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .enableIpv6(true)
///             .localIpv6GatewayIp("2408:4004:cc:400::1")
///             .peerIpv6GatewayIp("2408:4004:cc:400::2")
///             .peeringIpv6SubnetMask("2408:4004:cc:400::/56")
///             .build());
///
///         var exampleVbrPconnAssociation = new VbrPconnAssociation("exampleVbrPconnAssociation", VbrPconnAssociationArgs.builder()
///             .peerGatewayIp("10.0.0.6")
///             .localGatewayIp("10.0.0.5")
///             .physicalConnectionId(example.connections()[1].id())
///             .vbrId(default_.id())
///             .peeringSubnetMask("255.255.255.252")
///             .vlanId(1122)
///             .enableIpv6(true)
///             .localIpv6GatewayIp("2408:4004:cc::3")
///             .peerIpv6GatewayIp("2408:4004:cc::4")
///             .peeringIpv6SubnetMask("2408:4004:cc::/56")
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
///   default:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${example.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: 110
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///       enableIpv6: true
///       localIpv6GatewayIp: 2408:4004:cc:400::1
///       peerIpv6GatewayIp: 2408:4004:cc:400::2
///       peeringIpv6SubnetMask: 2408:4004:cc:400::/56
///   exampleVbrPconnAssociation:
///     type: alicloud:expressconnect:VbrPconnAssociation
///     name: example
///     properties:
///       peerGatewayIp: 10.0.0.6
///       localGatewayIp: 10.0.0.5
///       physicalConnectionId: ${example.connections[1].id}
///       vbrId: ${default.id}
///       peeringSubnetMask: 255.255.255.252
///       vlanId: '1122'
///       enableIpv6: true
///       localIpv6GatewayIp: 2408:4004:cc::3
///       peerIpv6GatewayIp: 2408:4004:cc::4
///       peeringIpv6SubnetMask: 2408:4004:cc::/56
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
/// Express Connect Vbr Pconn Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/vbrPconnAssociation:VbrPconnAssociation example <vbr_id>:<physical_connection_id>
/// ```
class VbrPconnAssociation extends pulumi.CustomResource {
  /// (Optional, ForceNew, Computed) The circuit code provided by the operator for the physical connection.
  late final pulumi.Output<String> circuitCode;
  /// Whether IPv6 is enabled. Value:
  late final pulumi.Output<bool> enableIpv6;
  /// The Alibaba cloud IP address of the VBR instance.
  late final pulumi.Output<String?> localGatewayIp;
  /// The IPv6 address on the Alibaba Cloud side of the VBR instance.
  late final pulumi.Output<String?> localIpv6GatewayIp;
  /// The client IP address of the VBR instance.
  /// - This attribute only allows the VBR owner to specify or modify.
  /// - Required when creating a VBR instance for the physical connection owner.
  late final pulumi.Output<String?> peerGatewayIp;
  /// The IPv6 address of the client side of the VBR instance.
  /// - This attribute only allows the VBR owner to specify or modify.
  /// - Required when creating a VBR instance for the physical connection owner.
  late final pulumi.Output<String?> peerIpv6GatewayIp;
  /// The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// Two IPv6 addresses must be in the same subnet.
  late final pulumi.Output<String?> peeringIpv6SubnetMask;
  /// The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// The two IP addresses must be in the same subnet.
  late final pulumi.Output<String?> peeringSubnetMask;
  /// The ID of the leased line instance.
  late final pulumi.Output<String> physicalConnectionId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The ID of the VBR instance.
  late final pulumi.Output<String> vbrId;
  /// VLAN ID of the VBR. Valid values: **0 to 2999**.
  ///
  /// > **NOTE:**  only the owner of the physical connection can specify this parameter. The VLAN ID of two VBRs under the same physical connection cannot be the same.
  late final pulumi.Output<int> vlanId;

  /// Creates a new [VbrPconnAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VbrPconnAssociation]. {@macro pulumi_expressconnect_vbr_pconn_association_vbr_pconn_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VbrPconnAssociation(
    String name, {
    VbrPconnAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/vbrPconnAssociation:VbrPconnAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.circuitCode = registerOutput<String>('circuitCode');
    this.enableIpv6 = registerOutput<bool>('enableIpv6');
    this.localGatewayIp = registerOutput<String?>('localGatewayIp');
    this.localIpv6GatewayIp = registerOutput<String?>('localIpv6GatewayIp');
    this.peerGatewayIp = registerOutput<String?>('peerGatewayIp');
    this.peerIpv6GatewayIp = registerOutput<String?>('peerIpv6GatewayIp');
    this.peeringIpv6SubnetMask = registerOutput<String?>('peeringIpv6SubnetMask');
    this.peeringSubnetMask = registerOutput<String?>('peeringSubnetMask');
    this.physicalConnectionId = registerOutput<String>('physicalConnectionId');
    this.status = registerOutput<String>('status');
    this.vbrId = registerOutput<String>('vbrId');
    this.vlanId = registerOutput<int>('vlanId');
  }

  /// Gets an existing [VbrPconnAssociation] resource's state with the given [name] and [id].
  static VbrPconnAssociation get(
    String name,
    pulumi.Input<String> id, {
    VbrPconnAssociationState? state,
  }) {
    return VbrPconnAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VbrPconnAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/vbrPconnAssociation:VbrPconnAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.circuitCode = registerOutput<String>('circuitCode');
    this.enableIpv6 = registerOutput<bool>('enableIpv6');
    this.localGatewayIp = registerOutput<String?>('localGatewayIp');
    this.localIpv6GatewayIp = registerOutput<String?>('localIpv6GatewayIp');
    this.peerGatewayIp = registerOutput<String?>('peerGatewayIp');
    this.peerIpv6GatewayIp = registerOutput<String?>('peerIpv6GatewayIp');
    this.peeringIpv6SubnetMask = registerOutput<String?>('peeringIpv6SubnetMask');
    this.peeringSubnetMask = registerOutput<String?>('peeringSubnetMask');
    this.physicalConnectionId = registerOutput<String>('physicalConnectionId');
    this.status = registerOutput<String>('status');
    this.vbrId = registerOutput<String>('vbrId');
    this.vlanId = registerOutput<int>('vlanId');
  }
}
