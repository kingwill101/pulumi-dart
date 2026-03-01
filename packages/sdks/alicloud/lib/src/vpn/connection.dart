import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_bgp_config.dart';
import 'connection_health_check_config.dart';
import 'connection_ike_config.dart';
import 'connection_ipsec_config.dart';
import 'connection_state.dart';
import 'connection_tunnel_options_specification.dart';

/// ## Example Usage
///
/// Basic Usage
///
/// [IPsec-VPN connections support the dual-tunnel mode](https://www.alibabacloud.com/help/en/vpn/product-overview/ipsec-vpn-connections-support-the-dual-tunnel-mode)
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const spec = config.get("spec") || "5";
/// const _default = alicloud.vpn.getGatewayZones({
///     spec: "5M",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     cidrBlock: "172.16.0.0/16",
///     vpcName: name,
/// });
/// const default0 = new alicloud.vpc.Switch("default0", {
///     cidrBlock: "172.16.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.ids?.[0]),
/// });
/// const default1 = new alicloud.vpc.Switch("default1", {
///     cidrBlock: "172.16.1.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.ids?.[1]),
/// });
/// const HA_VPN = new alicloud.vpn.Gateway("HA-VPN", {
///     vpnType: "Normal",
///     disasterRecoveryVswitchId: default1.id,
///     vpnGatewayName: name,
///     vswitchId: default0.id,
///     autoPay: true,
///     vpcId: defaultNetwork.id,
///     networkType: "public",
///     paymentType: "Subscription",
///     enableIpsec: true,
///     bandwidth: spec,
/// });
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
///     vpnGatewayId: HA_VPN.id,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// spec = config.get("spec")
/// if spec is None:
///     spec = "5"
/// default = alicloud.vpn.get_gateway_zones(spec="5M")
/// default_network = alicloud.vpc.Network("default",
///     cidr_block="172.16.0.0/16",
///     vpc_name=name)
/// default0 = alicloud.vpc.Switch("default0",
///     cidr_block="172.16.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.ids[0])
/// default1 = alicloud.vpc.Switch("default1",
///     cidr_block="172.16.1.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.ids[1])
/// h_a__vpn = alicloud.vpn.Gateway("HA-VPN",
///     vpn_type="Normal",
///     disaster_recovery_vswitch_id=default1.id,
///     vpn_gateway_name=name,
///     vswitch_id=default0.id,
///     auto_pay=True,
///     vpc_id=default_network.id,
///     network_type="public",
///     payment_type="Subscription",
///     enable_ipsec=True,
///     bandwidth=spec)
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
///     vpn_gateway_id=h_a__vpn.id,
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
///     var spec = config.Get("spec") ?? "5";
///     var @default = AliCloud.Vpn.GetGatewayZones.Invoke(new()
///     {
///         Spec = "5M",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "172.16.0.0/16",
///         VpcName = name,
///     });
///
///     var default0 = new AliCloud.Vpc.Switch("default0", new()
///     {
///         CidrBlock = "172.16.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getGatewayZonesResult => getGatewayZonesResult.Ids[0])),
///     });
///
///     var default1 = new AliCloud.Vpc.Switch("default1", new()
///     {
///         CidrBlock = "172.16.1.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getGatewayZonesResult => getGatewayZonesResult.Ids[1])),
///     });
///
///     var HA_VPN = new AliCloud.Vpn.Gateway("HA-VPN", new()
///     {
///         VpnType = "Normal",
///         DisasterRecoveryVswitchId = default1.Id,
///         VpnGatewayName = name,
///         VswitchId = default0.Id,
///         AutoPay = true,
///         VpcId = defaultNetwork.Id,
///         NetworkType = "public",
///         PaymentType = "Subscription",
///         EnableIpsec = true,
///         Bandwidth = spec,
///     });
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
///         VpnGatewayId = HA_VPN.Id,
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		spec := "5"
/// 		if param := cfg.Get("spec"); param != "" {
/// 			spec = param
/// 		}
/// 		_default, err := vpn.GetGatewayZones(ctx, &vpn.GetGatewayZonesArgs{
/// 			Spec: "5M",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default0, err := vpc.NewSwitch(ctx, "default0", &vpc.SwitchArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/24"),
/// 			VpcId:     defaultNetwork.ID(),
/// 			ZoneId:    pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default1, err := vpc.NewSwitch(ctx, "default1", &vpc.SwitchArgs{
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 			VpcId:     defaultNetwork.ID(),
/// 			ZoneId:    pulumi.String(_default.Ids[1]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		HA_VPN, err := vpn.NewGateway(ctx, "HA-VPN", &vpn.GatewayArgs{
/// 			VpnType:                   pulumi.String("Normal"),
/// 			DisasterRecoveryVswitchId: default1.ID(),
/// 			VpnGatewayName:            pulumi.String(name),
/// 			VswitchId:                 default0.ID(),
/// 			AutoPay:                   pulumi.Bool(true),
/// 			VpcId:                     defaultNetwork.ID(),
/// 			NetworkType:               pulumi.String("public"),
/// 			PaymentType:               pulumi.String("Subscription"),
/// 			EnableIpsec:               pulumi.Bool(true),
/// 			Bandwidth:                 pulumi.String(spec),
/// 		})
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
/// 		_, err = vpn.NewConnection(ctx, "default", &vpn.ConnectionArgs{
/// 			VpnGatewayId:      HA_VPN.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpn.Gateway;
/// import com.pulumi.alicloud.vpn.GatewayArgs;
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.vpn.Connection;
/// import com.pulumi.alicloud.vpn.ConnectionArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationTunnelIpsecConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationTunnelBgpConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.ConnectionTunnelOptionsSpecificationTunnelIkeConfigArgs;
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
///         final var spec = config.get("spec").orElse("5");
///         final var default = VpnFunctions.getGatewayZones(GetGatewayZonesArgs.builder()
///             .spec("5M")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/16")
///             .vpcName(name)
///             .build());
///
///         var default0 = new Switch("default0", SwitchArgs.builder()
///             .cidrBlock("172.16.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.ids()[0])
///             .build());
///
///         var default1 = new Switch("default1", SwitchArgs.builder()
///             .cidrBlock("172.16.1.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.ids()[1])
///             .build());
///
///         var hA_VPN = new Gateway("HA-VPN", GatewayArgs.builder()
///             .vpnType("Normal")
///             .disasterRecoveryVswitchId(default1.id())
///             .vpnGatewayName(name)
///             .vswitchId(default0.id())
///             .autoPay(true)
///             .vpcId(defaultNetwork.id())
///             .networkType("public")
///             .paymentType("Subscription")
///             .enableIpsec(true)
///             .bandwidth(spec)
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
///             .vpnGatewayId(HA_VPN.id())
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
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   spec:
///     type: string
///     default: '5'
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/16
///       vpcName: ${name}
///   default0:
///     type: alicloud:vpc:Switch
///     properties:
///       cidrBlock: 172.16.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.ids[0]}
///   default1:
///     type: alicloud:vpc:Switch
///     properties:
///       cidrBlock: 172.16.1.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.ids[1]}
///   HA-VPN:
///     type: alicloud:vpn:Gateway
///     properties:
///       vpnType: Normal
///       disasterRecoveryVswitchId: ${default1.id}
///       vpnGatewayName: ${name}
///       vswitchId: ${default0.id}
///       autoPay: true
///       vpcId: ${defaultNetwork.id}
///       networkType: public
///       paymentType: Subscription
///       enableIpsec: true
///       bandwidth: ${spec}
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
///       vpnGatewayId: ${["HA-VPN"].id}
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
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpn:getGatewayZones
///       arguments:
///         spec: 5M
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPN connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/connection:Connection example <id>
/// ```
class Connection extends pulumi.CustomResource {
  /// Whether to configure routing automatically. Value:
  /// - **true**: Automatically configure routes.
  /// - **false**: does not automatically configure routes.
  late final pulumi.Output<bool?> autoConfigRoute;
  /// vpnBgp configuration. See `bgp_config` below.
  late final pulumi.Output<ConnectionBgpConfig> bgpConfig;
  /// The time when the IPsec-VPN connection was created.
  late final pulumi.Output<int> createTime;
  /// The ID of the customer gateway.
  late final pulumi.Output<String?> customerGatewayId;
  /// Indicates whether IPsec-VPN negotiations are initiated immediately. Valid values.
  late final pulumi.Output<bool?> effectImmediately;
  /// Wether enable Dpd detection.
  late final pulumi.Output<bool> enableDpd;
  /// enable nat traversal.
  late final pulumi.Output<bool> enableNatTraversal;
  /// Enable tunnel bgp.
  late final pulumi.Output<bool> enableTunnelsBgp;
  /// Health Check information. See `health_check_config` below.
  late final pulumi.Output<ConnectionHealthCheckConfig> healthCheckConfig;
  /// The configuration of Phase 1 negotiations. See `ike_config` below.
  late final pulumi.Output<ConnectionIkeConfig> ikeConfig;
  /// IPsec configuration. See `ipsec_config` below.
  late final pulumi.Output<ConnectionIpsecConfig> ipsecConfig;
  /// The CIDR block of the VPC to be connected with the local data center. This parameter is used for phase-two negotiation.
  late final pulumi.Output<List<String>> localSubnets;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_connection_name' instead.
  late final pulumi.Output<String> name;
  /// The network type of the IPsec connection. Value:
  /// - **public**: public network, indicating that the IPsec connection establishes an encrypted communication channel through the public network.
  /// - **private**: private network, indicating that the IPsec connection establishes an encrypted communication channel through the private network.
  late final pulumi.Output<String?> networkType;
  /// The CIDR block of the local data center. This parameter is used for phase-two negotiation.
  late final pulumi.Output<List<String>> remoteSubnets;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The negotiation status of Tunnel.
  late final pulumi.Output<String> status;
  /// Tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The tunnel options of IPsec. See `tunnel_options_specification` below.
  late final pulumi.Output<List<ConnectionTunnelOptionsSpecification>?> tunnelOptionsSpecifications;
  /// The name of the IPsec-VPN connection.
  late final pulumi.Output<String> vpnConnectionName;
  /// The ID of the VPN gateway.
  late final pulumi.Output<String> vpnGatewayId;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_vpn_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoConfigRoute = registerOutput<bool?>('autoConfigRoute');
    this.bgpConfig = registerOutput<ConnectionBgpConfig>('bgpConfig');
    this.createTime = registerOutput<int>('createTime');
    this.customerGatewayId = registerOutput<String?>('customerGatewayId');
    this.effectImmediately = registerOutput<bool?>('effectImmediately');
    this.enableDpd = registerOutput<bool>('enableDpd');
    this.enableNatTraversal = registerOutput<bool>('enableNatTraversal');
    this.enableTunnelsBgp = registerOutput<bool>('enableTunnelsBgp');
    this.healthCheckConfig = registerOutput<ConnectionHealthCheckConfig>('healthCheckConfig');
    this.ikeConfig = registerOutput<ConnectionIkeConfig>('ikeConfig');
    this.ipsecConfig = registerOutput<ConnectionIpsecConfig>('ipsecConfig');
    this.localSubnets = registerOutput<List<String>>('localSubnets');
    this.name = registerOutput<String>('name');
    this.networkType = registerOutput<String?>('networkType');
    this.remoteSubnets = registerOutput<List<String>>('remoteSubnets');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tunnelOptionsSpecifications = registerOutput<List<ConnectionTunnelOptionsSpecification>?>('tunnelOptionsSpecifications');
    this.vpnConnectionName = registerOutput<String>('vpnConnectionName');
    this.vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoConfigRoute = registerOutput<bool?>('autoConfigRoute');
    this.bgpConfig = registerOutput<ConnectionBgpConfig>('bgpConfig');
    this.createTime = registerOutput<int>('createTime');
    this.customerGatewayId = registerOutput<String?>('customerGatewayId');
    this.effectImmediately = registerOutput<bool?>('effectImmediately');
    this.enableDpd = registerOutput<bool>('enableDpd');
    this.enableNatTraversal = registerOutput<bool>('enableNatTraversal');
    this.enableTunnelsBgp = registerOutput<bool>('enableTunnelsBgp');
    this.healthCheckConfig = registerOutput<ConnectionHealthCheckConfig>('healthCheckConfig');
    this.ikeConfig = registerOutput<ConnectionIkeConfig>('ikeConfig');
    this.ipsecConfig = registerOutput<ConnectionIpsecConfig>('ipsecConfig');
    this.localSubnets = registerOutput<List<String>>('localSubnets');
    this.name = registerOutput<String>('name');
    this.networkType = registerOutput<String?>('networkType');
    this.remoteSubnets = registerOutput<List<String>>('remoteSubnets');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tunnelOptionsSpecifications = registerOutput<List<ConnectionTunnelOptionsSpecification>?>('tunnelOptionsSpecifications');
    this.vpnConnectionName = registerOutput<String>('vpnConnectionName');
    this.vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
