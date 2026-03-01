import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_vpn_attachment_args.dart';
import 'gateway_vpn_attachment_bgp_config.dart';
import 'gateway_vpn_attachment_health_check_config.dart';
import 'gateway_vpn_attachment_ike_config.dart';
import 'gateway_vpn_attachment_ipsec_config.dart';
import 'gateway_vpn_attachment_state.dart';
import 'gateway_vpn_attachment_tunnel_options_specification.dart';

/// Provides a VPN Gateway Vpn Attachment resource.
///
/// VpnAttachment has been upgraded to dual-tunnel mode. When you create a VpnAttachment in dual tunnel mode, you can configure the following request parameters in addition to the required parameters: vpn_attachment_name, network_type, effectImmediately, tags array, resource_group_id, tunnel_options_specification array, and enable_tunnels_bgp.
///
/// For information about VPN Gateway Vpn Attachment and how to use it, see [What is Vpn Attachment](https://www.alibabacloud.com/help/zh/virtual-private-cloud/latest/createvpnattachment).
///
/// > **NOTE:** Available since v1.181.0.
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
/// const _default = new alicloud.vpn.CustomerGateway("default", {
///     customerGatewayName: name,
///     ipAddress: "42.104.22.210",
///     asn: "45014",
///     description: name,
/// });
/// const defaultGatewayVpnAttachment = new alicloud.vpn.GatewayVpnAttachment("default", {
///     customerGatewayId: _default.id,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.vpn.CustomerGateway("default",
///     customer_gateway_name=name,
///     ip_address="42.104.22.210",
///     asn="45014",
///     description=name)
/// default_gateway_vpn_attachment = alicloud.vpn.GatewayVpnAttachment("default",
///     customer_gateway_id=default.id,
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
///     var @default = new AliCloud.Vpn.CustomerGateway("default", new()
///     {
///         CustomerGatewayName = name,
///         IpAddress = "42.104.22.210",
///         Asn = "45014",
///         Description = name,
///     });
///
///     var defaultGatewayVpnAttachment = new AliCloud.Vpn.GatewayVpnAttachment("default", new()
///     {
///         CustomerGatewayId = @default.Id,
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := vpn.NewCustomerGateway(ctx, "default", &vpn.CustomerGatewayArgs{
/// 			CustomerGatewayName: pulumi.String(name),
/// 			IpAddress:           pulumi.String("42.104.22.210"),
/// 			Asn:                 pulumi.String("45014"),
/// 			Description:         pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpn.NewGatewayVpnAttachment(ctx, "default", &vpn.GatewayVpnAttachmentArgs{
/// 			CustomerGatewayId: _default.ID(),
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
/// 			VpnAttachmentName:  pulumi.String(name),
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
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachment;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachmentArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentIkeConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentIpsecConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentBgpConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentHealthCheckConfigArgs;
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
///         var default_ = new CustomerGateway("default", CustomerGatewayArgs.builder()
///             .customerGatewayName(name)
///             .ipAddress("42.104.22.210")
///             .asn("45014")
///             .description(name)
///             .build());
///
///         var defaultGatewayVpnAttachment = new GatewayVpnAttachment("defaultGatewayVpnAttachment", GatewayVpnAttachmentArgs.builder()
///             .customerGatewayId(default_.id())
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
///     type: alicloud:vpn:CustomerGateway
///     properties:
///       customerGatewayName: ${name}
///       ipAddress: 42.104.22.210
///       asn: '45014'
///       description: ${name}
///   defaultGatewayVpnAttachment:
///     type: alicloud:vpn:GatewayVpnAttachment
///     name: default
///     properties:
///       customerGatewayId: ${default.id}
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const cgw1 = new alicloud.vpn.CustomerGateway("cgw1", {
///     ipAddress: "2.2.2.2",
///     asn: "1219001",
/// });
/// const cgw2 = new alicloud.vpn.CustomerGateway("cgw2", {
///     ipAddress: "43.43.3.22",
///     asn: "44331",
///     customerGatewayName: "example_amp",
/// });
/// const defaultGatewayVpnAttachment = new alicloud.vpn.GatewayVpnAttachment("default", {
///     localSubnet: "0.0.0.0/0",
///     enableTunnelsBgp: true,
///     vpnAttachmentName: "tfaccvpngateway25800",
///     tunnelOptionsSpecifications: [
///         {
///             tunnelIpsecConfig: {
///                 ipsecLifetime: 86200,
///                 ipsecPfs: "group5",
///                 ipsecAuthAlg: "md5",
///                 ipsecEncAlg: "aes",
///             },
///             customerGatewayId: cgw1.id,
///             enableDpd: true,
///             enableNatTraversal: true,
///             tunnelIndex: 1,
///             tunnelBgpConfig: {
///                 localAsn: 1219001,
///                 localBgpIp: "169.254.10.1",
///                 tunnelCidr: "169.254.10.0/30",
///             },
///             tunnelIkeConfig: {
///                 ikeMode: "main",
///                 ikeVersion: "ikev1",
///                 psk: "12345678",
///                 remoteId: "2.2.2.2",
///                 ikeAuthAlg: "md5",
///                 ikeEncAlg: "aes",
///                 ikeLifetime: 86100,
///                 ikePfs: "group2",
///                 localId: "1.1.1.1",
///             },
///         },
///         {
///             tunnelIpsecConfig: {
///                 ipsecEncAlg: "aes",
///                 ipsecLifetime: 86400,
///                 ipsecPfs: "group5",
///                 ipsecAuthAlg: "sha256",
///             },
///             customerGatewayId: cgw1.id,
///             enableDpd: true,
///             enableNatTraversal: true,
///             tunnelIndex: 2,
///             tunnelBgpConfig: {
///                 localAsn: 1219001,
///                 localBgpIp: "169.254.20.1",
///                 tunnelCidr: "169.254.20.0/30",
///             },
///             tunnelIkeConfig: {
///                 localId: "4.4.4.4",
///                 remoteId: "5.5.5.5",
///                 ikeLifetime: 86400,
///                 ikeMode: "main",
///                 ikePfs: "group5",
///                 ikeVersion: "ikev2",
///                 ikeAuthAlg: "md5",
///                 ikeEncAlg: "aes",
///                 psk: "32333442",
///             },
///         },
///     ],
///     remoteSubnet: "0.0.0.0/0",
///     networkType: "public",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// cgw1 = alicloud.vpn.CustomerGateway("cgw1",
///     ip_address="2.2.2.2",
///     asn="1219001")
/// cgw2 = alicloud.vpn.CustomerGateway("cgw2",
///     ip_address="43.43.3.22",
///     asn="44331",
///     customer_gateway_name="example_amp")
/// default_gateway_vpn_attachment = alicloud.vpn.GatewayVpnAttachment("default",
///     local_subnet="0.0.0.0/0",
///     enable_tunnels_bgp=True,
///     vpn_attachment_name="tfaccvpngateway25800",
///     tunnel_options_specifications=[
///         {
///             "tunnel_ipsec_config": {
///                 "ipsec_lifetime": 86200,
///                 "ipsec_pfs": "group5",
///                 "ipsec_auth_alg": "md5",
///                 "ipsec_enc_alg": "aes",
///             },
///             "customer_gateway_id": cgw1.id,
///             "enable_dpd": True,
///             "enable_nat_traversal": True,
///             "tunnel_index": 1,
///             "tunnel_bgp_config": {
///                 "local_asn": 1219001,
///                 "local_bgp_ip": "169.254.10.1",
///                 "tunnel_cidr": "169.254.10.0/30",
///             },
///             "tunnel_ike_config": {
///                 "ike_mode": "main",
///                 "ike_version": "ikev1",
///                 "psk": "12345678",
///                 "remote_id": "2.2.2.2",
///                 "ike_auth_alg": "md5",
///                 "ike_enc_alg": "aes",
///                 "ike_lifetime": 86100,
///                 "ike_pfs": "group2",
///                 "local_id": "1.1.1.1",
///             },
///         },
///         {
///             "tunnel_ipsec_config": {
///                 "ipsec_enc_alg": "aes",
///                 "ipsec_lifetime": 86400,
///                 "ipsec_pfs": "group5",
///                 "ipsec_auth_alg": "sha256",
///             },
///             "customer_gateway_id": cgw1.id,
///             "enable_dpd": True,
///             "enable_nat_traversal": True,
///             "tunnel_index": 2,
///             "tunnel_bgp_config": {
///                 "local_asn": 1219001,
///                 "local_bgp_ip": "169.254.20.1",
///                 "tunnel_cidr": "169.254.20.0/30",
///             },
///             "tunnel_ike_config": {
///                 "local_id": "4.4.4.4",
///                 "remote_id": "5.5.5.5",
///                 "ike_lifetime": 86400,
///                 "ike_mode": "main",
///                 "ike_pfs": "group5",
///                 "ike_version": "ikev2",
///                 "ike_auth_alg": "md5",
///                 "ike_enc_alg": "aes",
///                 "psk": "32333442",
///             },
///         },
///     ],
///     remote_subnet="0.0.0.0/0",
///     network_type="public",
///     resource_group_id=default.ids[0])
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var cgw1 = new AliCloud.Vpn.CustomerGateway("cgw1", new()
///     {
///         IpAddress = "2.2.2.2",
///         Asn = "1219001",
///     });
///
///     var cgw2 = new AliCloud.Vpn.CustomerGateway("cgw2", new()
///     {
///         IpAddress = "43.43.3.22",
///         Asn = "44331",
///         CustomerGatewayName = "example_amp",
///     });
///
///     var defaultGatewayVpnAttachment = new AliCloud.Vpn.GatewayVpnAttachment("default", new()
///     {
///         LocalSubnet = "0.0.0.0/0",
///         EnableTunnelsBgp = true,
///         VpnAttachmentName = "tfaccvpngateway25800",
///         TunnelOptionsSpecifications = new[]
///         {
///             new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs
///             {
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecLifetime = 86200,
///                     IpsecPfs = "group5",
///                     IpsecAuthAlg = "md5",
///                     IpsecEncAlg = "aes",
///                 },
///                 CustomerGatewayId = cgw1.Id,
///                 EnableDpd = true,
///                 EnableNatTraversal = true,
///                 TunnelIndex = 1,
///                 TunnelBgpConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfigArgs
///                 {
///                     LocalAsn = 1219001,
///                     LocalBgpIp = "169.254.10.1",
///                     TunnelCidr = "169.254.10.0/30",
///                 },
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     IkeMode = "main",
///                     IkeVersion = "ikev1",
///                     Psk = "12345678",
///                     RemoteId = "2.2.2.2",
///                     IkeAuthAlg = "md5",
///                     IkeEncAlg = "aes",
///                     IkeLifetime = 86100,
///                     IkePfs = "group2",
///                     LocalId = "1.1.1.1",
///                 },
///             },
///             new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs
///             {
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecEncAlg = "aes",
///                     IpsecLifetime = 86400,
///                     IpsecPfs = "group5",
///                     IpsecAuthAlg = "sha256",
///                 },
///                 CustomerGatewayId = cgw1.Id,
///                 EnableDpd = true,
///                 EnableNatTraversal = true,
///                 TunnelIndex = 2,
///                 TunnelBgpConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfigArgs
///                 {
///                     LocalAsn = 1219001,
///                     LocalBgpIp = "169.254.20.1",
///                     TunnelCidr = "169.254.20.0/30",
///                 },
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     LocalId = "4.4.4.4",
///                     RemoteId = "5.5.5.5",
///                     IkeLifetime = 86400,
///                     IkeMode = "main",
///                     IkePfs = "group5",
///                     IkeVersion = "ikev2",
///                     IkeAuthAlg = "md5",
///                     IkeEncAlg = "aes",
///                     Psk = "32333442",
///                 },
///             },
///         },
///         RemoteSubnet = "0.0.0.0/0",
///         NetworkType = "public",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cgw1, err := vpn.NewCustomerGateway(ctx, "cgw1", &vpn.CustomerGatewayArgs{
/// 			IpAddress: pulumi.String("2.2.2.2"),
/// 			Asn:       pulumi.String("1219001"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpn.NewCustomerGateway(ctx, "cgw2", &vpn.CustomerGatewayArgs{
/// 			IpAddress:           pulumi.String("43.43.3.22"),
/// 			Asn:                 pulumi.String("44331"),
/// 			CustomerGatewayName: pulumi.String("example_amp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpn.NewGatewayVpnAttachment(ctx, "default", &vpn.GatewayVpnAttachmentArgs{
/// 			LocalSubnet:       pulumi.String("0.0.0.0/0"),
/// 			EnableTunnelsBgp:  pulumi.Bool(true),
/// 			VpnAttachmentName: pulumi.String("tfaccvpngateway25800"),
/// 			TunnelOptionsSpecifications: vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArray{
/// 				&vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArgs{
/// 					TunnelIpsecConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecLifetime: pulumi.Int(86200),
/// 						IpsecPfs:      pulumi.String("group5"),
/// 						IpsecAuthAlg:  pulumi.String("md5"),
/// 						IpsecEncAlg:   pulumi.String("aes"),
/// 					},
/// 					CustomerGatewayId:  cgw1.ID(),
/// 					EnableDpd:          pulumi.Bool(true),
/// 					EnableNatTraversal: pulumi.Bool(true),
/// 					TunnelIndex:        pulumi.Int(1),
/// 					TunnelBgpConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfigArgs{
/// 						LocalAsn:   pulumi.Int(1219001),
/// 						LocalBgpIp: pulumi.String("169.254.10.1"),
/// 						TunnelCidr: pulumi.String("169.254.10.0/30"),
/// 					},
/// 					TunnelIkeConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						IkeMode:     pulumi.String("main"),
/// 						IkeVersion:  pulumi.String("ikev1"),
/// 						Psk:         pulumi.String("12345678"),
/// 						RemoteId:    pulumi.String("2.2.2.2"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeEncAlg:   pulumi.String("aes"),
/// 						IkeLifetime: pulumi.Int(86100),
/// 						IkePfs:      pulumi.String("group2"),
/// 						LocalId:     pulumi.String("1.1.1.1"),
/// 					},
/// 				},
/// 				&vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArgs{
/// 					TunnelIpsecConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecEncAlg:   pulumi.String("aes"),
/// 						IpsecLifetime: pulumi.Int(86400),
/// 						IpsecPfs:      pulumi.String("group5"),
/// 						IpsecAuthAlg:  pulumi.String("sha256"),
/// 					},
/// 					CustomerGatewayId:  cgw1.ID(),
/// 					EnableDpd:          pulumi.Bool(true),
/// 					EnableNatTraversal: pulumi.Bool(true),
/// 					TunnelIndex:        pulumi.Int(2),
/// 					TunnelBgpConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfigArgs{
/// 						LocalAsn:   pulumi.Int(1219001),
/// 						LocalBgpIp: pulumi.String("169.254.20.1"),
/// 						TunnelCidr: pulumi.String("169.254.20.0/30"),
/// 					},
/// 					TunnelIkeConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						LocalId:     pulumi.String("4.4.4.4"),
/// 						RemoteId:    pulumi.String("5.5.5.5"),
/// 						IkeLifetime: pulumi.Int(86400),
/// 						IkeMode:     pulumi.String("main"),
/// 						IkePfs:      pulumi.String("group5"),
/// 						IkeVersion:  pulumi.String("ikev2"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeEncAlg:   pulumi.String("aes"),
/// 						Psk:         pulumi.String("32333442"),
/// 					},
/// 				},
/// 			},
/// 			RemoteSubnet:    pulumi.String("0.0.0.0/0"),
/// 			NetworkType:     pulumi.String("public"),
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachment;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachmentArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var cgw1 = new CustomerGateway("cgw1", CustomerGatewayArgs.builder()
///             .ipAddress("2.2.2.2")
///             .asn("1219001")
///             .build());
///
///         var cgw2 = new CustomerGateway("cgw2", CustomerGatewayArgs.builder()
///             .ipAddress("43.43.3.22")
///             .asn("44331")
///             .customerGatewayName("example_amp")
///             .build());
///
///         var defaultGatewayVpnAttachment = new GatewayVpnAttachment("defaultGatewayVpnAttachment", GatewayVpnAttachmentArgs.builder()
///             .localSubnet("0.0.0.0/0")
///             .enableTunnelsBgp(true)
///             .vpnAttachmentName("tfaccvpngateway25800")
///             .tunnelOptionsSpecifications(
///                 GatewayVpnAttachmentTunnelOptionsSpecificationArgs.builder()
///                     .tunnelIpsecConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecLifetime(86200)
///                         .ipsecPfs("group5")
///                         .ipsecAuthAlg("md5")
///                         .ipsecEncAlg("aes")
///                         .build())
///                     .customerGatewayId(cgw1.id())
///                     .enableDpd(true)
///                     .enableNatTraversal(true)
///                     .tunnelIndex(1)
///                     .tunnelBgpConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfigArgs.builder()
///                         .localAsn(1219001)
///                         .localBgpIp("169.254.10.1")
///                         .tunnelCidr("169.254.10.0/30")
///                         .build())
///                     .tunnelIkeConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .ikeMode("main")
///                         .ikeVersion("ikev1")
///                         .psk("12345678")
///                         .remoteId("2.2.2.2")
///                         .ikeAuthAlg("md5")
///                         .ikeEncAlg("aes")
///                         .ikeLifetime(86100)
///                         .ikePfs("group2")
///                         .localId("1.1.1.1")
///                         .build())
///                     .build(),
///                 GatewayVpnAttachmentTunnelOptionsSpecificationArgs.builder()
///                     .tunnelIpsecConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecEncAlg("aes")
///                         .ipsecLifetime(86400)
///                         .ipsecPfs("group5")
///                         .ipsecAuthAlg("sha256")
///                         .build())
///                     .customerGatewayId(cgw1.id())
///                     .enableDpd(true)
///                     .enableNatTraversal(true)
///                     .tunnelIndex(2)
///                     .tunnelBgpConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfigArgs.builder()
///                         .localAsn(1219001)
///                         .localBgpIp("169.254.20.1")
///                         .tunnelCidr("169.254.20.0/30")
///                         .build())
///                     .tunnelIkeConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .localId("4.4.4.4")
///                         .remoteId("5.5.5.5")
///                         .ikeLifetime(86400)
///                         .ikeMode("main")
///                         .ikePfs("group5")
///                         .ikeVersion("ikev2")
///                         .ikeAuthAlg("md5")
///                         .ikeEncAlg("aes")
///                         .psk("32333442")
///                         .build())
///                     .build())
///             .remoteSubnet("0.0.0.0/0")
///             .networkType("public")
///             .resourceGroupId(default_.ids()[0])
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
///   cgw1:
///     type: alicloud:vpn:CustomerGateway
///     properties:
///       ipAddress: 2.2.2.2
///       asn: '1219001'
///   cgw2:
///     type: alicloud:vpn:CustomerGateway
///     properties:
///       ipAddress: 43.43.3.22
///       asn: '44331'
///       customerGatewayName: example_amp
///   defaultGatewayVpnAttachment:
///     type: alicloud:vpn:GatewayVpnAttachment
///     name: default
///     properties:
///       localSubnet: 0.0.0.0/0
///       enableTunnelsBgp: 'true'
///       vpnAttachmentName: tfaccvpngateway25800
///       tunnelOptionsSpecifications:
///         - tunnelIpsecConfig:
///             ipsecLifetime: '86200'
///             ipsecPfs: group5
///             ipsecAuthAlg: md5
///             ipsecEncAlg: aes
///           customerGatewayId: ${cgw1.id}
///           enableDpd: 'true'
///           enableNatTraversal: 'true'
///           tunnelIndex: '1'
///           tunnelBgpConfig:
///             localAsn: '1219001'
///             localBgpIp: 169.254.10.1
///             tunnelCidr: 169.254.10.0/30
///           tunnelIkeConfig:
///             ikeMode: main
///             ikeVersion: ikev1
///             psk: '12345678'
///             remoteId: 2.2.2.2
///             ikeAuthAlg: md5
///             ikeEncAlg: aes
///             ikeLifetime: '86100'
///             ikePfs: group2
///             localId: 1.1.1.1
///         - tunnelIpsecConfig:
///             ipsecEncAlg: aes
///             ipsecLifetime: '86400'
///             ipsecPfs: group5
///             ipsecAuthAlg: sha256
///           customerGatewayId: ${cgw1.id}
///           enableDpd: 'true'
///           enableNatTraversal: 'true'
///           tunnelIndex: '2'
///           tunnelBgpConfig:
///             localAsn: '1219001'
///             localBgpIp: 169.254.20.1
///             tunnelCidr: 169.254.20.0/30
///           tunnelIkeConfig:
///             localId: 4.4.4.4
///             remoteId: 5.5.5.5
///             ikeLifetime: '86400'
///             ikeMode: main
///             ikePfs: group5
///             ikeVersion: ikev2
///             ikeAuthAlg: md5
///             ikeEncAlg: aes
///             psk: '32333442'
///       remoteSubnet: 0.0.0.0/0
///       networkType: public
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPN Gateway Vpn Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/gatewayVpnAttachment:GatewayVpnAttachment example <id>
/// ```
class GatewayVpnAttachment extends pulumi.CustomResource {
  /// Bgp configuration information.
  /// - This parameter is supported when you create an vpn attachment in single-tunnel mode. See `bgp_config` below.
  late final pulumi.Output<GatewayVpnAttachmentBgpConfig> bgpConfig;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Customer gateway ID.
  /// - This parameter is required when creating a single-tunnel mode vpn attachment.
  late final pulumi.Output<String?> customerGatewayId;
  /// Specifies whether to immediately start IPsec negotiations after the configuration takes effect. Valid values:
  late final pulumi.Output<bool> effectImmediately;
  /// This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// Whether to enable the DPD (peer survival detection) function.
  /// - true (default): enables DPD. The initiator of the IPsec-VPN connection sends DPD packets to check the existence and availability of the peer. If no feedback is received from the peer within the specified period of time, the connection fails. In this case, ISAKMP SA and IPsec SA are deleted along with the security tunnel.
  /// - false: disables DPD. The initiator of the IPsec-VPN connection does not send DPD packets.
  late final pulumi.Output<bool> enableDpd;
  /// This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// Specifies whether to enable NAT traversal. Valid values:
  /// - true (default): enables NAT traversal. After NAT traversal is enabled, the initiator does not check the UDP ports during IKE negotiations and can automatically discover NAT gateway devices along the vpn attachment tunnel.
  /// - false: disables NAT traversal.
  late final pulumi.Output<bool> enableNatTraversal;
  /// You can configure this parameter when you create a vpn attachment in dual-tunnel mode.Whether to enable the BGP function for the tunnel. Value: `true` or `false` (default).
  ///
  /// > **NOTE:**  before adding BGP configuration, we recommend that you understand the working mechanism and usage restrictions of the BGP dynamic routing function.
  late final pulumi.Output<bool> enableTunnelsBgp;
  /// This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// Health check configuration information. See `health_check_config` below.
  late final pulumi.Output<GatewayVpnAttachmentHealthCheckConfig> healthCheckConfig;
  /// The configurations of Phase 1 negotiations.
  /// - This parameter is supported if you create an vpn attachment in single-tunnel mode. See `ike_config` below.
  late final pulumi.Output<GatewayVpnAttachmentIkeConfig> ikeConfig;
  /// Configuration negotiated in the second stage.
  /// - This parameter is supported if you create an vpn attachment in single-tunnel mode. See `ipsec_config` below.
  late final pulumi.Output<GatewayVpnAttachmentIpsecConfig> ipsecConfig;
  /// The CIDR block on the VPC side. The CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.1.0/24,192.168.2.0/24.The following routing modes are supported:
  /// - If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.
  /// - If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  late final pulumi.Output<String> localSubnet;
  /// network type
  late final pulumi.Output<String> networkType;
  /// The CIDR block on the data center side. This CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.3.0/24,192.168.4.0/24.The following routing modes are supported:
  /// - If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.
  /// - If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  late final pulumi.Output<String> remoteSubnet;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The negotiation status of Tunnel.
  late final pulumi.Output<String> status;
  /// Tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Configure the tunnel.
  /// - You can configure parameters in the `tunnel_options_specification` array when you create a vpn attachment in dual-tunnel mode.
  /// - When creating a vpn attachment in dual-tunnel mode, you must add both tunnels for the vpn attachment to ensure that the vpn attachment has link redundancy. Only two tunnels can be added to a vpn attachment. See `tunnel_options_specification` below.
  late final pulumi.Output<List<GatewayVpnAttachmentTunnelOptionsSpecification>> tunnelOptionsSpecifications;
  /// vpn attachment name
  late final pulumi.Output<String?> vpnAttachmentName;

  /// Creates a new [GatewayVpnAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayVpnAttachment]. {@macro pulumi_vpn_gateway_vpn_attachment_gateway_vpn_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayVpnAttachment(
    String name, {
    GatewayVpnAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/gatewayVpnAttachment:GatewayVpnAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bgpConfig = registerOutput<GatewayVpnAttachmentBgpConfig>('bgpConfig');
    this.createTime = registerOutput<String>('createTime');
    this.customerGatewayId = registerOutput<String?>('customerGatewayId');
    this.effectImmediately = registerOutput<bool>('effectImmediately');
    this.enableDpd = registerOutput<bool>('enableDpd');
    this.enableNatTraversal = registerOutput<bool>('enableNatTraversal');
    this.enableTunnelsBgp = registerOutput<bool>('enableTunnelsBgp');
    this.healthCheckConfig = registerOutput<GatewayVpnAttachmentHealthCheckConfig>('healthCheckConfig');
    this.ikeConfig = registerOutput<GatewayVpnAttachmentIkeConfig>('ikeConfig');
    this.ipsecConfig = registerOutput<GatewayVpnAttachmentIpsecConfig>('ipsecConfig');
    this.localSubnet = registerOutput<String>('localSubnet');
    this.networkType = registerOutput<String>('networkType');
    this.remoteSubnet = registerOutput<String>('remoteSubnet');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tunnelOptionsSpecifications = registerOutput<List<GatewayVpnAttachmentTunnelOptionsSpecification>>('tunnelOptionsSpecifications');
    this.vpnAttachmentName = registerOutput<String?>('vpnAttachmentName');
  }

  /// Gets an existing [GatewayVpnAttachment] resource's state with the given [name] and [id].
  static GatewayVpnAttachment get(
    String name,
    pulumi.Input<String> id, {
    GatewayVpnAttachmentState? state,
  }) {
    return GatewayVpnAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayVpnAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/gatewayVpnAttachment:GatewayVpnAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bgpConfig = registerOutput<GatewayVpnAttachmentBgpConfig>('bgpConfig');
    this.createTime = registerOutput<String>('createTime');
    this.customerGatewayId = registerOutput<String?>('customerGatewayId');
    this.effectImmediately = registerOutput<bool>('effectImmediately');
    this.enableDpd = registerOutput<bool>('enableDpd');
    this.enableNatTraversal = registerOutput<bool>('enableNatTraversal');
    this.enableTunnelsBgp = registerOutput<bool>('enableTunnelsBgp');
    this.healthCheckConfig = registerOutput<GatewayVpnAttachmentHealthCheckConfig>('healthCheckConfig');
    this.ikeConfig = registerOutput<GatewayVpnAttachmentIkeConfig>('ikeConfig');
    this.ipsecConfig = registerOutput<GatewayVpnAttachmentIpsecConfig>('ipsecConfig');
    this.localSubnet = registerOutput<String>('localSubnet');
    this.networkType = registerOutput<String>('networkType');
    this.remoteSubnet = registerOutput<String>('remoteSubnet');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tunnelOptionsSpecifications = registerOutput<List<GatewayVpnAttachmentTunnelOptionsSpecification>>('tunnelOptionsSpecifications');
    this.vpnAttachmentName = registerOutput<String?>('vpnAttachmentName');
  }
}
