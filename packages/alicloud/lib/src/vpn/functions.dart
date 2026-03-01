import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connections_args.dart';
import 'get_connections_result.dart';
import 'get_customer_gateways_args.dart';
import 'get_customer_gateways_result.dart';
import 'get_gateway_vco_routes_args.dart';
import 'get_gateway_vco_routes_result.dart';
import 'get_gateway_vpn_attachments_args.dart';
import 'get_gateway_vpn_attachments_result.dart';
import 'get_gateway_zones_args.dart';
import 'get_gateway_zones_result.dart';
import 'get_gateways_args.dart';
import 'get_gateways_result.dart';

/// The VPN connections data source lists lots of VPN connections resource information owned by an Alicloud account.
///
/// > **NOTE:** Available since v1.18.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.vpn.getConnections({
///     ids: ["fake-conn-id"],
///     vpnGatewayId: "fake-vpn-id",
///     customerGatewayId: "fake-cgw-id",
///     outputFile: "/tmp/vpnconn",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.vpn.get_connections(ids=["fake-conn-id"],
///     vpn_gateway_id="fake-vpn-id",
///     customer_gateway_id="fake-cgw-id",
///     output_file="/tmp/vpnconn")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.Vpn.GetConnections.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "fake-conn-id",
///         },
///         VpnGatewayId = "fake-vpn-id",
///         CustomerGatewayId = "fake-cgw-id",
///         OutputFile = "/tmp/vpnconn",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpn.GetConnections(ctx, &vpn.GetConnectionsArgs{
/// 			Ids: []string{
/// 				"fake-conn-id",
/// 			},
/// 			VpnGatewayId:      pulumi.StringRef("fake-vpn-id"),
/// 			CustomerGatewayId: pulumi.StringRef("fake-cgw-id"),
/// 			OutputFile:        pulumi.StringRef("/tmp/vpnconn"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpn.VpnFunctions;
/// import com.pulumi.alicloud.vpn.inputs.GetConnectionsArgs;
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
///         final var foo = VpnFunctions.getConnections(GetConnectionsArgs.builder()
///             .ids("fake-conn-id")
///             .vpnGatewayId("fake-vpn-id")
///             .customerGatewayId("fake-cgw-id")
///             .outputFile("/tmp/vpnconn")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:vpn:getConnections
///       arguments:
///         ids:
///           - fake-conn-id
///         vpnGatewayId: fake-vpn-id
///         customerGatewayId: fake-cgw-id
///         outputFile: /tmp/vpnconn
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpn_get_connections_get_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionsResult> getConnections(
  GetConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpn/getConnections:getConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionsResult.fromMap(result);
}

/// The VPN customers gateways data source lists a number of VPN customer gateways resource information owned by an Alicloud account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.vpn.getCustomerGateways({
///     nameRegex: "testAcc*",
///     ids: [
///         "fake-id1",
///         "fake-id2",
///     ],
///     outputFile: "/tmp/cgws",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.vpn.get_customer_gateways(name_regex="testAcc*",
///     ids=[
///         "fake-id1",
///         "fake-id2",
///     ],
///     output_file="/tmp/cgws")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.Vpn.GetCustomerGateways.Invoke(new()
///     {
///         NameRegex = "testAcc*",
///         Ids = new[]
///         {
///             "fake-id1",
///             "fake-id2",
///         },
///         OutputFile = "/tmp/cgws",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpn.GetCustomerGateways(ctx, &vpn.GetCustomerGatewaysArgs{
/// 			NameRegex: pulumi.StringRef("testAcc*"),
/// 			Ids: []string{
/// 				"fake-id1",
/// 				"fake-id2",
/// 			},
/// 			OutputFile: pulumi.StringRef("/tmp/cgws"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpn.VpnFunctions;
/// import com.pulumi.alicloud.vpn.inputs.GetCustomerGatewaysArgs;
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
///         final var foo = VpnFunctions.getCustomerGateways(GetCustomerGatewaysArgs.builder()
///             .nameRegex("testAcc*")
///             .ids(
///                 "fake-id1",
///                 "fake-id2")
///             .outputFile("/tmp/cgws")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:vpn:getCustomerGateways
///       arguments:
///         nameRegex: testAcc*
///         ids:
///           - fake-id1
///           - fake-id2
///         outputFile: /tmp/cgws
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpn_get_customer_gateways_get_customer_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomerGatewaysResult> getCustomerGateways(
  GetCustomerGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpn/getCustomerGateways:getCustomerGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomerGatewaysResult.fromMap(result);
}

