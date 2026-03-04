import 'package:pulumi/pulumi.dart' as pulumi;
import 'pbr_route_entry_args.dart';
import 'pbr_route_entry_state.dart';

/// Provides a VPN Pbr Route Entry resource.
///
/// &gt; **NOTE:** Available since v1.162.0.
///
/// For information about VPN Pbr Route Entry and how to use it, see [What is VPN Pbr Route Entry](https://www.alibabacloud.com/help/en/doc-detail/127248.html).
///
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
/// const _default = alicloud.vpn.getGateways({});
/// const defaultCustomerGateway = new alicloud.vpn.CustomerGateway("defaultCustomerGateway", {
///     description: "defaultCustomerGateway",
///     ipAddress: "2.2.2.5",
///     asn: "2224",
///     customerGatewayName: name,
/// });
/// const changeCustomerGateway = new alicloud.vpn.CustomerGateway("changeCustomerGateway", {
///     description: "changeCustomerGateway",
///     ipAddress: "2.2.2.6",
///     asn: "2225",
///     customerGatewayName: name,
/// });
/// const defaultConnection = new alicloud.vpn.Connection("default", {
///     vpnGatewayId: _default.then(_default => _default.ids?.[0]),
///     vpnConnectionName: name,
///     localSubnets: ["3.0.0.0/24"],
///     remoteSubnets: [
///         "10.0.0.0/24",
///         "10.0.1.0/24",
///     ],
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     enableTunnelsBgp: true,
///     tunnelOptionsSpecifications: [
///         {
///             tunnelIpsecConfig: {
///                 ipsecAuthAlg: "md5",
///                 ipsecEncAlg: "aes256",
///                 ipsecLifetime: 16400,
///                 ipsecPfs: "group5",
///             },
///             customerGatewayId: defaultCustomerGateway.id,
///             role: "master",
///             tunnelBgpConfig: {
///                 localAsn: "1219002",
///                 tunnelCidr: "169.254.30.0/30",
///                 localBgpIp: "169.254.30.1",
///             },
///             tunnelIkeConfig: {
///                 ikeMode: "aggressive",
///                 ikeVersion: "ikev2",
///                 localId: "localid_tunnel2",
///                 psk: "12345678",
///                 remoteId: "remote2",
///                 ikeAuthAlg: "md5",
///                 ikeEncAlg: "aes256",
///                 ikeLifetime: 3600,
///                 ikePfs: "group14",
///             },
///         },
///         {
///             tunnelIkeConfig: {
///                 remoteId: "remote24",
///                 ikeEncAlg: "aes256",
///                 ikeLifetime: 27000,
///                 ikeMode: "aggressive",
///                 ikePfs: "group5",
///                 ikeAuthAlg: "md5",
///                 ikeVersion: "ikev2",
///                 localId: "localid_tunnel2",
///                 psk: "12345678",
///             },
///             tunnelIpsecConfig: {
///                 ipsecLifetime: 2700,
///                 ipsecPfs: "group14",
///                 ipsecAuthAlg: "md5",
///                 ipsecEncAlg: "aes256",
///             },
///             customerGatewayId: defaultCustomerGateway.id,
///             role: "slave",
///             tunnelBgpConfig: {
///                 localAsn: "1219002",
///                 localBgpIp: "169.254.40.1",
///                 tunnelCidr: "169.254.40.0/30",
///             },
///         },
///     ],
/// });
/// const defaultPbrRouteEntry = new alicloud.vpn.PbrRouteEntry("default", {
///     vpnGatewayId: _default.then(_default => _default.ids?.[0]),
///     routeSource: "192.168.1.0/24",
///     routeDest: "10.0.0.0/24",
///     nextHop: defaultConnection.id,
///     weight: 0,
///     publishVpc: false,
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
/// default = alicloud.vpn.get_gateways()
/// default_customer_gateway = alicloud.vpn.CustomerGateway("defaultCustomerGateway",
///     description="defaultCustomerGateway",
///     ip_address="2.2.2.5",
///     asn="2224",
///     customer_gateway_name=name)
/// change_customer_gateway = alicloud.vpn.CustomerGateway("changeCustomerGateway",
///     description="changeCustomerGateway",
///     ip_address="2.2.2.6",
///     asn="2225",
///     customer_gateway_name=name)
/// default_connection = alicloud.vpn.Connection("default",
///     vpn_gateway_id=default.ids[0],
///     vpn_connection_name=name,
///     local_subnets=["3.0.0.0/24"],
///     remote_subnets=[
///         "10.0.0.0/24",
///         "10.0.1.0/24",
///     ],
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     enable_tunnels_bgp=True,
///     tunnel_options_specifications=[
///         {
///             "tunnel_ipsec_config": {
///                 "ipsec_auth_alg": "md5",
///                 "ipsec_enc_alg": "aes256",
///                 "ipsec_lifetime": 16400,
///                 "ipsec_pfs": "group5",
///             },
///             "customer_gateway_id": default_customer_gateway.id,
///             "role": "master",
///             "tunnel_bgp_config": {
///                 "local_asn": "1219002",
///                 "tunnel_cidr": "169.254.30.0/30",
///                 "local_bgp_ip": "169.254.30.1",
///             },
///             "tunnel_ike_config": {
///                 "ike_mode": "aggressive",
///                 "ike_version": "ikev2",
///                 "local_id": "localid_tunnel2",
///                 "psk": "12345678",
///                 "remote_id": "remote2",
///                 "ike_auth_alg": "md5",
///                 "ike_enc_alg": "aes256",
///                 "ike_lifetime": 3600,
///                 "ike_pfs": "group14",
///             },
///         },
///         {
///             "tunnel_ike_config": {
///                 "remote_id": "remote24",
///                 "ike_enc_alg": "aes256",
///                 "ike_lifetime": 27000,
///                 "ike_mode": "aggressive",
///                 "ike_pfs": "group5",
///                 "ike_auth_alg": "md5",
///                 "ike_version": "ikev2",
///                 "local_id": "localid_tunnel2",
///                 "psk": "12345678",
///             },
///             "tunnel_ipsec_config": {
///                 "ipsec_lifetime": 2700,
///                 "ipsec_pfs": "group14",
///                 "ipsec_auth_alg": "md5",
///                 "ipsec_enc_alg": "aes256",
///             },
///             "customer_gateway_id": default_customer_gateway.id,
///             "role": "slave",
///             "tunnel_bgp_config": {
///                 "local_asn": "1219002",
///                 "local_bgp_ip": "169.254.40.1",
///                 "tunnel_cidr": "169.254.40.0/30",
///             },
///         },
///     ])
/// default_pbr_route_entry = alicloud.vpn.PbrRouteEntry("default",
///     vpn_gateway_id=default.ids[0],
///     route_source="192.168.1.0/24",
///     route_dest="10.0.0.0/24",
///     next_hop=default_connection.id,
///     weight=0,
///     publish_vpc=False)
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
///     var @default = AliCloud.Vpn.GetGateways.Invoke();
///
///     var defaultCustomerGateway = new AliCloud.Vpn.CustomerGateway("defaultCustomerGateway", new()
///     {
///         Description = "defaultCustomerGateway",
///         IpAddress = "2.2.2.5",
///         Asn = "2224",
///         CustomerGatewayName = name,
///     });
///
///     var changeCustomerGateway = new AliCloud.Vpn.CustomerGateway("changeCustomerGateway", new()
///     {
///         Description = "changeCustomerGateway",
///         IpAddress = "2.2.2.6",
///         Asn = "2225",
///         CustomerGatewayName = name,
///     });
///
///     var defaultConnection = new AliCloud.Vpn.Connection("default", new()
///     {
///         VpnGatewayId = @default.Apply(@default => @default.Apply(getGatewaysResult => getGatewaysResult.Ids[0])),
///         VpnConnectionName = name,
///         LocalSubnets = new[]
///         {
///             "3.0.0.0/24",
///         },
///         RemoteSubnets = new[]
///         {
///             "10.0.0.0/24",
///             "10.0.1.0/24",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         EnableTunnelsBgp = true,
///         TunnelOptionsSpecifications = new[]
///         {
///             new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationArgs
///             {
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecAuthAlg = "md5",
///                     IpsecEncAlg = "aes256",
///                     IpsecLifetime = 16400,
///                     IpsecPfs = "group5",
///                 },
///                 CustomerGatewayId = defaultCustomerGateway.Id,
///                 Role = "master",
///                 TunnelBgpConfig = new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs
///                 {
///                     LocalAsn = "1219002",
///                     TunnelCidr = "169.254.30.0/30",
///                     LocalBgpIp = "169.254.30.1",
///                 },
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     IkeMode = "aggressive",
///                     IkeVersion = "ikev2",
///                     LocalId = "localid_tunnel2",
///                     Psk = "12345678",
///                     RemoteId = "remote2",
///                     IkeAuthAlg = "md5",
///                     IkeEncAlg = "aes256",
///                     IkeLifetime = 3600,
///                     IkePfs = "group14",
///                 },
///             },
///             new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationArgs
///             {
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     RemoteId = "remote24",
///                     IkeEncAlg = "aes256",
///                     IkeLifetime = 27000,
///                     IkeMode = "aggressive",
///                     IkePfs = "group5",
///                     IkeAuthAlg = "md5",
///                     IkeVersion = "ikev2",
///                     LocalId = "localid_tunnel2",
///                     Psk = "12345678",
///                 },
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecLifetime = 2700,
///                     IpsecPfs = "group14",
///                     IpsecAuthAlg = "md5",
///                     IpsecEncAlg = "aes256",
///                 },
///                 CustomerGatewayId = defaultCustomerGateway.Id,
///                 Role = "slave",
///                 TunnelBgpConfig = new AliCloud.Vpn.Inputs.ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs
///                 {
///                     LocalAsn = "1219002",
///                     LocalBgpIp = "169.254.40.1",
///                     TunnelCidr = "169.254.40.0/30",
///                 },
///             },
///         },
///     });
///
///     var defaultPbrRouteEntry = new AliCloud.Vpn.PbrRouteEntry("default", new()
///     {
///         VpnGatewayId = @default.Apply(@default => @default.Apply(getGatewaysResult => getGatewaysResult.Ids[0])),
///         RouteSource = "192.168.1.0/24",
///         RouteDest = "10.0.0.0/24",
///         NextHop = defaultConnection.Id,
///         Weight = 0,
///         PublishVpc = false,
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
/// 		_default, err := vpn.GetGateways(ctx, &vpn.GetGatewaysArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomerGateway, err := vpn.NewCustomerGateway(ctx, "defaultCustomerGateway", &vpn.CustomerGatewayArgs{
/// 			Description:         pulumi.String("defaultCustomerGateway"),
/// 			IpAddress:           pulumi.String("2.2.2.5"),
/// 			Asn:                 pulumi.String("2224"),
/// 			CustomerGatewayName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpn.NewCustomerGateway(ctx, "changeCustomerGateway", &vpn.CustomerGatewayArgs{
/// 			Description:         pulumi.String("changeCustomerGateway"),
/// 			IpAddress:           pulumi.String("2.2.2.6"),
/// 			Asn:                 pulumi.String("2225"),
/// 			CustomerGatewayName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultConnection, err := vpn.NewConnection(ctx, "default", &vpn.ConnectionArgs{
/// 			VpnGatewayId:      pulumi.String(_default.Ids[0]),
/// 			VpnConnectionName: pulumi.String(name),
/// 			LocalSubnets: pulumi.StringArray{
/// 				pulumi.String("3.0.0.0/24"),
/// 			},
/// 			RemoteSubnets: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			EnableTunnelsBgp: pulumi.Bool(true),
/// 			TunnelOptionsSpecifications: vpn.ConnectionTunnelOptionsSpecificationArray{
/// 				&vpn.ConnectionTunnelOptionsSpecificationArgs{
/// 					TunnelIpsecConfig: &vpn.ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecAuthAlg:  pulumi.String("md5"),
/// 						IpsecEncAlg:   pulumi.String("aes256"),
/// 						IpsecLifetime: pulumi.Int(16400),
/// 						IpsecPfs:      pulumi.String("group5"),
/// 					},
/// 					CustomerGatewayId: defaultCustomerGateway.ID(),
/// 					Role:              pulumi.String("master"),
/// 					TunnelBgpConfig: &vpn.ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs{
/// 						LocalAsn:   pulumi.String("1219002"),
/// 						TunnelCidr: pulumi.String("169.254.30.0/30"),
/// 						LocalBgpIp: pulumi.String("169.254.30.1"),
/// 					},
/// 					TunnelIkeConfig: &vpn.ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						IkeMode:     pulumi.String("aggressive"),
/// 						IkeVersion:  pulumi.String("ikev2"),
/// 						LocalId:     pulumi.String("localid_tunnel2"),
/// 						Psk:         pulumi.String("12345678"),
/// 						RemoteId:    pulumi.String("remote2"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeEncAlg:   pulumi.String("aes256"),
/// 						IkeLifetime: pulumi.Int(3600),
/// 						IkePfs:      pulumi.String("group14"),
/// 					},
/// 				},
/// 				&vpn.ConnectionTunnelOptionsSpecificationArgs{
/// 					TunnelIkeConfig: &vpn.ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						RemoteId:    pulumi.String("remote24"),
/// 						IkeEncAlg:   pulumi.String("aes256"),
/// 						IkeLifetime: pulumi.Int(27000),
/// 						IkeMode:     pulumi.String("aggressive"),
/// 						IkePfs:      pulumi.String("group5"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeVersion:  pulumi.String("ikev2"),
/// 						LocalId:     pulumi.String("localid_tunnel2"),
/// 						Psk:         pulumi.String("12345678"),
/// 					},
/// 					TunnelIpsecConfig: &vpn.ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecLifetime: pulumi.Int(2700),
/// 						IpsecPfs:      pulumi.String("group14"),
/// 						IpsecAuthAlg:  pulumi.String("md5"),
/// 						IpsecEncAlg:   pulumi.String("aes256"),
/// 					},
/// 					CustomerGatewayId: defaultCustomerGateway.ID(),
/// 					Role:              pulumi.String("slave"),
/// 					TunnelBgpConfig: &vpn.ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs{
/// 						LocalAsn:   pulumi.String("1219002"),
/// 						LocalBgpIp: pulumi.String("169.254.40.1"),
/// 						TunnelCidr: pulumi.String("169.254.40.0/30"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpn.NewPbrRouteEntry(ctx, "default", &vpn.PbrRouteEntryArgs{
/// 			VpnGatewayId: pulumi.String(_default.Ids[0]),
/// 			RouteSource:  pulumi.String("192.168.1.0/24"),
/// 			RouteDest:    pulumi.String("10.0.0.0/24"),
/// 			NextHop:      defaultConnection.ID(),
/// 			Weight:       pulumi.Int(0),
/// 			PublishVpc:   pulumi.Bool(false),
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
/// import com.pulumi.alicloud.vpn.VpnFunctions;
/// import com.pulumi.alicloud.vpn.inputs.GetGatewaysArgs;
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.vpn.Connection;
/// import com.pulumi.alicloud.vpn.ConnectionArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs;
/// import com.pulumi.alicloud.vpn.PbrRouteEntry;
/// import com.pulumi.alicloud.vpn.PbrRouteEntryArgs;
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
///         final var default = VpnFunctions.getGateways(GetGatewaysArgs.builder()
///             .build());
///
///         var defaultCustomerGateway = new CustomerGateway("defaultCustomerGateway", CustomerGatewayArgs.builder()
///             .description("defaultCustomerGateway")
///             .ipAddress("2.2.2.5")
///             .asn("2224")
///             .customerGatewayName(name)
///             .build());
///
///         var changeCustomerGateway = new CustomerGateway("changeCustomerGateway", CustomerGatewayArgs.builder()
///             .description("changeCustomerGateway")
///             .ipAddress("2.2.2.6")
///             .asn("2225")
///             .customerGatewayName(name)
///             .build());
///
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .vpnGatewayId(default_.ids()[0])
///             .vpnConnectionName(name)
///             .localSubnets("3.0.0.0/24")
///             .remoteSubnets(
///                 "10.0.0.0/24",
///                 "10.0.1.0/24")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .enableTunnelsBgp(true)
///             .tunnelOptionsSpecifications(
///                 ConnectionTunnelOptionsSpecificationArgs.builder()
///                     .tunnelIpsecConfig(ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecAuthAlg("md5")
///                         .ipsecEncAlg("aes256")
///                         .ipsecLifetime(16400)
///                         .ipsecPfs("group5")
///                         .build())
///                     .customerGatewayId(defaultCustomerGateway.id())
///                     .role("master")
///                     .tunnelBgpConfig(ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs.builder()
///                         .localAsn("1219002")
///                         .tunnelCidr("169.254.30.0/30")
///                         .localBgpIp("169.254.30.1")
///                         .build())
///                     .tunnelIkeConfig(ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .ikeMode("aggressive")
///                         .ikeVersion("ikev2")
///                         .localId("localid_tunnel2")
///                         .psk("12345678")
///                         .remoteId("remote2")
///                         .ikeAuthAlg("md5")
///                         .ikeEncAlg("aes256")
///                         .ikeLifetime(3600)
///                         .ikePfs("group14")
///                         .build())
///                     .build(),
///                 ConnectionTunnelOptionsSpecificationArgs.builder()
///                     .tunnelIkeConfig(ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .remoteId("remote24")
///                         .ikeEncAlg("aes256")
///                         .ikeLifetime(27000)
///                         .ikeMode("aggressive")
///                         .ikePfs("group5")
///                         .ikeAuthAlg("md5")
///                         .ikeVersion("ikev2")
///                         .localId("localid_tunnel2")
///                         .psk("12345678")
///                         .build())
///                     .tunnelIpsecConfig(ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecLifetime(2700)
///                         .ipsecPfs("group14")
///                         .ipsecAuthAlg("md5")
///                         .ipsecEncAlg("aes256")
///                         .build())
///                     .customerGatewayId(defaultCustomerGateway.id())
///                     .role("slave")
///                     .tunnelBgpConfig(ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs.builder()
///                         .localAsn("1219002")
///                         .localBgpIp("169.254.40.1")
///                         .tunnelCidr("169.254.40.0/30")
///                         .build())
///                     .build())
///             .build());
///
///         var defaultPbrRouteEntry = new PbrRouteEntry("defaultPbrRouteEntry", PbrRouteEntryArgs.builder()
///             .vpnGatewayId(default_.ids()[0])
///             .routeSource("192.168.1.0/24")
///             .routeDest("10.0.0.0/24")
///             .nextHop(defaultConnection.id())
///             .weight(0)
///             .publishVpc(false)
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
///   defaultCustomerGateway:
///     type: alicloud:vpn:CustomerGateway
///     properties:
///       description: defaultCustomerGateway
///       ipAddress: 2.2.2.5
///       asn: '2224'
///       customerGatewayName: ${name}
///   changeCustomerGateway:
///     type: alicloud:vpn:CustomerGateway
///     properties:
///       description: changeCustomerGateway
///       ipAddress: 2.2.2.6
///       asn: '2225'
///       customerGatewayName: ${name}
///   defaultConnection:
///     type: alicloud:vpn:Connection
///     name: default
///     properties:
///       vpnGatewayId: ${default.ids[0]}
///       vpnConnectionName: ${name}
///       localSubnets:
///         - 3.0.0.0/24
///       remoteSubnets:
///         - 10.0.0.0/24
///         - 10.0.1.0/24
///       tags:
///         Created: TF
///         For: example
///       enableTunnelsBgp: 'true'
///       tunnelOptionsSpecifications:
///         - tunnelIpsecConfig:
///             ipsecAuthAlg: md5
///             ipsecEncAlg: aes256
///             ipsecLifetime: '16400'
///             ipsecPfs: group5
///           customerGatewayId: ${defaultCustomerGateway.id}
///           role: master
///           tunnelBgpConfig:
///             localAsn: '1219002'
///             tunnelCidr: 169.254.30.0/30
///             localBgpIp: 169.254.30.1
///           tunnelIkeConfig:
///             ikeMode: aggressive
///             ikeVersion: ikev2
///             localId: localid_tunnel2
///             psk: '12345678'
///             remoteId: remote2
///             ikeAuthAlg: md5
///             ikeEncAlg: aes256
///             ikeLifetime: '3600'
///             ikePfs: group14
///         - tunnelIkeConfig:
///             remoteId: remote24
///             ikeEncAlg: aes256
///             ikeLifetime: '27000'
///             ikeMode: aggressive
///             ikePfs: group5
///             ikeAuthAlg: md5
///             ikeVersion: ikev2
///             localId: localid_tunnel2
///             psk: '12345678'
///           tunnelIpsecConfig:
///             ipsecLifetime: '2700'
///             ipsecPfs: group14
///             ipsecAuthAlg: md5
///             ipsecEncAlg: aes256
///           customerGatewayId: ${defaultCustomerGateway.id}
///           role: slave
///           tunnelBgpConfig:
///             localAsn: '1219002'
///             localBgpIp: 169.254.40.1
///             tunnelCidr: 169.254.40.0/30
///   defaultPbrRouteEntry:
///     type: alicloud:vpn:PbrRouteEntry
///     name: default
///     properties:
///       vpnGatewayId: ${default.ids[0]}
///       routeSource: 192.168.1.0/24
///       routeDest: 10.0.0.0/24
///       nextHop: ${defaultConnection.id}
///       weight: 0
///       publishVpc: false
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpn:getGateways
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPN Pbr route entry can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/pbrRouteEntry:PbrRouteEntry example <vpn_gateway_id>:<next_hop>:<route_source>:<route_dest>
/// ```
class PbrRouteEntry extends pulumi.CustomResource {
  /// The next hop of the policy-based route.
  late final pulumi.Output<String> nextHop;

