import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_firewall_args.dart';
import 'nat_firewall_nat_route_entry_list.dart';

/// Provides a Cloud Firewall Nat Firewall resource.
///
/// For information about Cloud Firewall Nat Firewall and how to use it, see [What is Nat Firewall](https://www.alibabacloud.com/help/zh/cloud-firewall/developer-reference/api-cloudfw-2017-12-07-createsecurityproxy).
///
/// > **NOTE:** Available since v1.224.0.
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
/// const defaultikZ0gD = new alicloud.vpc.Network("defaultikZ0gD", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const defaultp4O7qi = new alicloud.vpc.Switch("defaultp4O7qi", {
///     vpcId: defaultikZ0gD.id,
///     cidrBlock: "172.16.6.0/24",
///     vswitchName: name,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const default2iRZpC = new alicloud.vpc.NatGateway("default2iRZpC", {
///     eipBindMode: "MULTI_BINDED",
///     vpcId: defaultikZ0gD.id,
///     natGatewayName: name,
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultp4O7qi.id,
///     natType: "Enhanced",
///     networkType: "internet",
/// });
/// const defaultyiRwgs = new alicloud.ecs.EipAddress("defaultyiRwgs", {addressName: name});
/// const defaults2MTuO = new alicloud.ecs.EipAssociation("defaults2MTuO", {
///     instanceId: default2iRZpC.id,
///     allocationId: defaultyiRwgs.id,
///     mode: "NAT",
///     instanceType: "Nat",
/// });
/// const defaultAKE43g = new alicloud.vpc.SnatEntry("defaultAKE43g", {
///     snatIp: defaultyiRwgs.ipAddress,
///     snatTableId: default2iRZpC.snatTableIds,
///     sourceVswitchId: defaultp4O7qi.id,
/// });
/// const defaultNatFirewall = new alicloud.cloudfirewall.NatFirewall("default", {
///     natGatewayId: default2iRZpC.id,
///     natRouteEntryLists: [{
///         nexthopType: "NatGateway",
///         routeTableId: defaultikZ0gD.routeTableId,
///         nexthopId: default2iRZpC.id,
///         destinationCidr: "0.0.0.0/0",
///     }],
///     firewallSwitch: "close",
///     vswitchAuto: "true",
///     status: "closed",
///     regionNo: "cn-shenzhen",
///     lang: "zh",
///     proxyName: "CFW-example",
///     vswitchId: defaultAKE43g.sourceVswitchId,
///     strictMode: 0,
///     vpcId: defaultikZ0gD.id,
///     vswitchCidr: "172.16.5.0/24",
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
/// defaultik_z0g_d = alicloud.vpc.Network("defaultikZ0gD",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// defaultp4_o7qi = alicloud.vpc.Switch("defaultp4O7qi",
///     vpc_id=defaultik_z0g_d.id,
///     cidr_block="172.16.6.0/24",
///     vswitch_name=name,
///     zone_id=default.zones[0].id)
/// default2i_r_zp_c = alicloud.vpc.NatGateway("default2iRZpC",
///     eip_bind_mode="MULTI_BINDED",
///     vpc_id=defaultik_z0g_d.id,
///     nat_gateway_name=name,
///     payment_type="PayAsYouGo",
///     vswitch_id=defaultp4_o7qi.id,
///     nat_type="Enhanced",
///     network_type="internet")
/// defaultyi_rwgs = alicloud.ecs.EipAddress("defaultyiRwgs", address_name=name)
/// defaults2_m_tu_o = alicloud.ecs.EipAssociation("defaults2MTuO",
///     instance_id=default2i_r_zp_c.id,
///     allocation_id=defaultyi_rwgs.id,
///     mode="NAT",
///     instance_type="Nat")
/// default_ake43g = alicloud.vpc.SnatEntry("defaultAKE43g",
///     snat_ip=defaultyi_rwgs.ip_address,
///     snat_table_id=default2i_r_zp_c.snat_table_ids,
///     source_vswitch_id=defaultp4_o7qi.id)
/// default_nat_firewall = alicloud.cloudfirewall.NatFirewall("default",
///     nat_gateway_id=default2i_r_zp_c.id,
///     nat_route_entry_lists=[{
///         "nexthop_type": "NatGateway",
///         "route_table_id": defaultik_z0g_d.route_table_id,
///         "nexthop_id": default2i_r_zp_c.id,
///         "destination_cidr": "0.0.0.0/0",
///     }],
///     firewall_switch="close",
///     vswitch_auto="true",
///     status="closed",
///     region_no="cn-shenzhen",
///     lang="zh",
///     proxy_name="CFW-example",
///     vswitch_id=default_ake43g.source_vswitch_id,
///     strict_mode=0,
///     vpc_id=defaultik_z0g_d.id,
///     vswitch_cidr="172.16.5.0/24")
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
///     var defaultikZ0gD = new AliCloud.Vpc.Network("defaultikZ0gD", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var defaultp4O7qi = new AliCloud.Vpc.Switch("defaultp4O7qi", new()
///     {
///         VpcId = defaultikZ0gD.Id,
///         CidrBlock = "172.16.6.0/24",
///         VswitchName = name,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var default2iRZpC = new AliCloud.Vpc.NatGateway("default2iRZpC", new()
///     {
///         EipBindMode = "MULTI_BINDED",
///         VpcId = defaultikZ0gD.Id,
///         NatGatewayName = name,
///         PaymentType = "PayAsYouGo",
///         VswitchId = defaultp4O7qi.Id,
///         NatType = "Enhanced",
///         NetworkType = "internet",
///     });
///
///     var defaultyiRwgs = new AliCloud.Ecs.EipAddress("defaultyiRwgs", new()
///     {
///         AddressName = name,
///     });
///
///     var defaults2MTuO = new AliCloud.Ecs.EipAssociation("defaults2MTuO", new()
///     {
///         InstanceId = default2iRZpC.Id,
///         AllocationId = defaultyiRwgs.Id,
///         Mode = "NAT",
///         InstanceType = "Nat",
///     });
///
///     var defaultAKE43g = new AliCloud.Vpc.SnatEntry("defaultAKE43g", new()
///     {
///         SnatIp = defaultyiRwgs.IpAddress,
///         SnatTableId = default2iRZpC.SnatTableIds,
///         SourceVswitchId = defaultp4O7qi.Id,
///     });
///
///     var defaultNatFirewall = new AliCloud.CloudFirewall.NatFirewall("default", new()
///     {
///         NatGatewayId = default2iRZpC.Id,
///         NatRouteEntryLists = new[]
///         {
///             new AliCloud.CloudFirewall.Inputs.NatFirewallNatRouteEntryListArgs
///             {
///                 NexthopType = "NatGateway",
///                 RouteTableId = defaultikZ0gD.RouteTableId,
///                 NexthopId = default2iRZpC.Id,
///                 DestinationCidr = "0.0.0.0/0",
///             },
///         },
///         FirewallSwitch = "close",
///         VswitchAuto = "true",
///         Status = "closed",
///         RegionNo = "cn-shenzhen",
///         Lang = "zh",
///         ProxyName = "CFW-example",
///         VswitchId = defaultAKE43g.SourceVswitchId,
///         StrictMode = 0,
///         VpcId = defaultikZ0gD.Id,
///         VswitchCidr = "172.16.5.0/24",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		defaultikZ0gD, err := vpc.NewNetwork(ctx, "defaultikZ0gD", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultp4O7qi, err := vpc.NewSwitch(ctx, "defaultp4O7qi", &vpc.SwitchArgs{
/// 			VpcId:       defaultikZ0gD.ID(),
/// 			CidrBlock:   pulumi.String("172.16.6.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default2iRZpC, err := vpc.NewNatGateway(ctx, "default2iRZpC", &vpc.NatGatewayArgs{
/// 			EipBindMode:    pulumi.String("MULTI_BINDED"),
/// 			VpcId:          defaultikZ0gD.ID(),
/// 			NatGatewayName: pulumi.String(name),
/// 			PaymentType:    pulumi.String("PayAsYouGo"),
/// 			VswitchId:      defaultp4O7qi.ID(),
/// 			NatType:        pulumi.String("Enhanced"),
/// 			NetworkType:    pulumi.String("internet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultyiRwgs, err := ecs.NewEipAddress(ctx, "defaultyiRwgs", &ecs.EipAddressArgs{
/// 			AddressName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEipAssociation(ctx, "defaults2MTuO", &ecs.EipAssociationArgs{
/// 			InstanceId:   default2iRZpC.ID(),
/// 			AllocationId: defaultyiRwgs.ID(),
/// 			Mode:         pulumi.String("NAT"),
/// 			InstanceType: pulumi.String("Nat"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAKE43g, err := vpc.NewSnatEntry(ctx, "defaultAKE43g", &vpc.SnatEntryArgs{
/// 			SnatIp:          defaultyiRwgs.IpAddress,
/// 			SnatTableId:     default2iRZpC.SnatTableIds,
/// 			SourceVswitchId: defaultp4O7qi.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewNatFirewall(ctx, "default", &cloudfirewall.NatFirewallArgs{
/// 			NatGatewayId: default2iRZpC.ID(),
/// 			NatRouteEntryLists: cloudfirewall.NatFirewallNatRouteEntryListArray{
/// 				&cloudfirewall.NatFirewallNatRouteEntryListArgs{
/// 					NexthopType:     pulumi.String("NatGateway"),
/// 					RouteTableId:    defaultikZ0gD.RouteTableId,
/// 					NexthopId:       default2iRZpC.ID(),
/// 					DestinationCidr: pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 			FirewallSwitch: pulumi.String("close"),
/// 			VswitchAuto:    pulumi.String("true"),
/// 			Status:         pulumi.String("closed"),
/// 			RegionNo:       pulumi.String("cn-shenzhen"),
/// 			Lang:           pulumi.String("zh"),
/// 			ProxyName:      pulumi.String("CFW-example"),
/// 			VswitchId:      defaultAKE43g.SourceVswitchId,
/// 			StrictMode:     pulumi.Int(0),
/// 			VpcId:          defaultikZ0gD.ID(),
/// 			VswitchCidr:    pulumi.String("172.16.5.0/24"),
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
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ecs.EipAssociation;
/// import com.pulumi.alicloud.ecs.EipAssociationArgs;
/// import com.pulumi.alicloud.vpc.SnatEntry;
/// import com.pulumi.alicloud.vpc.SnatEntryArgs;
/// import com.pulumi.alicloud.cloudfirewall.NatFirewall;
/// import com.pulumi.alicloud.cloudfirewall.NatFirewallArgs;
/// import com.pulumi.alicloud.cloudfirewall.inputs.NatFirewallNatRouteEntryListArgs;
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
///         var defaultikZ0gD = new Network("defaultikZ0gD", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var defaultp4O7qi = new Switch("defaultp4O7qi", SwitchArgs.builder()
///             .vpcId(defaultikZ0gD.id())
///             .cidrBlock("172.16.6.0/24")
///             .vswitchName(name)
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var default2iRZpC = new NatGateway("default2iRZpC", NatGatewayArgs.builder()
///             .eipBindMode("MULTI_BINDED")
///             .vpcId(defaultikZ0gD.id())
///             .natGatewayName(name)
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultp4O7qi.id())
///             .natType("Enhanced")
///             .networkType("internet")
///             .build());
///
///         var defaultyiRwgs = new EipAddress("defaultyiRwgs", EipAddressArgs.builder()
///             .addressName(name)
///             .build());
///
///         var defaults2MTuO = new EipAssociation("defaults2MTuO", EipAssociationArgs.builder()
///             .instanceId(default2iRZpC.id())
///             .allocationId(defaultyiRwgs.id())
///             .mode("NAT")
///             .instanceType("Nat")
///             .build());
///
///         var defaultAKE43g = new SnatEntry("defaultAKE43g", SnatEntryArgs.builder()
///             .snatIp(defaultyiRwgs.ipAddress())
///             .snatTableId(default2iRZpC.snatTableIds())
///             .sourceVswitchId(defaultp4O7qi.id())
///             .build());
///
///         var defaultNatFirewall = new NatFirewall("defaultNatFirewall", NatFirewallArgs.builder()
///             .natGatewayId(default2iRZpC.id())
///             .natRouteEntryLists(NatFirewallNatRouteEntryListArgs.builder()
///                 .nexthopType("NatGateway")
///                 .routeTableId(defaultikZ0gD.routeTableId())
///                 .nexthopId(default2iRZpC.id())
///                 .destinationCidr("0.0.0.0/0")
///                 .build())
///             .firewallSwitch("close")
///             .vswitchAuto("true")
///             .status("closed")
///             .regionNo("cn-shenzhen")
///             .lang("zh")
///             .proxyName("CFW-example")
///             .vswitchId(defaultAKE43g.sourceVswitchId())
///             .strictMode(0)
///             .vpcId(defaultikZ0gD.id())
///             .vswitchCidr("172.16.5.0/24")
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
///   defaultikZ0gD:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   defaultp4O7qi:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultikZ0gD.id}
///       cidrBlock: 172.16.6.0/24
///       vswitchName: ${name}
///       zoneId: ${default.zones[0].id}
///   default2iRZpC:
///     type: alicloud:vpc:NatGateway
///     properties:
///       eipBindMode: MULTI_BINDED
///       vpcId: ${defaultikZ0gD.id}
///       natGatewayName: ${name}
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultp4O7qi.id}
///       natType: Enhanced
///       networkType: internet
///   defaultyiRwgs:
///     type: alicloud:ecs:EipAddress
///     properties:
///       addressName: ${name}
///   defaults2MTuO:
///     type: alicloud:ecs:EipAssociation
///     properties:
///       instanceId: ${default2iRZpC.id}
///       allocationId: ${defaultyiRwgs.id}
///       mode: NAT
///       instanceType: Nat
///   defaultAKE43g:
///     type: alicloud:vpc:SnatEntry
///     properties:
///       snatIp: ${defaultyiRwgs.ipAddress}
///       snatTableId: ${default2iRZpC.snatTableIds}
///       sourceVswitchId: ${defaultp4O7qi.id}
///   defaultNatFirewall:
///     type: alicloud:cloudfirewall:NatFirewall
///     name: default
///     properties:
///       natGatewayId: ${default2iRZpC.id}
///       natRouteEntryLists:
///         - nexthopType: NatGateway
///           routeTableId: ${defaultikZ0gD.routeTableId}
///           nexthopId: ${default2iRZpC.id}
///           destinationCidr: 0.0.0.0/0
///       firewallSwitch: close
///       vswitchAuto: 'true'
///       status: closed
///       regionNo: cn-shenzhen
///       lang: zh
///       proxyName: CFW-example
///       vswitchId: ${defaultAKE43g.sourceVswitchId}
///       strictMode: '0'
///       vpcId: ${defaultikZ0gD.id}
///       vswitchCidr: 172.16.5.0/24
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
/// Cloud Firewall Nat Firewall can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/natFirewall:NatFirewall example <id>
/// ```
class NatFirewall extends pulumi.CustomResource {
  /// Safety protection switch. Value:-**open**: open-**close**: close.
  late final pulumi.Output<String?> firewallSwitch;
  /// Lang.
  late final pulumi.Output<String?> lang;
  /// NAT gateway ID.
  late final pulumi.Output<String> natGatewayId;
  /// The list of routes to be switched by the NAT gateway. See `nat_route_entry_list` below.
  late final pulumi.Output<List<NatFirewallNatRouteEntryList>> natRouteEntryLists;
  /// NAT firewall name.
  late final pulumi.Output<String> proxyName;
  /// Region.
  late final pulumi.Output<String> regionNo;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// Whether strict mode is enabled 1-Enable strict mode 0-Disable strict mode.
  late final pulumi.Output<int?> strictMode;
  /// The ID of the VPC instance.
  late final pulumi.Output<String> vpcId;
  /// Whether to use switch automatic mode. Value: **true**: Use automatic mode: **false**: Use manual mode.
  late final pulumi.Output<String?> vswitchAuto;
  /// The network segment of the virtual switch. Required for Switch automatic mode.
  late final pulumi.Output<String?> vswitchCidr;
  /// The switch ID. Required for switch manual mode.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [NatFirewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatFirewall]. {@macro pulumi_cloudfirewall_nat_firewall_nat_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatFirewall(
    String name, {
    NatFirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/natFirewall:NatFirewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.firewallSwitch = registerOutput<String?>('firewallSwitch');
    this.lang = registerOutput<String?>('lang');
    this.natGatewayId = registerOutput<String>('natGatewayId');
    this.natRouteEntryLists = registerOutput<List<NatFirewallNatRouteEntryList>>('natRouteEntryLists');
    this.proxyName = registerOutput<String>('proxyName');
    this.regionNo = registerOutput<String>('regionNo');
    this.status = registerOutput<String>('status');
    this.strictMode = registerOutput<int?>('strictMode');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchAuto = registerOutput<String?>('vswitchAuto');
    this.vswitchCidr = registerOutput<String?>('vswitchCidr');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }
}
