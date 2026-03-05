import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_border_router_args.dart';
import 'virtual_border_router_state.dart';

/// Provides a Express Connect Virtual Border Router resource.
///
/// For information about Express Connect Virtual Border Router and how to use it, see [What is Virtual Border Router](https://www.alibabacloud.com/help/en/doc-detail/44854.htm).
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
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
/// 		_, err = expressconnect.NewVirtualBorderRouter(ctx, "default", &expressconnect.VirtualBorderRouterArgs{
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
/// Express Connect Virtual Border Router can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/virtualBorderRouter:VirtualBorderRouter example <id>
/// ```
class VirtualBorderRouter extends pulumi.CustomResource {
  /// Field `associated_physical_connections` has been deprecated from provider version 1.263.0. Please use the resource `alicloud.expressconnect.VbrPconnAssociation` instead.
  late final pulumi.Output<String?> associatedPhysicalConnections;
  /// The bandwidth of the VBR instance. Unit: Mbps. Valid values:
  /// - When creating a VBR instance for an exclusive leased line, the values are `50`, `100`, `200`, `300`, `400`, `500`, `1000`, `2048`, `5120`, `8192`, `10240`, `20480`, `40960`, `50120`, `61440`, and `102400`.
  /// - When creating a VBR instance for a shared line, you do not need to configure it. The bandwidth of the VBR is the bandwidth set when creating a shared physical line.
  late final pulumi.Output<int> bandwidth;
  /// The circuit code provided by the operator for the physical connection.
  late final pulumi.Output<String?> circuitCode;
  /// (Available since v1.263.0) The creation time of the VBR.
  late final pulumi.Output<String> createTime;
  /// The description information of the VBR.
  late final pulumi.Output<String?> description;
  /// Multiple of detection time.
  /// That is the maximum number of connection packet losses allowed by the receiver to send messages, which is used to detect whether the link is normal.
  /// Valid values: `3` to `10`.
  late final pulumi.Output<int> detectMultiplier;
  /// Whether IPv6 is enabled.
  late final pulumi.Output<bool?> enableIpv6;
  /// The IPv4 address on the Alibaba Cloud side of the VBR instance.
  late final pulumi.Output<String> localGatewayIp;
  /// The IPv6 address on the Alibaba Cloud side of the VBR instance.
  late final pulumi.Output<String?> localIpv6GatewayIp;
  /// Configure the receiving interval of BFD packets. Valid values: `200` to `1000`.
  late final pulumi.Output<int> minRxInterval;
  /// Configure the sending interval of BFD packets. Valid values: `200` to `1000`.
  late final pulumi.Output<int> minTxInterval;
  /// Maximum transmission unit.
  late final pulumi.Output<int> mtu;
  /// The IPv4 address of the client side of the VBR instance.
  late final pulumi.Output<String> peerGatewayIp;
  /// The IPv6 address of the client side of the VBR instance.
  late final pulumi.Output<String?> peerIpv6GatewayIp;
  /// The subnet masks of the Alibaba Cloud-side IPv6 and the customer-side IPv6 of The VBR instance.
  late final pulumi.Output<String?> peeringIpv6SubnetMask;
  /// The subnet masks of the Alibaba Cloud-side IPv4 and the customer-side IPv4 of The VBR instance.
  late final pulumi.Output<String> peeringSubnetMask;
  /// The ID of the physical connection to which the VBR belongs.
  late final pulumi.Output<String> physicalConnectionId;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// (Available since v1.166.0) The Route Table ID Of the Virtual Border Router.
  late final pulumi.Output<String> routeTableId;
  /// Whether to allow inter-IDC communication. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> sitelinkEnable;
  /// The status of the VBR. Valid values: `active`, `terminated`.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The account ID of the VBR instance owner. The default value is the logon Alibaba Cloud account ID.
  late final pulumi.Output<String?> vbrOwnerId;
  /// The name of the VBR instance.
  late final pulumi.Output<String?> virtualBorderRouterName;
  /// The VLAN ID of the VBR instance. Valid values: `0` to `2999`.
  late final pulumi.Output<int> vlanId;

  /// Creates a new [VirtualBorderRouter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualBorderRouter]. {@macro pulumi_expressconnect_virtual_border_router_virtual_border_router_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualBorderRouter(
    String name, {
    VirtualBorderRouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/virtualBorderRouter:VirtualBorderRouter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedPhysicalConnections = registerOutput<String?>('associatedPhysicalConnections');
    bandwidth = registerOutput<int>('bandwidth');
    circuitCode = registerOutput<String?>('circuitCode');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    detectMultiplier = registerOutput<int>('detectMultiplier');
    enableIpv6 = registerOutput<bool?>('enableIpv6');
    localGatewayIp = registerOutput<String>('localGatewayIp');
    localIpv6GatewayIp = registerOutput<String?>('localIpv6GatewayIp');
    minRxInterval = registerOutput<int>('minRxInterval');
    minTxInterval = registerOutput<int>('minTxInterval');
    mtu = registerOutput<int>('mtu');
    peerGatewayIp = registerOutput<String>('peerGatewayIp');
    peerIpv6GatewayIp = registerOutput<String?>('peerIpv6GatewayIp');
    peeringIpv6SubnetMask = registerOutput<String?>('peeringIpv6SubnetMask');
    peeringSubnetMask = registerOutput<String>('peeringSubnetMask');
    physicalConnectionId = registerOutput<String>('physicalConnectionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    routeTableId = registerOutput<String>('routeTableId');
    sitelinkEnable = registerOutput<bool?>('sitelinkEnable');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vbrOwnerId = registerOutput<String?>('vbrOwnerId');
    virtualBorderRouterName = registerOutput<String?>('virtualBorderRouterName');
    vlanId = registerOutput<int>('vlanId');
  }

  /// Gets an existing [VirtualBorderRouter] resource's state with the given [name] and [id].
  static VirtualBorderRouter get(
    String name,
    pulumi.Input<String> id, {
    VirtualBorderRouterState? state,
  }) {
    return VirtualBorderRouter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualBorderRouter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/virtualBorderRouter:VirtualBorderRouter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedPhysicalConnections = registerOutput<String?>('associatedPhysicalConnections');
    bandwidth = registerOutput<int>('bandwidth');
    circuitCode = registerOutput<String?>('circuitCode');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    detectMultiplier = registerOutput<int>('detectMultiplier');
    enableIpv6 = registerOutput<bool?>('enableIpv6');
    localGatewayIp = registerOutput<String>('localGatewayIp');
    localIpv6GatewayIp = registerOutput<String?>('localIpv6GatewayIp');
    minRxInterval = registerOutput<int>('minRxInterval');
    minTxInterval = registerOutput<int>('minTxInterval');
    mtu = registerOutput<int>('mtu');
    peerGatewayIp = registerOutput<String>('peerGatewayIp');
    peerIpv6GatewayIp = registerOutput<String?>('peerIpv6GatewayIp');
    peeringIpv6SubnetMask = registerOutput<String?>('peeringIpv6SubnetMask');
    peeringSubnetMask = registerOutput<String>('peeringSubnetMask');
    physicalConnectionId = registerOutput<String>('physicalConnectionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    routeTableId = registerOutput<String>('routeTableId');
    sitelinkEnable = registerOutput<bool?>('sitelinkEnable');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vbrOwnerId = registerOutput<String?>('vbrOwnerId');
    virtualBorderRouterName = registerOutput<String?>('virtualBorderRouterName');
    vlanId = registerOutput<int>('vlanId');
  }
}
