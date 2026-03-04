import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_vpn_attachment_args.dart';
import 'transit_router_vpn_attachment_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Vpn Attachment resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Vpn Attachment and how to use it, see [What is Transit Router Vpn Attachment](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createtransitroutervpnattachment).
///
/// &gt; **NOTE:** Available since v1.183.0.
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
/// const _default = alicloud.cen.getTransitRouterAvailableResources({});
/// const example = new alicloud.cen.Instance("example", {cenInstanceName: name});
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     cenId: example.id,
///     transitRouterDescription: name,
///     transitRouterName: name,
/// });
/// const exampleCustomerGateway = new alicloud.vpn.CustomerGateway("example", {
///     customerGatewayName: name,
///     ipAddress: "42.104.22.210",
///     asn: "45014",
///     description: name,
/// });
/// const exampleGatewayVpnAttachment = new alicloud.vpn.GatewayVpnAttachment("example", {
///     customerGatewayId: exampleCustomerGateway.id,
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
///         remoteId: "examplebob2",
///         localId: "examplealice2",
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
/// const exampleTransitRouterCidr = new alicloud.cen.TransitRouterCidr("example", {
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     cidr: "192.168.0.0/16",
///     transitRouterCidrName: name,
///     description: name,
///     publishCidrRoute: true,
/// });
/// const exampleTransitRouterVpnAttachment = new alicloud.cen.TransitRouterVpnAttachment("example", {
///     autoPublishRouteEnabled: false,
///     transitRouterAttachmentDescription: name,
///     transitRouterAttachmentName: name,
///     cenId: exampleTransitRouter.cenId,
///     transitRouterId: exampleTransitRouterCidr.transitRouterId,
///     vpnId: exampleGatewayVpnAttachment.id,
///     zones: [{
///         zoneId: _default.then(_default => _default.resources?.[0]?.masterZones?.[0]),
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
/// default = alicloud.cen.get_transit_router_available_resources()
/// example = alicloud.cen.Instance("example", cen_instance_name=name)
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     cen_id=example.id,
///     transit_router_description=name,
///     transit_router_name=name)
/// example_customer_gateway = alicloud.vpn.CustomerGateway("example",
///     customer_gateway_name=name,
///     ip_address="42.104.22.210",
///     asn="45014",
///     description=name)
/// example_gateway_vpn_attachment = alicloud.vpn.GatewayVpnAttachment("example",
///     customer_gateway_id=example_customer_gateway.id,
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
///         "remote_id": "examplebob2",
///         "local_id": "examplealice2",
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
/// example_transit_router_cidr = alicloud.cen.TransitRouterCidr("example",
///     transit_router_id=example_transit_router.transit_router_id,
///     cidr="192.168.0.0/16",
///     transit_router_cidr_name=name,
///     description=name,
///     publish_cidr_route=True)
/// example_transit_router_vpn_attachment = alicloud.cen.TransitRouterVpnAttachment("example",
///     auto_publish_route_enabled=False,
///     transit_router_attachment_description=name,
///     transit_router_attachment_name=name,
///     cen_id=example_transit_router.cen_id,
///     transit_router_id=example_transit_router_cidr.transit_router_id,
///     vpn_id=example_gateway_vpn_attachment.id,
///     zones=[{
///         "zone_id": default.resources[0].master_zones[0],
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
///     var @default = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         CenId = example.Id,
///         TransitRouterDescription = name,
///         TransitRouterName = name,
///     });
///
///     var exampleCustomerGateway = new AliCloud.Vpn.CustomerGateway("example", new()
///     {
///         CustomerGatewayName = name,
///         IpAddress = "42.104.22.210",
///         Asn = "45014",
///         Description = name,
///     });
///
///     var exampleGatewayVpnAttachment = new AliCloud.Vpn.GatewayVpnAttachment("example", new()
///     {
///         CustomerGatewayId = exampleCustomerGateway.Id,
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
///             RemoteId = "examplebob2",
///             LocalId = "examplealice2",
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
///     var exampleTransitRouterCidr = new AliCloud.Cen.TransitRouterCidr("example", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         Cidr = "192.168.0.0/16",
///         TransitRouterCidrName = name,
///         Description = name,
///         PublishCidrRoute = true,
///     });
///
///     var exampleTransitRouterVpnAttachment = new AliCloud.Cen.TransitRouterVpnAttachment("example", new()
///     {
///         AutoPublishRouteEnabled = false,
///         TransitRouterAttachmentDescription = name,
///         TransitRouterAttachmentName = name,
///         CenId = exampleTransitRouter.CenId,
///         TransitRouterId = exampleTransitRouterCidr.TransitRouterId,
///         VpnId = exampleGatewayVpnAttachment.Id,
///         Zones = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpnAttachmentZoneArgs
///             {
///                 ZoneId = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[0])),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
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
/// 		_default, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouter, err := cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			CenId:                    example.ID(),
/// 			TransitRouterDescription: pulumi.String(name),
/// 			TransitRouterName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCustomerGateway, err := vpn.NewCustomerGateway(ctx, "example", &vpn.CustomerGatewayArgs{
/// 			CustomerGatewayName: pulumi.String(name),
/// 			IpAddress:           pulumi.String("42.104.22.210"),
/// 			Asn:                 pulumi.String("45014"),
/// 			Description:         pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGatewayVpnAttachment, err := vpn.NewGatewayVpnAttachment(ctx, "example", &vpn.GatewayVpnAttachmentArgs{
/// 			CustomerGatewayId: exampleCustomerGateway.ID(),
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
/// 				RemoteId:    pulumi.String("examplebob2"),
/// 				LocalId:     pulumi.String("examplealice2"),
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
/// 		exampleTransitRouterCidr, err := cen.NewTransitRouterCidr(ctx, "example", &cen.TransitRouterCidrArgs{
/// 			TransitRouterId:       exampleTransitRouter.TransitRouterId,
/// 			Cidr:                  pulumi.String("192.168.0.0/16"),
/// 			TransitRouterCidrName: pulumi.String(name),
/// 			Description:           pulumi.String(name),
/// 			PublishCidrRoute:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterVpnAttachment(ctx, "example", &cen.TransitRouterVpnAttachmentArgs{
/// 			AutoPublishRouteEnabled:            pulumi.Bool(false),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 			CenId:                              exampleTransitRouter.CenId,
/// 			TransitRouterId:                    exampleTransitRouterCidr.TransitRouterId,
/// 			VpnId:                              exampleGatewayVpnAttachment.ID(),
/// 			Zones: cen.TransitRouterVpnAttachmentZoneArray{
/// 				&cen.TransitRouterVpnAttachmentZoneArgs{
/// 					ZoneId: pulumi.String(_default.Resources[0].MasterZones[0]),
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
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterAvailableResourcesArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachment;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachmentArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentIkeConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentIpsecConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentBgpConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentHealthCheckConfigArgs;
/// import com.pulumi.alicloud.cen.TransitRouterCidr;
/// import com.pulumi.alicloud.cen.TransitRouterCidrArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpnAttachmentZoneArgs;
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
///         final var default = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .cenId(example.id())
///             .transitRouterDescription(name)
///             .transitRouterName(name)
///             .build());
///
///         var exampleCustomerGateway = new CustomerGateway("exampleCustomerGateway", CustomerGatewayArgs.builder()
///             .customerGatewayName(name)
///             .ipAddress("42.104.22.210")
///             .asn("45014")
///             .description(name)
///             .build());
///
///         var exampleGatewayVpnAttachment = new GatewayVpnAttachment("exampleGatewayVpnAttachment", GatewayVpnAttachmentArgs.builder()
///             .customerGatewayId(exampleCustomerGateway.id())
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
///                 .remoteId("examplebob2")
///                 .localId("examplealice2")
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
///         var exampleTransitRouterCidr = new TransitRouterCidr("exampleTransitRouterCidr", TransitRouterCidrArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .cidr("192.168.0.0/16")
///             .transitRouterCidrName(name)
///             .description(name)
///             .publishCidrRoute(true)
///             .build());
///
///         var exampleTransitRouterVpnAttachment = new TransitRouterVpnAttachment("exampleTransitRouterVpnAttachment", TransitRouterVpnAttachmentArgs.builder()
///             .autoPublishRouteEnabled(false)
///             .transitRouterAttachmentDescription(name)
///             .transitRouterAttachmentName(name)
///             .cenId(exampleTransitRouter.cenId())
///             .transitRouterId(exampleTransitRouterCidr.transitRouterId())
///             .vpnId(exampleGatewayVpnAttachment.id())
///             .zones(TransitRouterVpnAttachmentZoneArgs.builder()
///                 .zoneId(default_.resources()[0].masterZones()[0])
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
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       cenId: ${example.id}
///       transitRouterDescription: ${name}
///       transitRouterName: ${name}
///   exampleCustomerGateway:
///     type: alicloud:vpn:CustomerGateway
///     name: example
///     properties:
///       customerGatewayName: ${name}
///       ipAddress: 42.104.22.210
///       asn: '45014'
///       description: ${name}
///   exampleGatewayVpnAttachment:
///     type: alicloud:vpn:GatewayVpnAttachment
///     name: example
///     properties:
///       customerGatewayId: ${exampleCustomerGateway.id}
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
///         remoteId: examplebob2
///         localId: examplealice2
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
///   exampleTransitRouterCidr:
///     type: alicloud:cen:TransitRouterCidr
///     name: example
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       cidr: 192.168.0.0/16
///       transitRouterCidrName: ${name}
///       description: ${name}
///       publishCidrRoute: true
///   exampleTransitRouterVpnAttachment:
///     type: alicloud:cen:TransitRouterVpnAttachment
///     name: example
///     properties:
///       autoPublishRouteEnabled: false
///       transitRouterAttachmentDescription: ${name}
///       transitRouterAttachmentName: ${name}
///       cenId: ${exampleTransitRouter.cenId}
///       transitRouterId: ${exampleTransitRouterCidr.transitRouterId}
///       vpnId: ${exampleGatewayVpnAttachment.id}
///       zones:
///         - zoneId: ${default.resources[0].masterZones[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
/// ```
///
///
/// Dual Tunnel Mode Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.getAccount({});
/// const defaultbpR5Uk = new alicloud.cen.Instance("defaultbpR5Uk", {cenInstanceName: "example-vpn-attachment"});
/// const defaultM8Zo6H = new alicloud.cen.TransitRouter("defaultM8Zo6H", {cenId: defaultbpR5Uk.id});
/// const defaultuUtyCv = new alicloud.cen.TransitRouterCidr("defaultuUtyCv", {
///     cidr: "192.168.10.0/24",
///     transitRouterId: defaultM8Zo6H.transitRouterId,
/// });
/// const defaultMeoCIz = new alicloud.vpn.CustomerGateway("defaultMeoCIz", {
///     ipAddress: "0.0.0.0",
///     customerGatewayName: "example-vpn-attachment",
/// }, {
///     dependsOn: [defaultuUtyCv],
/// });
/// const defaultGetTransitRouterService = alicloud.cen.getTransitRouterService({
///     enable: "On",
/// });
/// const defaultvrPzdh = new alicloud.vpn.GatewayVpnAttachment("defaultvrPzdh", {
///     networkType: "public",
///     localSubnet: "0.0.0.0/0",
///     enableTunnelsBgp: false,
///     vpnAttachmentName: name,
///     tunnelOptionsSpecifications: [
///         {
///             customerGatewayId: defaultMeoCIz.id,
///             enableDpd: true,
///             enableNatTraversal: true,
///             tunnelIndex: 1,
///             tunnelIkeConfig: {
///                 remoteId: "2.2.2.2",
///                 ikeEncAlg: "aes",
///                 ikeMode: "main",
///                 ikeVersion: "ikev1",
///                 localId: "1.1.1.1",
///                 ikeAuthAlg: "md5",
///                 ikeLifetime: 86100,
///                 ikePfs: "group2",
///                 psk: "12345678",
///             },
///             tunnelIpsecConfig: {
///                 ipsecAuthAlg: "md5",
///                 ipsecEncAlg: "aes",
///                 ipsecLifetime: 86200,
///                 ipsecPfs: "group5",
///             },
///         },
///         {
///             enableNatTraversal: true,
///             tunnelIndex: 2,
///             tunnelIkeConfig: {
///                 localId: "4.4.4.4",
///                 remoteId: "5.5.5.5",
///                 ikeLifetime: 86400,
///                 ikePfs: "group5",
///                 ikeMode: "main",
///                 ikeVersion: "ikev2",
///                 psk: "32333442",
///                 ikeAuthAlg: "md5",
///                 ikeEncAlg: "aes",
///             },
///             tunnelIpsecConfig: {
///                 ipsecEncAlg: "aes",
///                 ipsecLifetime: 86400,
///                 ipsecPfs: "group5",
///                 ipsecAuthAlg: "sha256",
///             },
///             customerGatewayId: defaultMeoCIz.id,
///             enableDpd: true,
///         },
///     ],
///     remoteSubnet: "0.0.0.0/0",
/// });
/// const defaultTransitRouterVpnAttachment = new alicloud.cen.TransitRouterVpnAttachment("default", {
///     transitRouterId: defaultM8Zo6H.transitRouterId,
///     vpnId: defaultvrPzdh.id,
///     autoPublishRouteEnabled: false,
///     chargeType: "POSTPAY",
///     transitRouterAttachmentName: "example-vpn-attachment",
///     vpnOwnerId: _default.then(_default => _default.id),
///     cenId: defaultM8Zo6H.cenId,
///     transitRouterAttachmentDescription: "example-vpn-attachment",
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
/// default = alicloud.get_account()
/// defaultbp_r5_uk = alicloud.cen.Instance("defaultbpR5Uk", cen_instance_name="example-vpn-attachment")
/// default_m8_zo6_h = alicloud.cen.TransitRouter("defaultM8Zo6H", cen_id=defaultbp_r5_uk.id)
/// defaultu_uty_cv = alicloud.cen.TransitRouterCidr("defaultuUtyCv",
///     cidr="192.168.10.0/24",
///     transit_router_id=default_m8_zo6_h.transit_router_id)
/// default_meo_c_iz = alicloud.vpn.CustomerGateway("defaultMeoCIz",
///     ip_address="0.0.0.0",
///     customer_gateway_name="example-vpn-attachment",
///     opts = pulumi.ResourceOptions(depends_on=[defaultu_uty_cv]))
/// default_get_transit_router_service = alicloud.cen.get_transit_router_service(enable="On")
/// defaultvr_pzdh = alicloud.vpn.GatewayVpnAttachment("defaultvrPzdh",
///     network_type="public",
///     local_subnet="0.0.0.0/0",
///     enable_tunnels_bgp=False,
///     vpn_attachment_name=name,
///     tunnel_options_specifications=[
///         {
///             "customer_gateway_id": default_meo_c_iz.id,
///             "enable_dpd": True,
///             "enable_nat_traversal": True,
///             "tunnel_index": 1,
///             "tunnel_ike_config": {
///                 "remote_id": "2.2.2.2",
///                 "ike_enc_alg": "aes",
///                 "ike_mode": "main",
///                 "ike_version": "ikev1",
///                 "local_id": "1.1.1.1",
///                 "ike_auth_alg": "md5",
///                 "ike_lifetime": 86100,
///                 "ike_pfs": "group2",
///                 "psk": "12345678",
///             },
///             "tunnel_ipsec_config": {
///                 "ipsec_auth_alg": "md5",
///                 "ipsec_enc_alg": "aes",
///                 "ipsec_lifetime": 86200,
///                 "ipsec_pfs": "group5",
///             },
///         },
///         {
///             "enable_nat_traversal": True,
///             "tunnel_index": 2,
///             "tunnel_ike_config": {
///                 "local_id": "4.4.4.4",
///                 "remote_id": "5.5.5.5",
///                 "ike_lifetime": 86400,
///                 "ike_pfs": "group5",
///                 "ike_mode": "main",
///                 "ike_version": "ikev2",
///                 "psk": "32333442",
///                 "ike_auth_alg": "md5",
///                 "ike_enc_alg": "aes",
///             },
///             "tunnel_ipsec_config": {
///                 "ipsec_enc_alg": "aes",
///                 "ipsec_lifetime": 86400,
///                 "ipsec_pfs": "group5",
///                 "ipsec_auth_alg": "sha256",
///             },
///             "customer_gateway_id": default_meo_c_iz.id,
///             "enable_dpd": True,
///         },
///     ],
///     remote_subnet="0.0.0.0/0")
/// default_transit_router_vpn_attachment = alicloud.cen.TransitRouterVpnAttachment("default",
///     transit_router_id=default_m8_zo6_h.transit_router_id,
///     vpn_id=defaultvr_pzdh.id,
///     auto_publish_route_enabled=False,
///     charge_type="POSTPAY",
///     transit_router_attachment_name="example-vpn-attachment",
///     vpn_owner_id=default.id,
///     cen_id=default_m8_zo6_h.cen_id,
///     transit_router_attachment_description="example-vpn-attachment")
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
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultbpR5Uk = new AliCloud.Cen.Instance("defaultbpR5Uk", new()
///     {
///         CenInstanceName = "example-vpn-attachment",
///     });
///
///     var defaultM8Zo6H = new AliCloud.Cen.TransitRouter("defaultM8Zo6H", new()
///     {
///         CenId = defaultbpR5Uk.Id,
///     });
///
///     var defaultuUtyCv = new AliCloud.Cen.TransitRouterCidr("defaultuUtyCv", new()
///     {
///         Cidr = "192.168.10.0/24",
///         TransitRouterId = defaultM8Zo6H.TransitRouterId,
///     });
///
///     var defaultMeoCIz = new AliCloud.Vpn.CustomerGateway("defaultMeoCIz", new()
///     {
///         IpAddress = "0.0.0.0",
///         CustomerGatewayName = "example-vpn-attachment",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultuUtyCv,
///         },
///     });
///
///     var defaultGetTransitRouterService = AliCloud.Cen.GetTransitRouterService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
///     var defaultvrPzdh = new AliCloud.Vpn.GatewayVpnAttachment("defaultvrPzdh", new()
///     {
///         NetworkType = "public",
///         LocalSubnet = "0.0.0.0/0",
///         EnableTunnelsBgp = false,
///         VpnAttachmentName = name,
///         TunnelOptionsSpecifications = new[]
///         {
///             new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs
///             {
///                 CustomerGatewayId = defaultMeoCIz.Id,
///                 EnableDpd = true,
///                 EnableNatTraversal = true,
///                 TunnelIndex = 1,
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     RemoteId = "2.2.2.2",
///                     IkeEncAlg = "aes",
///                     IkeMode = "main",
///                     IkeVersion = "ikev1",
///                     LocalId = "1.1.1.1",
///                     IkeAuthAlg = "md5",
///                     IkeLifetime = 86100,
///                     IkePfs = "group2",
///                     Psk = "12345678",
///                 },
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecAuthAlg = "md5",
///                     IpsecEncAlg = "aes",
///                     IpsecLifetime = 86200,
///                     IpsecPfs = "group5",
///                 },
///             },
///             new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs
///             {
///                 EnableNatTraversal = true,
///                 TunnelIndex = 2,
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     LocalId = "4.4.4.4",
///                     RemoteId = "5.5.5.5",
///                     IkeLifetime = 86400,
///                     IkePfs = "group5",
///                     IkeMode = "main",
///                     IkeVersion = "ikev2",
///                     Psk = "32333442",
///                     IkeAuthAlg = "md5",
///                     IkeEncAlg = "aes",
///                 },
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecEncAlg = "aes",
///                     IpsecLifetime = 86400,
///                     IpsecPfs = "group5",
///                     IpsecAuthAlg = "sha256",
///                 },
///                 CustomerGatewayId = defaultMeoCIz.Id,
///                 EnableDpd = true,
///             },
///         },
///         RemoteSubnet = "0.0.0.0/0",
///     });
///
///     var defaultTransitRouterVpnAttachment = new AliCloud.Cen.TransitRouterVpnAttachment("default", new()
///     {
///         TransitRouterId = defaultM8Zo6H.TransitRouterId,
///         VpnId = defaultvrPzdh.Id,
///         AutoPublishRouteEnabled = false,
///         ChargeType = "POSTPAY",
///         TransitRouterAttachmentName = "example-vpn-attachment",
///         VpnOwnerId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         CenId = defaultM8Zo6H.CenId,
///         TransitRouterAttachmentDescription = "example-vpn-attachment",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
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
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultbpR5Uk, err := cen.NewInstance(ctx, "defaultbpR5Uk", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("example-vpn-attachment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultM8Zo6H, err := cen.NewTransitRouter(ctx, "defaultM8Zo6H", &cen.TransitRouterArgs{
/// 			CenId: defaultbpR5Uk.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultuUtyCv, err := cen.NewTransitRouterCidr(ctx, "defaultuUtyCv", &cen.TransitRouterCidrArgs{
/// 			Cidr:            pulumi.String("192.168.10.0/24"),
/// 			TransitRouterId: defaultM8Zo6H.TransitRouterId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMeoCIz, err := vpn.NewCustomerGateway(ctx, "defaultMeoCIz", &vpn.CustomerGatewayArgs{
/// 			IpAddress:           pulumi.String("0.0.0.0"),
/// 			CustomerGatewayName: pulumi.String("example-vpn-attachment"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultuUtyCv,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.GetTransitRouterService(ctx, &cen.GetTransitRouterServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultvrPzdh, err := vpn.NewGatewayVpnAttachment(ctx, "defaultvrPzdh", &vpn.GatewayVpnAttachmentArgs{
/// 			NetworkType:       pulumi.String("public"),
/// 			LocalSubnet:       pulumi.String("0.0.0.0/0"),
/// 			EnableTunnelsBgp:  pulumi.Bool(false),
/// 			VpnAttachmentName: pulumi.String(name),
/// 			TunnelOptionsSpecifications: vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArray{
/// 				&vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArgs{
/// 					CustomerGatewayId:  defaultMeoCIz.ID(),
/// 					EnableDpd:          pulumi.Bool(true),
/// 					EnableNatTraversal: pulumi.Bool(true),
/// 					TunnelIndex:        pulumi.Int(1),
/// 					TunnelIkeConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						RemoteId:    pulumi.String("2.2.2.2"),
/// 						IkeEncAlg:   pulumi.String("aes"),
/// 						IkeMode:     pulumi.String("main"),
/// 						IkeVersion:  pulumi.String("ikev1"),
/// 						LocalId:     pulumi.String("1.1.1.1"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeLifetime: pulumi.Int(86100),
/// 						IkePfs:      pulumi.String("group2"),
/// 						Psk:         pulumi.String("12345678"),
/// 					},
/// 					TunnelIpsecConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecAuthAlg:  pulumi.String("md5"),
/// 						IpsecEncAlg:   pulumi.String("aes"),
/// 						IpsecLifetime: pulumi.Int(86200),
/// 						IpsecPfs:      pulumi.String("group5"),
/// 					},
/// 				},
/// 				&vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArgs{
/// 					EnableNatTraversal: pulumi.Bool(true),
/// 					TunnelIndex:        pulumi.Int(2),
/// 					TunnelIkeConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						LocalId:     pulumi.String("4.4.4.4"),
/// 						RemoteId:    pulumi.String("5.5.5.5"),
/// 						IkeLifetime: pulumi.Int(86400),
/// 						IkePfs:      pulumi.String("group5"),
/// 						IkeMode:     pulumi.String("main"),
/// 						IkeVersion:  pulumi.String("ikev2"),
/// 						Psk:         pulumi.String("32333442"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeEncAlg:   pulumi.String("aes"),
/// 					},
/// 					TunnelIpsecConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecEncAlg:   pulumi.String("aes"),
/// 						IpsecLifetime: pulumi.Int(86400),
/// 						IpsecPfs:      pulumi.String("group5"),
/// 						IpsecAuthAlg:  pulumi.String("sha256"),
/// 					},
/// 					CustomerGatewayId: defaultMeoCIz.ID(),
/// 					EnableDpd:         pulumi.Bool(true),
/// 				},
/// 			},
/// 			RemoteSubnet: pulumi.String("0.0.0.0/0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterVpnAttachment(ctx, "default", &cen.TransitRouterVpnAttachmentArgs{
/// 			TransitRouterId:                    defaultM8Zo6H.TransitRouterId,
/// 			VpnId:                              defaultvrPzdh.ID(),
/// 			AutoPublishRouteEnabled:            pulumi.Bool(false),
/// 			ChargeType:                         pulumi.String("POSTPAY"),
/// 			TransitRouterAttachmentName:        pulumi.String("example-vpn-attachment"),
/// 			VpnOwnerId:                         pulumi.String(_default.Id),
/// 			CenId:                              defaultM8Zo6H.CenId,
/// 			TransitRouterAttachmentDescription: pulumi.String("example-vpn-attachment"),
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterCidr;
/// import com.pulumi.alicloud.cen.TransitRouterCidrArgs;
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterServiceArgs;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachment;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachmentArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachmentArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultbpR5Uk = new Instance("defaultbpR5Uk", InstanceArgs.builder()
///             .cenInstanceName("example-vpn-attachment")
///             .build());
///
///         var defaultM8Zo6H = new TransitRouter("defaultM8Zo6H", TransitRouterArgs.builder()
///             .cenId(defaultbpR5Uk.id())
///             .build());
///
///         var defaultuUtyCv = new TransitRouterCidr("defaultuUtyCv", TransitRouterCidrArgs.builder()
///             .cidr("192.168.10.0/24")
///             .transitRouterId(defaultM8Zo6H.transitRouterId())
///             .build());
///
///         var defaultMeoCIz = new CustomerGateway("defaultMeoCIz", CustomerGatewayArgs.builder()
///             .ipAddress("0.0.0.0")
///             .customerGatewayName("example-vpn-attachment")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultuUtyCv)
///                 .build());
///
///         final var defaultGetTransitRouterService = CenFunctions.getTransitRouterService(GetTransitRouterServiceArgs.builder()
///             .enable("On")
///             .build());
///
///         var defaultvrPzdh = new GatewayVpnAttachment("defaultvrPzdh", GatewayVpnAttachmentArgs.builder()
///             .networkType("public")
///             .localSubnet("0.0.0.0/0")
///             .enableTunnelsBgp(false)
///             .vpnAttachmentName(name)
///             .tunnelOptionsSpecifications(
///                 GatewayVpnAttachmentTunnelOptionsSpecificationArgs.builder()
///                     .customerGatewayId(defaultMeoCIz.id())
///                     .enableDpd(true)
///                     .enableNatTraversal(true)
///                     .tunnelIndex(1)
///                     .tunnelIkeConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .remoteId("2.2.2.2")
///                         .ikeEncAlg("aes")
///                         .ikeMode("main")
///                         .ikeVersion("ikev1")
///                         .localId("1.1.1.1")
///                         .ikeAuthAlg("md5")
///                         .ikeLifetime(86100)
///                         .ikePfs("group2")
///                         .psk("12345678")
///                         .build())
///                     .tunnelIpsecConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecAuthAlg("md5")
///                         .ipsecEncAlg("aes")
///                         .ipsecLifetime(86200)
///                         .ipsecPfs("group5")
///                         .build())
///                     .build(),
///                 GatewayVpnAttachmentTunnelOptionsSpecificationArgs.builder()
///                     .enableNatTraversal(true)
///                     .tunnelIndex(2)
///                     .tunnelIkeConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .localId("4.4.4.4")
///                         .remoteId("5.5.5.5")
///                         .ikeLifetime(86400)
///                         .ikePfs("group5")
///                         .ikeMode("main")
///                         .ikeVersion("ikev2")
///                         .psk("32333442")
///                         .ikeAuthAlg("md5")
///                         .ikeEncAlg("aes")
///                         .build())
///                     .tunnelIpsecConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecEncAlg("aes")
///                         .ipsecLifetime(86400)
///                         .ipsecPfs("group5")
///                         .ipsecAuthAlg("sha256")
///                         .build())
///                     .customerGatewayId(defaultMeoCIz.id())
///                     .enableDpd(true)
///                     .build())
///             .remoteSubnet("0.0.0.0/0")
///             .build());
///
///         var defaultTransitRouterVpnAttachment = new TransitRouterVpnAttachment("defaultTransitRouterVpnAttachment", TransitRouterVpnAttachmentArgs.builder()
///             .transitRouterId(defaultM8Zo6H.transitRouterId())
///             .vpnId(defaultvrPzdh.id())
///             .autoPublishRouteEnabled(false)
///             .chargeType("POSTPAY")
///             .transitRouterAttachmentName("example-vpn-attachment")
///             .vpnOwnerId(default_.id())
///             .cenId(defaultM8Zo6H.cenId())
///             .transitRouterAttachmentDescription("example-vpn-attachment")
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
///   defaultbpR5Uk:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: example-vpn-attachment
///   defaultM8Zo6H:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${defaultbpR5Uk.id}
///   defaultuUtyCv:
///     type: alicloud:cen:TransitRouterCidr
///     properties:
///       cidr: 192.168.10.0/24
///       transitRouterId: ${defaultM8Zo6H.transitRouterId}
///   defaultMeoCIz:
///     type: alicloud:vpn:CustomerGateway
///     properties:
///       ipAddress: 0.0.0.0
///       customerGatewayName: example-vpn-attachment
///     options:
///       dependsOn:
///         - ${defaultuUtyCv}
///   defaultvrPzdh:
///     type: alicloud:vpn:GatewayVpnAttachment
///     properties:
///       networkType: public
///       localSubnet: 0.0.0.0/0
///       enableTunnelsBgp: 'false'
///       vpnAttachmentName: ${name}
///       tunnelOptionsSpecifications:
///         - customerGatewayId: ${defaultMeoCIz.id}
///           enableDpd: 'true'
///           enableNatTraversal: 'true'
///           tunnelIndex: '1'
///           tunnelIkeConfig:
///             remoteId: 2.2.2.2
///             ikeEncAlg: aes
///             ikeMode: main
///             ikeVersion: ikev1
///             localId: 1.1.1.1
///             ikeAuthAlg: md5
///             ikeLifetime: '86100'
///             ikePfs: group2
///             psk: '12345678'
///           tunnelIpsecConfig:
///             ipsecAuthAlg: md5
///             ipsecEncAlg: aes
///             ipsecLifetime: '86200'
///             ipsecPfs: group5
///         - enableNatTraversal: 'true'
///           tunnelIndex: '2'
///           tunnelIkeConfig:
///             localId: 4.4.4.4
///             remoteId: 5.5.5.5
///             ikeLifetime: '86400'
///             ikePfs: group5
///             ikeMode: main
///             ikeVersion: ikev2
///             psk: '32333442'
///             ikeAuthAlg: md5
///             ikeEncAlg: aes
///           tunnelIpsecConfig:
///             ipsecEncAlg: aes
///             ipsecLifetime: '86400'
///             ipsecPfs: group5
///             ipsecAuthAlg: sha256
///           customerGatewayId: ${defaultMeoCIz.id}
///           enableDpd: 'true'
///       remoteSubnet: 0.0.0.0/0
///   defaultTransitRouterVpnAttachment:
///     type: alicloud:cen:TransitRouterVpnAttachment
///     name: default
///     properties:
///       transitRouterId: ${defaultM8Zo6H.transitRouterId}
///       vpnId: ${defaultvrPzdh.id}
///       autoPublishRouteEnabled: 'false'
///       chargeType: POSTPAY
///       transitRouterAttachmentName: example-vpn-attachment
///       vpnOwnerId: ${default.id}
///       cenId: ${defaultM8Zo6H.cenId}
///       transitRouterAttachmentDescription: example-vpn-attachment
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetTransitRouterService:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterService
///       arguments:
///         enable: On
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router Vpn Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterVpnAttachment:TransitRouterVpnAttachment example <id>
/// ```
class TransitRouterVpnAttachment extends pulumi.CustomResource {
  /// Specifies whether to allow the transit router to automatically advertise routes to the IPsec-VPN attachment. Valid values:
  late final pulumi.Output<bool?> autoPublishRouteEnabled;

  /// The ID of the Cloud Enterprise Network (CEN) instance.
  late final pulumi.Output<String> cenId;

  /// The billing method.
  /// Set the value to `POSTPAY`, which is the default value and specifies the pay-as-you-go billing method.
  late final pulumi.Output<String> chargeType;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The ID of the region where the transit router is deployed.
  late final pulumi.Output<String> regionId;

  /// Status
  late final pulumi.Output<String> status;

  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// The new description of the VPN attachment.
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> transitRouterAttachmentDescription;

  /// The name of the VPN attachment.
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (\_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String?> transitRouterAttachmentName;

  /// The ID of the transit router.
  late final pulumi.Output<String?> transitRouterId;

  /// The ID of the IPsec-VPN attachment.
  late final pulumi.Output<String> vpnId;

  /// The ID of the Alibaba Cloud account to which the IPsec-VPN connection belongs.
  ///
  /// - If you do not set this parameter, the ID of the current Alibaba Cloud account is used.
  /// - You must set VpnOwnerId if you want to connect the transit router to an IPsec-VPN connection that belongs to another Alibaba Cloud account.
  late final pulumi.Output<String> vpnOwnerId;

  /// The Zone ID in the current region.
  /// System will create resources under the Zone that you specify.
  /// Left blank if associated IPSec connection is in dual-tunnel mode. See `zone` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> zones;

  /// Creates a new [TransitRouterVpnAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterVpnAttachment]. {@macro pulumi_cen_transit_router_vpn_attachment_transit_router_vpn_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterVpnAttachment(
    String name, {
    TransitRouterVpnAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterVpnAttachment:TransitRouterVpnAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPublishRouteEnabled = registerOutput<bool?>('autoPublishRouteEnabled');
    cenId = registerOutput<String>('cenId');
    chargeType = registerOutput<String>('chargeType');
    createTime = registerOutput<String>('createTime');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    transitRouterAttachmentDescription = registerOutput<String?>(
      'transitRouterAttachmentDescription',
    );
    transitRouterAttachmentName = registerOutput<String?>(
      'transitRouterAttachmentName',
    );
    transitRouterId = registerOutput<String?>('transitRouterId');
    vpnId = registerOutput<String>('vpnId');
    vpnOwnerId = registerOutput<String>('vpnOwnerId');
    zones = registerOutput<List<Map<String, dynamic>>?>('zones');
  }

  /// Gets an existing [TransitRouterVpnAttachment] resource's state with the given [name] and [id].
  static TransitRouterVpnAttachment get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterVpnAttachmentState? state,
  }) {
    return TransitRouterVpnAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterVpnAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterVpnAttachment:TransitRouterVpnAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPublishRouteEnabled = registerOutput<bool?>('autoPublishRouteEnabled');
    cenId = registerOutput<String>('cenId');
    chargeType = registerOutput<String>('chargeType');
    createTime = registerOutput<String>('createTime');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    transitRouterAttachmentDescription = registerOutput<String?>(
      'transitRouterAttachmentDescription',
    );
    transitRouterAttachmentName = registerOutput<String?>(
      'transitRouterAttachmentName',
    );
    transitRouterId = registerOutput<String?>('transitRouterId');
    vpnId = registerOutput<String>('vpnId');
    vpnOwnerId = registerOutput<String>('vpnOwnerId');
    zones = registerOutput<List<Map<String, dynamic>>?>('zones');
  }
}