  /// Whether to issue the destination route to the VPC.
  late final pulumi.Output<bool> publishVpc;

  /// The destination CIDR block of the policy-based route.
  late final pulumi.Output<String> routeDest;

  /// The source CIDR block of the policy-based route.
  late final pulumi.Output<String> routeSource;

  /// The status of the vpn pbr route entry.
  late final pulumi.Output<String> status;

  /// The ID of the vpn gateway.
  late final pulumi.Output<String> vpnGatewayId;

  /// The weight of the policy-based route. Valid values: 0 and 100.
  late final pulumi.Output<int> weight;

  /// Creates a new [PbrRouteEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PbrRouteEntry]. {@macro pulumi_vpn_pbr_route_entry_pbr_route_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PbrRouteEntry(
    String name, {
    PbrRouteEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpn/pbrRouteEntry:PbrRouteEntry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    nextHop = registerOutput<String>('nextHop');
    publishVpc = registerOutput<bool>('publishVpc');
    routeDest = registerOutput<String>('routeDest');
    routeSource = registerOutput<String>('routeSource');
    status = registerOutput<String>('status');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
    weight = registerOutput<int>('weight');
  }

  /// Gets an existing [PbrRouteEntry] resource's state with the given [name] and [id].
  static PbrRouteEntry get(
    String name,
    pulumi.Input<String> id, {
    PbrRouteEntryState? state,
  }) {
    return PbrRouteEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PbrRouteEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpn/pbrRouteEntry:PbrRouteEntry',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    nextHop = registerOutput<String>('nextHop');
    publishVpc = registerOutput<bool>('publishVpc');
    routeDest = registerOutput<String>('routeDest');
    routeSource = registerOutput<String>('routeSource');
    status = registerOutput<String>('status');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
    weight = registerOutput<int>('weight');
  }
}
