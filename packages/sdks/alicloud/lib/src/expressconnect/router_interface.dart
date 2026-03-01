import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_interface_args.dart';
import 'router_interface_state.dart';

/// Provides a Express Connect Router Interface resource.
///
///
///
/// For information about Express Connect Router Interface and how to use it, see [What is Router Interface](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/CreateRouterInterface).
///
/// > **NOTE:** Available since v1.199.0.
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
/// const name = config.get("name") || "tfexample";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const _this = alicloud.getAccount({});
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const nameRegex = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING-JG",
/// });
/// const defaultGetZones = alicloud.alb.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
///     enableIpv6: true,
/// });
/// const zoneA = new alicloud.vpc.Switch("zone_a", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     ipv6CidrBlockMask: 6,
/// });
/// const defaultVirtualBorderRouter = new alicloud.expressconnect.VirtualBorderRouter("default", {
///     physicalConnectionId: nameRegex.then(nameRegex => nameRegex.connections?.[0]?.id),
///     vlanId: 1001,
///     peerGatewayIp: "192.168.254.2",
///     peeringSubnetMask: "255.255.255.0",
///     localGatewayIp: "192.168.254.1",
/// });
/// const defaultRouterInterface = new alicloud.expressconnect.RouterInterface("default", {
///     autoRenew: true,
///     spec: "Mini.2",
///     oppositeRouterType: "VRouter",
///     routerId: defaultVirtualBorderRouter.id,
///     description: "terraform-example",
///     accessPointId: "ap-cn-hangzhou-jg-B",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     period: 1,
///     oppositeRouterId: defaultNetwork.routerId,
///     role: "InitiatingSide",
///     paymentType: "PayAsYouGo",
///     autoPay: true,
///     oppositeInterfaceOwnerId: _this.then(_this => _this.id),
///     routerInterfaceName: name,
///     fastLinkMode: true,
///     oppositeRegionId: "cn-hangzhou",
///     routerType: "VBR",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.resourcemanager.get_resource_groups()
/// this = alicloud.get_account()
/// default_get_regions = alicloud.get_regions(current=True)
/// name_regex = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING-JG")
/// default_get_zones = alicloud.alb.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16",
///     enable_ipv6=True)
/// zone_a = alicloud.vpc.Switch("zone_a",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default_get_zones.zones[0].id,
///     ipv6_cidr_block_mask=6)
/// default_virtual_border_router = alicloud.expressconnect.VirtualBorderRouter("default",
///     physical_connection_id=name_regex.connections[0].id,
///     vlan_id=1001,
///     peer_gateway_ip="192.168.254.2",
///     peering_subnet_mask="255.255.255.0",
///     local_gateway_ip="192.168.254.1")
/// default_router_interface = alicloud.expressconnect.RouterInterface("default",
///     auto_renew=True,
///     spec="Mini.2",
///     opposite_router_type="VRouter",
///     router_id=default_virtual_border_router.id,
///     description="terraform-example",
///     access_point_id="ap-cn-hangzhou-jg-B",
///     resource_group_id=default.ids[0],
///     period=1,
///     opposite_router_id=default_network.router_id,
///     role="InitiatingSide",
///     payment_type="PayAsYouGo",
///     auto_pay=True,
///     opposite_interface_owner_id=this.id,
///     router_interface_name=name,
///     fast_link_mode=True,
///     opposite_region_id="cn-hangzhou",
///     router_type="VBR")
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var @this = AliCloud.GetAccount.Invoke();
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var nameRegex = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING-JG",
///     });
///
///     var defaultGetZones = AliCloud.Alb.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///         EnableIpv6 = true,
///     });
///
///     var zoneA = new AliCloud.Vpc.Switch("zone_a", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Ipv6CidrBlockMask = 6,
///     });
///
///     var defaultVirtualBorderRouter = new AliCloud.ExpressConnect.VirtualBorderRouter("default", new()
///     {
///         PhysicalConnectionId = nameRegex.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VlanId = 1001,
///         PeerGatewayIp = "192.168.254.2",
///         PeeringSubnetMask = "255.255.255.0",
///         LocalGatewayIp = "192.168.254.1",
///     });
///
///     var defaultRouterInterface = new AliCloud.ExpressConnect.RouterInterface("default", new()
///     {
///         AutoRenew = true,
///         Spec = "Mini.2",
///         OppositeRouterType = "VRouter",
///         RouterId = defaultVirtualBorderRouter.Id,
///         Description = "terraform-example",
///         AccessPointId = "ap-cn-hangzhou-jg-B",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         Period = 1,
///         OppositeRouterId = defaultNetwork.RouterId,
///         Role = "InitiatingSide",
///         PaymentType = "PayAsYouGo",
///         AutoPay = true,
///         OppositeInterfaceOwnerId = @this.Apply(@this => @this.Apply(getAccountResult => getAccountResult.Id)),
///         RouterInterfaceName = name,
///         FastLinkMode = true,
///         OppositeRegionId = "cn-hangzhou",
///         RouterType = "VBR",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		this, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nameRegex, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING-JG"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alb.GetZones(ctx, &alb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:    pulumi.String(name),
/// 			CidrBlock:  pulumi.String("172.16.0.0/16"),
/// 			EnableIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSwitch(ctx, "zone_a", &vpc.SwitchArgs{
/// 			VswitchName:       pulumi.String(name),
/// 			VpcId:             defaultNetwork.ID(),
/// 			CidrBlock:         pulumi.String("172.16.0.0/24"),
/// 			ZoneId:            pulumi.String(defaultGetZones.Zones[0].Id),
/// 			Ipv6CidrBlockMask: pulumi.Int(6),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVirtualBorderRouter, err := expressconnect.NewVirtualBorderRouter(ctx, "default", &expressconnect.VirtualBorderRouterArgs{
/// 			PhysicalConnectionId: pulumi.String(nameRegex.Connections[0].Id),
/// 			VlanId:               pulumi.Int(1001),
/// 			PeerGatewayIp:        pulumi.String("192.168.254.2"),
/// 			PeeringSubnetMask:    pulumi.String("255.255.255.0"),
/// 			LocalGatewayIp:       pulumi.String("192.168.254.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewRouterInterface(ctx, "default", &expressconnect.RouterInterfaceArgs{
/// 			AutoRenew:                pulumi.Bool(true),
/// 			Spec:                     pulumi.String("Mini.2"),
/// 			OppositeRouterType:       pulumi.String("VRouter"),
/// 			RouterId:                 defaultVirtualBorderRouter.ID(),
/// 			Description:              pulumi.String("terraform-example"),
/// 			AccessPointId:            pulumi.String("ap-cn-hangzhou-jg-B"),
/// 			ResourceGroupId:          pulumi.String(_default.Ids[0]),
/// 			Period:                   pulumi.Int(1),
/// 			OppositeRouterId:         defaultNetwork.RouterId,
/// 			Role:                     pulumi.String("InitiatingSide"),
/// 			PaymentType:              pulumi.String("PayAsYouGo"),
/// 			AutoPay:                  pulumi.Bool(true),
/// 			OppositeInterfaceOwnerId: pulumi.String(this.Id),
/// 			RouterInterfaceName:      pulumi.String(name),
/// 			FastLinkMode:             pulumi.Bool(true),
/// 			OppositeRegionId:         pulumi.String("cn-hangzhou"),
/// 			RouterType:               pulumi.String("VBR"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.expressconnect.RouterInterface;
/// import com.pulumi.alicloud.expressconnect.RouterInterfaceArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var this = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var nameRegex = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING-JG")
///             .build());
///
///         final var defaultGetZones = AlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .enableIpv6(true)
///             .build());
///
///         var zoneA = new Switch("zoneA", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .ipv6CidrBlockMask(6)
///             .build());
///
///         var defaultVirtualBorderRouter = new VirtualBorderRouter("defaultVirtualBorderRouter", VirtualBorderRouterArgs.builder()
///             .physicalConnectionId(nameRegex.connections()[0].id())
///             .vlanId(1001)
///             .peerGatewayIp("192.168.254.2")
///             .peeringSubnetMask("255.255.255.0")
///             .localGatewayIp("192.168.254.1")
///             .build());
///
///         var defaultRouterInterface = new RouterInterface("defaultRouterInterface", RouterInterfaceArgs.builder()
///             .autoRenew(true)
///             .spec("Mini.2")
///             .oppositeRouterType("VRouter")
///             .routerId(defaultVirtualBorderRouter.id())
///             .description("terraform-example")
///             .accessPointId("ap-cn-hangzhou-jg-B")
///             .resourceGroupId(default_.ids()[0])
///             .period(1)
///             .oppositeRouterId(defaultNetwork.routerId())
///             .role("InitiatingSide")
///             .paymentType("PayAsYouGo")
///             .autoPay(true)
///             .oppositeInterfaceOwnerId(this_.id())
///             .routerInterfaceName(name)
///             .fastLinkMode(true)
///             .oppositeRegionId("cn-hangzhou")
///             .routerType("VBR")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///       enableIpv6: 'true'
///   zoneA:
///     type: alicloud:vpc:Switch
///     name: zone_a
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${defaultGetZones.zones[0].id}
///       ipv6CidrBlockMask: '6'
///   defaultVirtualBorderRouter:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     name: default
///     properties:
///       physicalConnectionId: ${nameRegex.connections[0].id}
///       vlanId: '1001'
///       peerGatewayIp: 192.168.254.2
///       peeringSubnetMask: 255.255.255.0
///       localGatewayIp: 192.168.254.1
///   defaultRouterInterface:
///     type: alicloud:expressconnect:RouterInterface
///     name: default
///     properties:
///       autoRenew: 'true'
///       spec: Mini.2
///       oppositeRouterType: VRouter
///       routerId: ${defaultVirtualBorderRouter.id}
///       description: terraform-example
///       accessPointId: ap-cn-hangzhou-jg-B
///       resourceGroupId: ${default.ids[0]}
///       period: '1'
///       oppositeRouterId: ${defaultNetwork.routerId}
///       role: InitiatingSide
///       paymentType: PayAsYouGo
///       autoPay: 'true'
///       oppositeInterfaceOwnerId: ${this.id}
///       routerInterfaceName: ${name}
///       fastLinkMode: 'true'
///       oppositeRegionId: cn-hangzhou
///       routerType: VBR
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   this:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   nameRegex:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING-JG
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:alb:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Router Interface can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/routerInterface:RouterInterface example <id>
/// ```
class RouterInterface extends pulumi.CustomResource {
  /// Access point ID
  late final pulumi.Output<String?> accessPointId;
  /// . Field 'name' has been deprecated from provider version 1.263.0.
  late final pulumi.Output<bool?> autoPay;
  /// Whether to enable automatic renewal. Value:
  late final pulumi.Output<bool?> autoRenew;
  /// The bandwidth of the router interface
  late final pulumi.Output<int> bandwidth;
  /// The service status of the router interface.
  late final pulumi.Output<String> businessStatus;
  /// Time the connection was established
  late final pulumi.Output<String> connectedTime;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// CrossBorder
  late final pulumi.Output<bool> crossBorder;
  /// Whether to delete the health check IP address configured on the router interface. Value:
  late final pulumi.Output<bool?> deleteHealthCheckIp;
  /// The router interface description. It must be 2 to 256 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  late final pulumi.Output<String?> description;
  /// End Time of Prepaid
  late final pulumi.Output<String> endTime;
  /// Whether the VBR router interface is created by using the fast connection mode. The fast connection mode can automatically complete the connection after the VBR and the router interfaces at both ends of the VPC are created. Value:
  late final pulumi.Output<bool?> fastLinkMode;
  /// Whether there is renewal data
  late final pulumi.Output<String> hasReservationData;
  /// Health check rate. Unit: milliseconds. The recommend value is 2000. Indicates the time interval for sending continuous detection packets during a specified health check.
  late final pulumi.Output<int?> hcRate;
  /// Health check threshold. Unit: One. The recommend value is 8. Indicates the number of detection packets sent during the specified health check.
  late final pulumi.Output<String?> hcThreshold;
  /// Health check source IP address
  late final pulumi.Output<String?> healthCheckSourceIp;
  /// Health check destination IP address
  late final pulumi.Output<String?> healthCheckTargetIp;
  /// Peer access point ID
  late final pulumi.Output<String?> oppositeAccessPointId;
  /// opposite bandwidth
  late final pulumi.Output<int> oppositeBandwidth;
  /// The service status of the router interface on the opposite end of the connection.
  late final pulumi.Output<String> oppositeInterfaceBusinessStatus;
  /// . Field 'router_table_id' has been deprecated from provider version 1.263.0.
  late final pulumi.Output<String> oppositeInterfaceId;
  /// Account ID of the peer router interface
  late final pulumi.Output<String?> oppositeInterfaceOwnerId;
  /// Specifications of the interface of the peer router.
  late final pulumi.Output<String> oppositeInterfaceSpec;
  /// The status of the router interface on the peer of the connection.
  late final pulumi.Output<String> oppositeInterfaceStatus;
  /// Region of the connection peer
  late final pulumi.Output<String> oppositeRegionId;
  /// The ID of the router to which the opposite router interface belongs.
  late final pulumi.Output<String?> oppositeRouterId;
  /// The router type associated with the peer router interface. Valid values:
  /// - VRouter: VPC router.
  /// - VBR: Virtual Border Router.
  late final pulumi.Output<String> oppositeRouterType;
  /// The peer VPC ID
  late final pulumi.Output<String> oppositeVpcInstanceId;
  /// The payment method of the router interface. Valid values:
  /// - Subscription : PrePaid.
  /// - PayAsYouGo : PostPaid.
  late final pulumi.Output<String> paymentType;
  /// Purchase duration, value:
  /// - When you choose to pay on a monthly basis, the value range is **1 to 9**.
  /// - When you choose to pay per year, the value range is **1 to 3**.
  ///
  /// > **NOTE:**  `period` is required when the value of the parameter `payment_type` is `Subscription`.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> period;
  /// The billing cycle of the prepaid fee. Valid values:
  /// - `Month` (default): monthly payment.
  /// - `Year`: Pay per Year.
  ///
  ///
  /// > **NOTE:**  `period` is required when the value of the parameter `payment_type` is `Subscription`.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> pricingCycle;
  /// ReservationActiveTime
  late final pulumi.Output<String> reservationActiveTime;
  /// Renew Bandwidth
  late final pulumi.Output<String> reservationBandwidth;
  /// Payment Type for Renewal
  late final pulumi.Output<String> reservationInternetChargeType;
  /// Renewal Order Type
  late final pulumi.Output<String> reservationOrderType;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The role of the router interface. Valid values:
  /// - InitiatingSide : the initiator of the connection.
  /// - AcceptingSide : Connect to the receiving end.
  late final pulumi.Output<String> role;
  /// The ID of the router where the route entry is located.
  late final pulumi.Output<String> routerId;
  /// The first ID of the resource
  late final pulumi.Output<String> routerInterfaceId;
  /// Resource attribute field representing the resource name. It must be 2 to 128 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  late final pulumi.Output<String?> routerInterfaceName;
  /// The type of the router where the routing table resides. Valid values:
  /// - VRouter:VPC router
  /// - VBR: Border Router
  late final pulumi.Output<String> routerType;
  /// The specification of the router interface. The available specifications and corresponding bandwidth values are as follows:
  /// - Mini.2: 2 Mbps
  /// - Mini.5: 5 Mbps
  /// - Small.1: 10 Mbps
  /// - Small.2: 20 Mbps
  /// - Small.5: 50 Mbps
  /// - Middle.1: 100 Mbps
  /// - Middle.2: 200 Mbps
  /// - Middle.5: 500 Mbps
  /// - Large.1: 1000 Mbps
  /// - Large.2: 2000 Mbps
  /// - Large.5: 5000 Mbps
  /// - Xlarge.1: 10000 Mbps
  ///
  /// When the Role is AcceptingSide (connecting to the receiving end), the Spec value is Negative, which means that the specification is not involved in creating the receiving end router interface.
  late final pulumi.Output<String> spec;
  /// Resource attribute fields that represent the status of the resource. Value range:
  /// - Idle : Initialize.
  /// - Connecting : the initiator is in the process of Connecting.
  /// - AcceptingConnecting : the receiving end is being connected.
  /// - Activating : Restoring.
  /// - Active : Normal.
  /// - Modifying : Modifying.
  /// - Deactivating : Freezing.
  /// - Inactive : Frozen.
  /// - Deleting : Deleting.
  /// - Deleted : Deleted.
  late final pulumi.Output<String> status;
  /// The tag of the resource
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;
  /// ID of the local VPC in the peering connection
  late final pulumi.Output<String> vpcInstanceId;