/// This data source provides the Vpn Gateway Vco Routes of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.183.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultInstance = new alicloud.cen.Instance("default", {cenInstanceName: name});
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {
///     cenId: defaultInstance.id,
///     transitRouterDescription: "desd",
///     transitRouterName: name,
/// });
/// const _default = alicloud.cen.getTransitRouterAvailableResources({});
/// const defaultCustomerGateway = new alicloud.vpn.CustomerGateway("default", {
///     name: name,
///     ipAddress: "42.104.22.210",
///     asn: "45014",
///     description: "testAccVpnConnectionDesc",
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
///         psk: "tf-testvpn2",
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
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     vpnId: defaultGatewayVpnAttachment.id,
///     zones: [{
///         zoneId: _default.then(_default => _default.resources?.[0]?.masterZones?.[0]),
///     }],
/// });
/// const defaultGatewayVcoRoute = new alicloud.vpn.GatewayVcoRoute("default", {
///     routeDest: "192.168.12.0/24",
///     nextHop: defaultTransitRouterVpnAttachment.vpnId,
///     vpnConnectionId: defaultTransitRouterVpnAttachment.vpnId,
///     weight: 100,
/// });
/// const defaultGetGatewayVcoRoutes = alicloud.vpn.getGatewayVcoRoutesOutput({
///     vpnConnectionId: defaultTransitRouterVpnAttachment.vpnId,
/// });
/// export const vpnGatewayVcoRouteId1 = ids.routes[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_instance = alicloud.cen.Instance("default", cen_instance_name=name)
/// default_transit_router = alicloud.cen.TransitRouter("default",
///     cen_id=default_instance.id,
///     transit_router_description="desd",
///     transit_router_name=name)
/// default = alicloud.cen.get_transit_router_available_resources()
/// default_customer_gateway = alicloud.vpn.CustomerGateway("default",
///     name=name,
///     ip_address="42.104.22.210",
///     asn="45014",
///     description="testAccVpnConnectionDesc")
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
///         "psk": "tf-testvpn2",
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
///     transit_router_id=default_transit_router.transit_router_id,
///     vpn_id=default_gateway_vpn_attachment.id,
///     zones=[{
///         "zone_id": default.resources[0].master_zones[0],
///     }])
/// default_gateway_vco_route = alicloud.vpn.GatewayVcoRoute("default",
///     route_dest="192.168.12.0/24",
///     next_hop=default_transit_router_vpn_attachment.vpn_id,
///     vpn_connection_id=default_transit_router_vpn_attachment.vpn_id,
///     weight=100)
/// default_get_gateway_vco_routes = alicloud.vpn.get_gateway_vco_routes_output(vpn_connection_id=default_transit_router_vpn_attachment.vpn_id)
/// pulumi.export("vpnGatewayVcoRouteId1", ids["routes"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         CenId = defaultInstance.Id,
///         TransitRouterDescription = "desd",
///         TransitRouterName = name,
///     });
///
///     var @default = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     var defaultCustomerGateway = new AliCloud.Vpn.CustomerGateway("default", new()
///     {
///         Name = name,
///         IpAddress = "42.104.22.210",
///         Asn = "45014",
///         Description = "testAccVpnConnectionDesc",
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
///             Psk = "tf-testvpn2",
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
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
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
///         RouteDest = "192.168.12.0/24",
///         NextHop = defaultTransitRouterVpnAttachment.VpnId,
///         VpnConnectionId = defaultTransitRouterVpnAttachment.VpnId,
///         Weight = 100,
///     });
///
///     var defaultGetGatewayVcoRoutes = AliCloud.Vpn.GetGatewayVcoRoutes.Invoke(new()
///     {
///         VpnConnectionId = defaultTransitRouterVpnAttachment.VpnId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpnGatewayVcoRouteId1"] = ids.Routes[0].Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.Any(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// 			CenId:                    defaultInstance.ID(),
/// 			TransitRouterDescription: pulumi.String("desd"),
/// 			TransitRouterName:        pulumi.Any(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomerGateway, err := vpn.NewCustomerGateway(ctx, "default", &vpn.CustomerGatewayArgs{
/// 			Name:        pulumi.Any(name),
/// 			IpAddress:   pulumi.String("42.104.22.210"),
/// 			Asn:         pulumi.String("45014"),
/// 			Description: pulumi.String("testAccVpnConnectionDesc"),
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
/// 				Psk:         pulumi.String("tf-testvpn2"),
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
/// 			VpnAttachmentName:  pulumi.Any(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterVpnAttachment, err := cen.NewTransitRouterVpnAttachment(ctx, "default", &cen.TransitRouterVpnAttachmentArgs{
/// 			AutoPublishRouteEnabled:            pulumi.Bool(false),
/// 			TransitRouterAttachmentDescription: pulumi.Any(name),
/// 			TransitRouterAttachmentName:        pulumi.Any(name),
/// 			CenId:                              defaultTransitRouter.CenId,
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
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
/// 			RouteDest:       pulumi.String("192.168.12.0/24"),
/// 			NextHop:         defaultTransitRouterVpnAttachment.VpnId,
/// 			VpnConnectionId: defaultTransitRouterVpnAttachment.VpnId,
/// 			Weight:          pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vpn.GetGatewayVcoRoutesOutput(ctx, vpn.GetGatewayVcoRoutesOutputArgs{
/// 			VpnConnectionId: defaultTransitRouterVpnAttachment.VpnId,
/// 		}, nil)
/// 		ctx.Export("vpnGatewayVcoRouteId1", ids.Routes[0].Id)
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
/// import com.pulumi.alicloud.vpn.VpnFunctions;
/// import com.pulumi.alicloud.vpn.inputs.GetGatewayVcoRoutesArgs;
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(defaultInstance.id())
///             .transitRouterDescription("desd")
///             .transitRouterName(name)
///             .build());
///
///         final var default = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         var defaultCustomerGateway = new CustomerGateway("defaultCustomerGateway", CustomerGatewayArgs.builder()
///             .name(name)
///             .ipAddress("42.104.22.210")
///             .asn("45014")
///             .description("testAccVpnConnectionDesc")
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
///                 .psk("tf-testvpn2")
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
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .vpnId(defaultGatewayVpnAttachment.id())
///             .zones(TransitRouterVpnAttachmentZoneArgs.builder()
///                 .zoneId(default_.resources()[0].masterZones()[0])
///                 .build())
///             .build());
///
///         var defaultGatewayVcoRoute = new GatewayVcoRoute("defaultGatewayVcoRoute", GatewayVcoRouteArgs.builder()
///             .routeDest("192.168.12.0/24")
///             .nextHop(defaultTransitRouterVpnAttachment.vpnId())
///             .vpnConnectionId(defaultTransitRouterVpnAttachment.vpnId())
///             .weight(100)
///             .build());
///
///         final var defaultGetGatewayVcoRoutes = VpnFunctions.getGatewayVcoRoutes(GetGatewayVcoRoutesArgs.builder()
///             .vpnConnectionId(defaultTransitRouterVpnAttachment.vpnId())
///             .build());
///
///         ctx.export("vpnGatewayVcoRouteId1", ids.routes()[0].id());
///     }
/// }
/// ```
/// ```yaml
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
///       transitRouterDescription: desd
///       transitRouterName: ${name}
///   defaultCustomerGateway:
///     type: alicloud:vpn:CustomerGateway
///     name: default
///     properties:
///       name: ${name}
///       ipAddress: 42.104.22.210
///       asn: '45014'
///       description: testAccVpnConnectionDesc
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
///         psk: tf-testvpn2
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
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       vpnId: ${defaultGatewayVpnAttachment.id}
///       zones:
///         - zoneId: ${default.resources[0].masterZones[0]}
///   defaultGatewayVcoRoute:
///     type: alicloud:vpn:GatewayVcoRoute
///     name: default
///     properties:
///       routeDest: 192.168.12.0/24
///       nextHop: ${defaultTransitRouterVpnAttachment.vpnId}
///       vpnConnectionId: ${defaultTransitRouterVpnAttachment.vpnId}
///       weight: 100
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
///   defaultGetGatewayVcoRoutes:
///     fn::invoke:
///       function: alicloud:vpn:getGatewayVcoRoutes
///       arguments:
///         vpnConnectionId: ${defaultTransitRouterVpnAttachment.vpnId}
/// outputs:
///   vpnGatewayVcoRouteId1: ${ids.routes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpn_get_gateway_vco_routes_get_gateway_vco_routes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayVcoRoutesResult> getGatewayVcoRoutes(
  GetGatewayVcoRoutesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpn/getGatewayVcoRoutes:getGatewayVcoRoutes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayVcoRoutesResult.fromMap(result);
}

