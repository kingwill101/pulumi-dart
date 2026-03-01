import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_vco_route_args.dart';
import 'gateway_vco_route_state.dart';

/// Provides a VPN Gateway Vco Route resource.
///
/// For information about VPN Gateway Vco Route and how to use it, see [What is Vco Route](https://www.alibabacloud.com/help/zh/virtual-private-cloud/latest/createvcorouteentry).
///
/// > **NOTE:** Available since v1.183.0.
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
/// const defaultInstance = new alicloud.cen.Instance("default", {cenInstanceName: name});
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {
///     cenId: defaultInstance.id,
///     transitRouterDescription: name,
///     transitRouterName: name,
/// });
/// const defaultTransitRouterCidr = new alicloud.cen.TransitRouterCidr("default", {
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     cidr: "192.168.0.0/16",
///     transitRouterCidrName: name,
///     description: name,
///     publishCidrRoute: true,
/// });
/// const _default = alicloud.cen.getTransitRouterAvailableResources({});
/// const defaultCustomerGateway = new alicloud.vpn.CustomerGateway("default", {
///     customerGatewayName: name,
///     ipAddress: "42.104.22.210",
///     asn: "45014",
///     description: name,
/// });
/// const defaultGatewayVpnAttachment = new alicloud.vpn.GatewayVpnAttachment("default", {
///     customerGatewayId: defaultCustomerGateway.id,
///     networkType: "public",
///     localSubnet: "0.0.0.0/0",
///     remoteSubnet: "0.0.0.0/0",
///     effectImmediately: false,
///     ikeConfig: {
///         ikeAuthAlg: "md5",
///         ikeEncAlg: "des",
///         ikeVersion: "ikev2",
///         ikeMode: "main",
///         ikeLifetime: 86400,
///         psk: "tf-examplevpn2",
///         ikePfs: "group1",
///         remoteId: "testbob2",
///         localId: "testalice2",
///     },
///     ipsecConfig: {
///         ipsecPfs: "group5",
///         ipsecEncAlg: "des",
///         ipsecAuthAlg: "md5",
///         ipsecLifetime: 86400,
///     },
///     bgpConfig: {
///         enable: true,
///         localAsn: 45014,
///         tunnelCidr: "169.254.11.0/30",
///         localBgpIp: "169.254.11.1",
///     },
///     healthCheckConfig: {
///         enable: true,
///         sip: "192.168.1.1",
///         dip: "10.0.0.1",
///         interval: 10,
///         retry: 10,
///         policy: "revoke_route",
///     },
///     enableDpd: true,
///     enableNatTraversal: true,
///     vpnAttachmentName: name,
/// });
/// const defaultTransitRouterVpnAttachment = new alicloud.cen.TransitRouterVpnAttachment("default", {
///     autoPublishRouteEnabled: false,
///     transitRouterAttachmentDescription: name,
///     transitRouterAttachmentName: name,
///     cenId: defaultTransitRouter.cenId,
///     transitRouterId: defaultTransitRouterCidr.transitRouterId,
///     vpnId: defaultGatewayVpnAttachment.id,
///     zones: [{
///         zoneId: _default.then(_default => _default.resources?.[0]?.masterZones?.[0]),
///     }],
/// });
/// const defaultGatewayVcoRoute = new alicloud.vpn.GatewayVcoRoute("default", {
///     nextHop: defaultTransitRouterVpnAttachment.vpnId,
///     vpnConnectionId: defaultTransitRouterVpnAttachment.vpnId,
///     weight: 100,
///     routeDest: "192.168.10.0/24",
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
/// default_instance = alicloud.cen.Instance("default", cen_instance_name=name)
/// default_transit_router = alicloud.cen.TransitRouter("default",
///     cen_id=default_instance.id,
///     transit_router_description=name,
///     transit_router_name=name)
/// default_transit_router_cidr = alicloud.cen.TransitRouterCidr("default",
///     transit_router_id=default_transit_router.transit_router_id,
///     cidr="192.168.0.0/16",
///     transit_router_cidr_name=name,
///     description=name,
///     publish_cidr_route=True)
/// default = alicloud.cen.get_transit_router_available_resources()
/// default_customer_gateway = alicloud.vpn.CustomerGateway("default",
///     customer_gateway_name=name,
///     ip_address="42.104.22.210",
///     asn="45014",
///     description=name)
/// default_gateway_vpn_attachment = alicloud.vpn.GatewayVpnAttachment("default",
///     customer_gateway_id=default_customer_gateway.id,
///     network_type="public",
///     local_subnet="0.0.0.0/0",
///     remote_subnet="0.0.0.0/0",
///     effect_immediately=False,
///     ike_config={
///         "ike_auth_alg": "md5",
///         "ike_enc_alg": "des",
///         "ike_version": "ikev2",
///         "ike_mode": "main",
///         "ike_lifetime": 86400,
///         "psk": "tf-examplevpn2",
///         "ike_pfs": "group1",
///         "remote_id": "testbob2",
///         "local_id": "testalice2",
///     },
///     ipsec_config={
///         "ipsec_pfs": "group5",
///         "ipsec_enc_alg": "des",
///         "ipsec_auth_alg": "md5",
///         "ipsec_lifetime": 86400,
///     },
///     bgp_config={
///         "enable": True,
///         "local_asn": 45014,
///         "tunnel_cidr": "169.254.11.0/30",
///         "local_bgp_ip": "169.254.11.1",
///     },
///     health_check_config={
///         "enable": True,
///         "sip": "192.168.1.1",
///         "dip": "10.0.0.1",
///         "interval": 10,
///         "retry": 10,
///         "policy": "revoke_route",
///     },
///     enable_dpd=True,
///     enable_nat_traversal=True,
///     vpn_attachment_name=name)
/// default_transit_router_vpn_attachment = alicloud.cen.TransitRouterVpnAttachment("default",
///     auto_publish_route_enabled=False,
///     transit_router_attachment_description=name,
///     transit_router_attachment_name=name,
///     cen_id=default_transit_router.cen_id,
///     transit_router_id=default_transit_router_cidr.transit_router_id,
///     vpn_id=default_gateway_vpn_attachment.id,
///     zones=[{
///         "zone_id": default.resources[0].master_zones[0],
///     }])
/// default_gateway_vco_route = alicloud.vpn.GatewayVcoRoute("default",
///     next_hop=default_transit_router_vpn_attachment.vpn_id,
///     vpn_connection_id=default_transit_router_vpn_attachment.vpn_id,
///     weight=100,
///     route_dest="192.168.10.0/24")
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
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         CenId = defaultInstance.Id,
///         TransitRouterDescription = name,
///         TransitRouterName = name,
///     });
///
///     var defaultTransitRouterCidr = new AliCloud.Cen.TransitRouterCidr("default", new()
///     {
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         Cidr = "192.168.0.0/16",
///         TransitRouterCidrName = name,
///         Description = name,
///         PublishCidrRoute = true,
///     });
///
///     var @default = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     var defaultCustomerGateway = new AliCloud.Vpn.CustomerGateway("default", new()
///     {
///         CustomerGatewayName = name,
///         IpAddress = "42.104.22.210",
///         Asn = "45014",
///         Description = name,
///     });
///
///     var defaultGatewayVpnAttachment = new AliCloud.Vpn.GatewayVpnAttachment("default", new()
///     {
///         CustomerGatewayId = defaultCustomerGateway.Id,
///         NetworkType = "public",
///         LocalSubnet = "0.0.0.0/0",
///         RemoteSubnet = "0.0.0.0/0",
///         EffectImmediately = false,
///         IkeConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentIkeConfigArgs
///         {
///             IkeAuthAlg = "md5",
///             IkeEncAlg = "des",
///             IkeVersion = "ikev2",
///             IkeMode = "main",
///             IkeLifetime = 86400,
///             Psk = "tf-examplevpn2",
///             IkePfs = "group1",
///             RemoteId = "testbob2",
///             LocalId = "testalice2",
///         },
///         IpsecConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentIpsecConfigArgs
///         {
///             IpsecPfs = "group5",
///             IpsecEncAlg = "des",
///             IpsecAuthAlg = "md5",
///             IpsecLifetime = 86400,
///         },
///         BgpConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentBgpConfigArgs
///         {
///             Enable = true,
///             LocalAsn = 45014,
///             TunnelCidr = "169.254.11.0/30",
///             LocalBgpIp = "169.254.11.1",
///         },
///         HealthCheckConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentHealthCheckConfigArgs
///         {
///             Enable = true,
///             Sip = "192.168.1.1",
///             Dip = "10.0.0.1",
///             Interval = 10,
///             Retry = 10,
///             Policy = "revoke_route",
///         },
///         EnableDpd = true,
///         EnableNatTraversal = true,
///         VpnAttachmentName = name,
///     });
///
///     var defaultTransitRouterVpnAttachment = new AliCloud.Cen.TransitRouterVpnAttachment("default", new()
///     {
///         AutoPublishRouteEnabled = false,
///         TransitRouterAttachmentDescription = name,
///         TransitRouterAttachmentName = name,
///         CenId = defaultTransitRouter.CenId,
///         TransitRouterId = defaultTransitRouterCidr.TransitRouterId,
///         VpnId = defaultGatewayVpnAttachment.Id,
///         Zones = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpnAttachmentZoneArgs
///             {
///                 ZoneId = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[0])),
///             },
///         },
///     });
///
///     var defaultGatewayVcoRoute = new AliCloud.Vpn.GatewayVcoRoute("default", new()
///     {
///         NextHop = defaultTransitRouterVpnAttachment.VpnId,
///         VpnConnectionId = defaultTransitRouterVpnAttachment.VpnId,
///         Weight = 100,
///         RouteDest = "192.168.10.0/24",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
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
/// 		defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// 			CenId:                    defaultInstance.ID(),
/// 			TransitRouterDescription: pulumi.String(name),
/// 			TransitRouterName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterCidr, err := cen.NewTransitRouterCidr(ctx, "default", &cen.TransitRouterCidrArgs{
/// 			TransitRouterId:       defaultTransitRouter.TransitRouterId,
/// 			Cidr:                  pulumi.String("192.168.0.0/16"),
/// 			TransitRouterCidrName: pulumi.String(name),
/// 			Description:           pulumi.String(name),
/// 			PublishCidrRoute:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomerGateway, err := vpn.NewCustomerGateway(ctx, "default", &vpn.CustomerGatewayArgs{
/// 			CustomerGatewayName: pulumi.String(name),
/// 			IpAddress:           pulumi.String("42.104.22.210"),
/// 			Asn:                 pulumi.String("45014"),
/// 			Description:         pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGatewayVpnAttachment, err := vpn.NewGatewayVpnAttachment(ctx, "default", &vpn.GatewayVpnAttachmentArgs{
/// 			CustomerGatewayId: defaultCustomerGateway.ID(),
/// 			NetworkType:       pulumi.String("public"),
/// 			LocalSubnet:       pulumi.String("0.0.0.0/0"),
/// 			RemoteSubnet:      pulumi.String("0.0.0.0/0"),
/// 			EffectImmediately: pulumi.Bool(false),
/// 			IkeConfig: &vpn.GatewayVpnAttachmentIkeConfigArgs{
/// 				IkeAuthAlg:  pulumi.String("md5"),
/// 				IkeEncAlg:   pulumi.String("des"),
/// 				IkeVersion:  pulumi.String("ikev2"),
/// 				IkeMode:     pulumi.String("main"),
/// 				IkeLifetime: pulumi.Int(86400),
/// 				Psk:         pulumi.String("tf-examplevpn2"),
/// 				IkePfs:      pulumi.String("group1"),
/// 				RemoteId:    pulumi.String("testbob2"),
/// 				LocalId:     pulumi.String("testalice2"),
/// 			},
/// 			IpsecConfig: &vpn.GatewayVpnAttachmentIpsecConfigArgs{
/// 				IpsecPfs:      pulumi.String("group5"),
/// 				IpsecEncAlg:   pulumi.String("des"),
/// 				IpsecAuthAlg:  pulumi.String("md5"),
/// 				IpsecLifetime: pulumi.Int(86400),
/// 			},
/// 			BgpConfig: &vpn.GatewayVpnAttachmentBgpConfigArgs{
/// 				Enable:     pulumi.Bool(true),
/// 				LocalAsn:   pulumi.Int(45014),
/// 				TunnelCidr: pulumi.String("169.254.11.0/30"),
/// 				LocalBgpIp: pulumi.String("169.254.11.1"),
/// 			},
/// 			HealthCheckConfig: &vpn.GatewayVpnAttachmentHealthCheckConfigArgs{
/// 				Enable:   pulumi.Bool(true),
/// 				Sip:      pulumi.String("192.168.1.1"),
/// 				Dip:      pulumi.String("10.0.0.1"),
/// 				Interval: pulumi.Int(10),
/// 				Retry:    pulumi.Int(10),
/// 				Policy:   pulumi.String("revoke_route"),
/// 			},
/// 			EnableDpd:          pulumi.Bool(true),
/// 			EnableNatTraversal: pulumi.Bool(true),
/// 			VpnAttachmentName:  pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterVpnAttachment, err := cen.NewTransitRouterVpnAttachment(ctx, "default", &cen.TransitRouterVpnAttachmentArgs{
/// 			AutoPublishRouteEnabled:            pulumi.Bool(false),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 			CenId:                              defaultTransitRouter.CenId,
/// 			TransitRouterId:                    defaultTransitRouterCidr.TransitRouterId,
/// 			VpnId:                              defaultGatewayVpnAttachment.ID(),
/// 			Zones: cen.TransitRouterVpnAttachmentZoneArray{
/// 				&cen.TransitRouterVpnAttachmentZoneArgs{
/// 					ZoneId: pulumi.String(_default.Resources[0].MasterZones[0]),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpn.NewGatewayVcoRoute(ctx, "default", &vpn.GatewayVcoRouteArgs{
/// 			NextHop:         defaultTransitRouterVpnAttachment.VpnId,
/// 			VpnConnectionId: defaultTransitRouterVpnAttachment.VpnId,
/// 			Weight:          pulumi.Int(100),
/// 			RouteDest:       pulumi.String("192.168.10.0/24"),
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterCidr;
/// import com.pulumi.alicloud.cen.TransitRouterCidrArgs;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterAvailableResourcesArgs;
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachment;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachmentArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentIkeConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentIpsecConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentBgpConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentHealthCheckConfigArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpnAttachmentZoneArgs;
/// import com.pulumi.alicloud.vpn.GatewayVcoRoute;
/// import com.pulumi.alicloud.vpn.GatewayVcoRouteArgs;
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(defaultInstance.id())
///             .transitRouterDescription(name)
///             .transitRouterName(name)
///             .build());
///
///         var defaultTransitRouterCidr = new TransitRouterCidr("defaultTransitRouterCidr", TransitRouterCidrArgs.builder()
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .cidr("192.168.0.0/16")
///             .transitRouterCidrName(name)
///             .description(name)
///             .publishCidrRoute(true)
///             .build());
///
///         final var default = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         var defaultCustomerGateway = new CustomerGateway("defaultCustomerGateway", CustomerGatewayArgs.builder()
///             .customerGatewayName(name)
///             .ipAddress("42.104.22.210")
///             .asn("45014")
///             .description(name)
///             .build());
///
///         var defaultGatewayVpnAttachment = new GatewayVpnAttachment("defaultGatewayVpnAttachment", GatewayVpnAttachmentArgs.builder()
///             .customerGatewayId(defaultCustomerGateway.id())
///             .networkType("public")
///             .localSubnet("0.0.0.0/0")
///             .remoteSubnet("0.0.0.0/0")
///             .effectImmediately(false)
///             .ikeConfig(GatewayVpnAttachmentIkeConfigArgs.builder()
///                 .ikeAuthAlg("md5")
///                 .ikeEncAlg("des")
///                 .ikeVersion("ikev2")
///                 .ikeMode("main")
///                 .ikeLifetime(86400)
///                 .psk("tf-examplevpn2")
///                 .ikePfs("group1")
///                 .remoteId("testbob2")
///                 .localId("testalice2")
///                 .build())
///             .ipsecConfig(GatewayVpnAttachmentIpsecConfigArgs.builder()
///                 .ipsecPfs("group5")
///                 .ipsecEncAlg("des")
///                 .ipsecAuthAlg("md5")
///                 .ipsecLifetime(86400)
///                 .build())
///             .bgpConfig(GatewayVpnAttachmentBgpConfigArgs.builder()
///                 .enable(true)
///                 .localAsn(45014)
///                 .tunnelCidr("169.254.11.0/30")
///                 .localBgpIp("169.254.11.1")
///                 .build())
///             .healthCheckConfig(GatewayVpnAttachmentHealthCheckConfigArgs.builder()
///                 .enable(true)
///                 .sip("192.168.1.1")
///                 .dip("10.0.0.1")
///                 .interval(10)
///                 .retry(10)
///                 .policy("revoke_route")
///                 .build())
///             .enableDpd(true)
///             .enableNatTraversal(true)
///             .vpnAttachmentName(name)
///             .build());
///
///         var defaultTransitRouterVpnAttachment = new TransitRouterVpnAttachment("defaultTransitRouterVpnAttachment", TransitRouterVpnAttachmentArgs.builder()
///             .autoPublishRouteEnabled(false)
///             .transitRouterAttachmentDescription(name)
///             .transitRouterAttachmentName(name)
///             .cenId(defaultTransitRouter.cenId())
///             .transitRouterId(defaultTransitRouterCidr.transitRouterId())
///             .vpnId(defaultGatewayVpnAttachment.id())
///             .zones(TransitRouterVpnAttachmentZoneArgs.builder()
///                 .zoneId(default_.resources()[0].masterZones()[0])
///                 .build())
///             .build());
///
///         var defaultGatewayVcoRoute = new GatewayVcoRoute("defaultGatewayVcoRoute", GatewayVcoRouteArgs.builder()
///             .nextHop(defaultTransitRouterVpnAttachment.vpnId())
///             .vpnConnectionId(defaultTransitRouterVpnAttachment.vpnId())
///             .weight(100)
///             .routeDest("192.168.10.0/24")
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
///   defaultInstance:
///     type: alicloud:cen:Instance
///     name: default
///     properties:
///       cenInstanceName: ${name}
///   defaultTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///       transitRouterDescription: ${name}
///       transitRouterName: ${name}
///   defaultTransitRouterCidr:
///     type: alicloud:cen:TransitRouterCidr
///     name: default
///     properties:
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       cidr: 192.168.0.0/16
///       transitRouterCidrName: ${name}
///       description: ${name}
///       publishCidrRoute: true
///   defaultCustomerGateway:
///     type: alicloud:vpn:CustomerGateway
///     name: default
///     properties:
///       customerGatewayName: ${name}
///       ipAddress: 42.104.22.210
///       asn: '45014'
///       description: ${name}
///   defaultGatewayVpnAttachment:
///     type: alicloud:vpn:GatewayVpnAttachment
///     name: default
///     properties:
///       customerGatewayId: ${defaultCustomerGateway.id}
///       networkType: public
///       localSubnet: 0.0.0.0/0
///       remoteSubnet: 0.0.0.0/0
///       effectImmediately: false
///       ikeConfig:
///         ikeAuthAlg: md5
///         ikeEncAlg: des
///         ikeVersion: ikev2
///         ikeMode: main
///         ikeLifetime: 86400
///         psk: tf-examplevpn2
///         ikePfs: group1
///         remoteId: testbob2
///         localId: testalice2
///       ipsecConfig:
///         ipsecPfs: group5
///         ipsecEncAlg: des
///         ipsecAuthAlg: md5
///         ipsecLifetime: 86400
///       bgpConfig:
///         enable: true
///         localAsn: 45014
///         tunnelCidr: 169.254.11.0/30
///         localBgpIp: 169.254.11.1
///       healthCheckConfig:
///         enable: true
///         sip: 192.168.1.1
///         dip: 10.0.0.1
///         interval: 10
///         retry: 10
///         policy: revoke_route
///       enableDpd: true
///       enableNatTraversal: true
///       vpnAttachmentName: ${name}
///   defaultTransitRouterVpnAttachment:
///     type: alicloud:cen:TransitRouterVpnAttachment
///     name: default
///     properties:
///       autoPublishRouteEnabled: false
///       transitRouterAttachmentDescription: ${name}
///       transitRouterAttachmentName: ${name}
///       cenId: ${defaultTransitRouter.cenId}
///       transitRouterId: ${defaultTransitRouterCidr.transitRouterId}
///       vpnId: ${defaultGatewayVpnAttachment.id}
///       zones:
///         - zoneId: ${default.resources[0].masterZones[0]}
///   defaultGatewayVcoRoute:
///     type: alicloud:vpn:GatewayVcoRoute
///     name: default
///     properties:
///       nextHop: ${defaultTransitRouterVpnAttachment.vpnId}
///       vpnConnectionId: ${defaultTransitRouterVpnAttachment.vpnId}
///       weight: '100'
///       routeDest: 192.168.10.0/24
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPN Gateway Vco Route can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/gatewayVcoRoute:GatewayVcoRoute example <vpn_connection_id>:<route_dest>:<next_hop>:<weight>
/// ```
class GatewayVcoRoute extends pulumi.CustomResource {
  /// The next hop of the destination route.
  late final pulumi.Output<String> nextHop;
  /// The tunneling protocol. Set the value to Ipsec, which specifies the IPsec tunneling protocol.
  late final pulumi.Output<String?> overlayMode;
  /// The destination network segment of the destination route.
  late final pulumi.Output<String> routeDest;
  /// The status of the vpn route entry.
  late final pulumi.Output<String> status;
  /// The id of the vpn attachment.
  late final pulumi.Output<String> vpnConnectionId;
  /// The weight value of the destination route. Valid values: `0`, `100`.
  late final pulumi.Output<int> weight;

  /// Creates a new [GatewayVcoRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayVcoRoute]. {@macro pulumi_vpn_gateway_vco_route_gateway_vco_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayVcoRoute(
    String name, {
    GatewayVcoRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/gatewayVcoRoute:GatewayVcoRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.nextHop = registerOutput<String>('nextHop');
    this.overlayMode = registerOutput<String?>('overlayMode');
    this.routeDest = registerOutput<String>('routeDest');
    this.status = registerOutput<String>('status');
    this.vpnConnectionId = registerOutput<String>('vpnConnectionId');
    this.weight = registerOutput<int>('weight');
  }

  /// Gets an existing [GatewayVcoRoute] resource's state with the given [name] and [id].
  static GatewayVcoRoute get(
    String name,
    pulumi.Input<String> id, {
    GatewayVcoRouteState? state,
  }) {
    return GatewayVcoRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayVcoRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/gatewayVcoRoute:GatewayVcoRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.nextHop = registerOutput<String>('nextHop');
    this.overlayMode = registerOutput<String?>('overlayMode');
    this.routeDest = registerOutput<String>('routeDest');
    this.status = registerOutput<String>('status');
    this.vpnConnectionId = registerOutput<String>('vpnConnectionId');
    this.weight = registerOutput<int>('weight');
  }
}