  /// Creates a new [RouterInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterInterface]. {@macro pulumi_expressconnect_router_interface_router_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterInterface(
    String name, {
    RouterInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/routerInterface:RouterInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPointId = registerOutput<String?>('accessPointId');
    this.autoPay = registerOutput<bool?>('autoPay');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.businessStatus = registerOutput<String>('businessStatus');
    this.connectedTime = registerOutput<String>('connectedTime');
    this.createTime = registerOutput<String>('createTime');
    this.crossBorder = registerOutput<bool>('crossBorder');
    this.deleteHealthCheckIp = registerOutput<bool?>('deleteHealthCheckIp');
    this.description = registerOutput<String?>('description');
    this.endTime = registerOutput<String>('endTime');
    this.fastLinkMode = registerOutput<bool?>('fastLinkMode');
    this.hasReservationData = registerOutput<String>('hasReservationData');
    this.hcRate = registerOutput<int?>('hcRate');
    this.hcThreshold = registerOutput<String?>('hcThreshold');
    this.healthCheckSourceIp = registerOutput<String?>('healthCheckSourceIp');
    this.healthCheckTargetIp = registerOutput<String?>('healthCheckTargetIp');
    this.oppositeAccessPointId = registerOutput<String?>('oppositeAccessPointId');
    this.oppositeBandwidth = registerOutput<int>('oppositeBandwidth');
    this.oppositeInterfaceBusinessStatus = registerOutput<String>('oppositeInterfaceBusinessStatus');
    this.oppositeInterfaceId = registerOutput<String>('oppositeInterfaceId');
    this.oppositeInterfaceOwnerId = registerOutput<String?>('oppositeInterfaceOwnerId');
    this.oppositeInterfaceSpec = registerOutput<String>('oppositeInterfaceSpec');
    this.oppositeInterfaceStatus = registerOutput<String>('oppositeInterfaceStatus');
    this.oppositeRegionId = registerOutput<String>('oppositeRegionId');
    this.oppositeRouterId = registerOutput<String?>('oppositeRouterId');
    this.oppositeRouterType = registerOutput<String>('oppositeRouterType');
    this.oppositeVpcInstanceId = registerOutput<String>('oppositeVpcInstanceId');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.reservationActiveTime = registerOutput<String>('reservationActiveTime');
    this.reservationBandwidth = registerOutput<String>('reservationBandwidth');
    this.reservationInternetChargeType = registerOutput<String>('reservationInternetChargeType');
    this.reservationOrderType = registerOutput<String>('reservationOrderType');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.role = registerOutput<String>('role');
    this.routerId = registerOutput<String>('routerId');
    this.routerInterfaceId = registerOutput<String>('routerInterfaceId');
    this.routerInterfaceName = registerOutput<String?>('routerInterfaceName');
    this.routerType = registerOutput<String>('routerType');
    this.spec = registerOutput<String>('spec');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcInstanceId = registerOutput<String>('vpcInstanceId');
  }