/// This data source provides Vpn Gateway Vpn Attachment available to the user.[What is Vpn Attachment](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/CreateVpnAttachment)
///
/// > **NOTE:** Available since v1.245.0.
/// [args] Arguments passed to this invoke. {@macro pulumi_vpn_get_gateway_vpn_attachments_get_gateway_vpn_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayVpnAttachmentsResult> getGatewayVpnAttachments(
  GetGatewayVpnAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpn/getGatewayVpnAttachments:getGatewayVpnAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayVpnAttachmentsResult.fromMap(result);
}

/// This data source provides VPN Gateway Zone available to the user.[What is Zone](https://next.api.alibabacloud.com/api/Vpc/2016-04-28/DescribeVpnGatewayAvailableZones?lang=JAVA)
///
/// > **NOTE:** Available since v1.216.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.vpn.getGatewayZones({
///     spec: "5M",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.vpn.get_gateway_zones(spec="5M")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Vpn.GetGatewayZones.Invoke(new()
///     {
///         Spec = "5M",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpn.GetGatewayZones(ctx, &vpn.GetGatewayZonesArgs{
/// 			Spec: "5M",
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpn.VpnFunctions;
/// import com.pulumi.alicloud.vpn.inputs.GetGatewayZonesArgs;
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
///         final var default = VpnFunctions.getGatewayZones(GetGatewayZonesArgs.builder()
///             .spec("5M")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpn:getGatewayZones
///       arguments:
///         spec: 5M
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpn_get_gateway_zones_get_gateway_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayZonesResult> getGatewayZones(
  GetGatewayZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpn/getGatewayZones:getGatewayZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayZonesResult.fromMap(result);
}