  /// Gets an existing [RouterInterface] resource's state with the given [name] and [id].
  static RouterInterface get(
    String name,
    pulumi.Input<String> id, {
    RouterInterfaceState? state,
  }) {
    return RouterInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/routerInterface:RouterInterface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPointId = registerOutput<String?>('accessPointId');
    this.autoPay = registerOutput<bool?>('autoPay');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.businessStatus = registerOutput<String>('businessStatus');
    this.connectedTime = registerOutput<String>('connectedTime');
    this.createTime = registerOutput<String>('createTime');
    this.crossBorder = registerOutput<bool>('crossBorder');
    this.deleteHealthCheckIp = registerOutput<bool?>('deleteHealthCheckIp');
    this.description = registerOutput<String?>('description');
    this.endTime = registerOutput<String>('endTime');
    this.fastLinkMode = registerOutput<bool?>('fastLinkMode');
    this.hasReservationData = registerOutput<String>('hasReservationData');
    this.hcRate = registerOutput<int?>('hcRate');
    this.hcThreshold = registerOutput<String?>('hcThreshold');
    this.healthCheckSourceIp = registerOutput<String?>('healthCheckSourceIp');
    this.healthCheckTargetIp = registerOutput<String?>('healthCheckTargetIp');
    this.oppositeAccessPointId = registerOutput<String?>('oppositeAccessPointId');
    this.oppositeBandwidth = registerOutput<int>('oppositeBandwidth');
    this.oppositeInterfaceBusinessStatus = registerOutput<String>('oppositeInterfaceBusinessStatus');
    this.oppositeInterfaceId = registerOutput<String>('oppositeInterfaceId');
    this.oppositeInterfaceOwnerId = registerOutput<String?>('oppositeInterfaceOwnerId');
    this.oppositeInterfaceSpec = registerOutput<String>('oppositeInterfaceSpec');
    this.oppositeInterfaceStatus = registerOutput<String>('oppositeInterfaceStatus');
    this.oppositeRegionId = registerOutput<String>('oppositeRegionId');
    this.oppositeRouterId = registerOutput<String?>('oppositeRouterId');
    this.oppositeRouterType = registerOutput<String>('oppositeRouterType');
    this.oppositeVpcInstanceId = registerOutput<String>('oppositeVpcInstanceId');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.reservationActiveTime = registerOutput<String>('reservationActiveTime');
    this.reservationBandwidth = registerOutput<String>('reservationBandwidth');
    this.reservationInternetChargeType = registerOutput<String>('reservationInternetChargeType');
    this.reservationOrderType = registerOutput<String>('reservationOrderType');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.role = registerOutput<String>('role');
    this.routerId = registerOutput<String>('routerId');
    this.routerInterfaceId = registerOutput<String>('routerInterfaceId');
    this.routerInterfaceName = registerOutput<String?>('routerInterfaceName');
    this.routerType = registerOutput<String>('routerType');
    this.spec = registerOutput<String>('spec');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcInstanceId = registerOutput<String>('vpcInstanceId');
  }
}