/// The VPNs data source lists a number of VPNs resource information owned by an Alicloud account.
///
/// > **NOTE:** Available since v1.18.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const spec = config.get("spec") || "20";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: "me-east-1a",
/// }));
/// const vswitch: alicloud.vpc.Switch[] = [];
/// defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids).length.apply(length => {
///     for (const range = {value: 0}; range.value < (length > 0 ? 0 : 1); range.value++) {
///         vswitch.push(new alicloud.vpc.Switch(`vswitch-${range.value}`, {
///             vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///             cidrBlock: defaultGetNetworks.then(defaultGetNetworks => std.cidrsubnet({
///                 input: defaultGetNetworks.vpcs?.[0]?.cidrBlock,
///                 newbits: 8,
///                 netnum: 8,
///             })).then(invoke => invoke.result),
///             zoneId: "me-east-1a",
///             vswitchName: name,
///         }));
///     }
/// });
/// const vswitchId = pulumi.all([defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids).length, defaultGetSwitches, std.concat({
///     input: [
///         vswitch.map(__item => __item.id),
///         [""],
///     ],
/// })]).apply(([length, defaultGetSwitches, invoke]) => length > 0 ? defaultGetSwitches.ids?.[0] : invoke.result?.[0]);
/// const defaultGateway = new alicloud.vpn.Gateway("default", {
///     vpnType: "Normal",
///     vpnGatewayName: name,
///     vswitchId: vswitchId,
///     autoPay: true,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     networkType: "public",
///     paymentType: "Subscription",
///     enableIpsec: true,
///     bandwidth: spec,
/// });
/// const vpnGateways = alicloud.vpn.getGatewaysOutput({
///     ids: [defaultGateway.id],
///     includeReservationData: true,
///     outputFile: "/tmp/vpns",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// spec = config.get("spec")
/// if spec is None:
///     spec = "20"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id="me-east-1a")
/// vswitch = []
/// def create_vswitch(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         vswitch.append(alicloud.vpc.Switch(f"vswitch-{range['value']}",
///             vpc_id=default_get_networks.ids[0],
///             cidr_block=std.cidrsubnet(input=default_get_networks.vpcs[0].cidr_block,
///                 newbits=8,
///                 netnum=8).result,
///             zone_id="me-east-1a",
///             vswitch_name=name))
///
/// len(default_get_switches.ids).apply(lambda resolved_outputs: create_vswitch(0 if resolved_outputs['length'] > 0 else 1))
/// vswitch_id = len(default_get_switches.ids).apply(lambda length: default_get_switches.ids[0] if length > 0 else std.concat(input=[
///     [__item.id for __item in vswitch],
///     [""],
/// ]).result[0])
/// default_gateway = alicloud.vpn.Gateway("default",
///     vpn_type="Normal",
///     vpn_gateway_name=name,
///     vswitch_id=vswitch_id,
///     auto_pay=True,
///     vpc_id=default_get_networks.ids[0],
///     network_type="public",
///     payment_type="Subscription",
///     enable_ipsec=True,
///     bandwidth=spec)
/// vpn_gateways = alicloud.vpn.get_gateways_output(ids=[default_gateway.id],
///     include_reservation_data=True,
///     output_file="/tmp/vpns")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var spec = config.Get("spec") ?? "20";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = "me-east-1a",
///     });
///
///     var vswitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids).Length.Apply(length => length > 0 ? 0 : 1); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vswitch.Add(new AliCloud.Vpc.Switch($"vswitch-{range.Value}", new()
///         {
///             VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///             CidrBlock = Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Vpcs[0]?.CidrBlock),
///                 Newbits = 8,
///                 Netnum = 8,
///             }).Apply(invoke => invoke.Result),
///             ZoneId = "me-east-1a",
///             VswitchName = name,
///         }));
///     }
///     var vswitchId = Output.Tuple(defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids).Length, defaultGetSwitches, Std.Concat.Invoke(new()
///     {
///         Input = new[]
///         {
///             vswitch.Select(__item => __item.Id).ToList(),
///             new[]
///             {
///                 "",
///             },
///         },
///     })).Apply(values =>
///     {
///         var length = values.Item1;
///         var defaultGetSwitches = values.Item2;
///         var invoke = values.Item3;
///         return length > 0 ? defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]) : invoke.Result[0];
///     });
///
///     var defaultGateway = new AliCloud.Vpn.Gateway("default", new()
///     {
///         VpnType = "Normal",
///         VpnGatewayName = name,
///         VswitchId = vswitchId,
///         AutoPay = true,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         NetworkType = "public",
///         PaymentType = "Subscription",
///         EnableIpsec = true,
///         Bandwidth = spec,
///     });
///
///     var vpnGateways = AliCloud.Vpn.GetGateways.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultGateway.Id,
///         },
///         IncludeReservationData = true,
///         OutputFile = "/tmp/vpns",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// spec := "20";
/// if param := cfg.Get("spec"); param != ""{
/// spec = param
/// }
/// _, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// VpcId: pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// ZoneId: pulumi.StringRef("me-east-1a"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: defaultGetNetworks.Vpcs[0].CidrBlock,
/// Newbits: 8,
/// Netnum: 8,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var tmp0 float64
/// if length > 0 {
/// tmp0 = 0
/// } else {
/// tmp0 = 1
/// }
/// var vswitch []*vpc.Switch
/// for index := 0; index < float64(len(defaultGetSwitches.Ids).ApplyT(func(length int) (float64, error) {
/// return tmp0, nil
/// }).(pulumi.Float64Output)); index++ {
///     key0 := index
///     _ := index
/// __res, err := vpc.NewSwitch(ctx, fmt.Sprintf("vswitch-%v", key0), &vpc.SwitchArgs{
/// VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
/// CidrBlock: pulumi.String(invokeCidrsubnet.Result),
/// ZoneId: pulumi.String("me-east-1a"),
/// VswitchName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// vswitch = append(vswitch, __res)
/// }
/// var tmp1 *interface{}
/// if length > 0 {
/// tmp1 = defaultGetSwitches.Ids[0]
/// } else {
/// tmp1 = std.Concat(ctx, &std.ConcatArgs{
/// Input: pulumi.StringArrayArray{
/// %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:35,12-25),
/// []string{
/// "",
/// },
/// },
/// }, nil).Result[0]
/// }
/// vswitchId := len(defaultGetSwitches.Ids).ApplyT(func(length int) (*interface{}, error) {
/// return &tmp1, nil
/// }).(pulumi.Interface{}PtrOutput)
/// defaultGateway, err := vpn.NewGateway(ctx, "default", &vpn.GatewayArgs{
/// VpnType: pulumi.String("Normal"),
/// VpnGatewayName: pulumi.String(name),
/// VswitchId: pulumi.Any(vswitchId),
/// AutoPay: pulumi.Bool(true),
/// VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
/// NetworkType: pulumi.String("public"),
/// PaymentType: pulumi.String("Subscription"),
/// EnableIpsec: pulumi.Bool(true),
/// Bandwidth: pulumi.String(spec),
/// })
/// if err != nil {
/// return err
/// }
/// _ = vpn.GetGatewaysOutput(ctx, vpn.GetGatewaysOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultGateway.ID(),
/// },
/// IncludeReservationData: pulumi.Bool(true),
/// OutputFile: pulumi.String("/tmp/vpns"),
/// }, nil);
/// return nil
/// })
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.std.inputs.ConcatArgs;
/// import com.pulumi.alicloud.vpn.Gateway;
/// import com.pulumi.alicloud.vpn.GatewayArgs;
/// import com.pulumi.alicloud.vpn.VpnFunctions;
/// import com.pulumi.alicloud.vpn.inputs.GetGatewaysArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var spec = config.get("spec").orElse("20");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId("me-east-1a")
///             .build());
///
///         for (var i = 0; i < defaultGetSwitches.ids().length().applyValue(_length -> _length > 0 ? 0 : 1); i++) {
///             new Switch("vswitch-" + i, SwitchArgs.builder()
///                 .vpcId(defaultGetNetworks.ids()[0])
///                 .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(defaultGetNetworks.vpcs()[0].cidrBlock())
///                     .newbits(8)
///                     .netnum(8)
///                     .build()).result())
///                 .zoneId("me-east-1a")
///                 .vswitchName(name)
///                 .build());
///
///
/// }
///         final var vswitchId = defaultGetSwitches.ids().length().applyValue(_length -> _length > 0 ? defaultGetSwitches.ids()[0] : StdFunctions.concat(ConcatArgs.builder()
///             .input(
///                 vswitch.stream().map(element -> element.id()).collect(toList()),
///                 "")
///             .build()).result()[0]);
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .vpnType("Normal")
///             .vpnGatewayName(name)
///             .vswitchId(vswitchId)
///             .autoPay(true)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .networkType("public")
///             .paymentType("Subscription")
///             .enableIpsec(true)
///             .bandwidth(spec)
///             .build());
///
///         final var vpnGateways = VpnFunctions.getGateways(GetGatewaysArgs.builder()
///             .ids(defaultGateway.id())
///             .includeReservationData(true)
///             .outputFile("/tmp/vpns")
///             .build());
///
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpn_get_gateways_get_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewaysResult> getGateways(
  GetGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpn/getGateways:getGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaysResult.fromMap(result);
}
