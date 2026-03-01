import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_vpn_server_args.dart';

/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const default0 = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const default1 = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[1],
/// }));
/// const defaultGateway = new alicloud.vpn.Gateway("default", {
///     vpnGatewayName: name,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     bandwidth: 10,
///     enableSsl: true,
///     description: name,
///     paymentType: "Subscription",
///     vswitchId: default0.then(default0 => default0.ids?.[0]),
///     disasterRecoveryVswitchId: default1.then(default1 => default1.ids?.[0]),
/// });
/// const defaultSslVpnServer = new alicloud.vpn.SslVpnServer("default", {
///     name: name,
///     vpnGatewayId: defaultGateway.id,
///     clientIpPool: "192.168.0.0/16",
///     localSubnet: defaultGetNetworks.then(defaultGetNetworks => std.cidrsubnet({
///         input: defaultGetNetworks.vpcs?.[0]?.cidrBlock,
///         newbits: 8,
///         netnum: 8,
///     })).then(invoke => invoke.result),
///     protocol: "UDP",
///     cipher: "AES-128-CBC",
///     port: 1194,
///     compress: false,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$",
///     cidr_block="172.16.0.0/16")
/// default0 = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// default1 = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[1])
/// default_gateway = alicloud.vpn.Gateway("default",
///     vpn_gateway_name=name,
///     vpc_id=default_get_networks.ids[0],
///     bandwidth=10,
///     enable_ssl=True,
///     description=name,
///     payment_type="Subscription",
///     vswitch_id=default0.ids[0],
///     disaster_recovery_vswitch_id=default1.ids[0])
/// default_ssl_vpn_server = alicloud.vpn.SslVpnServer("default",
///     name=name,
///     vpn_gateway_id=default_gateway.id,
///     client_ip_pool="192.168.0.0/16",
///     local_subnet=std.cidrsubnet(input=default_get_networks.vpcs[0].cidr_block,
///         newbits=8,
///         netnum=8).result,
///     protocol="UDP",
///     cipher="AES-128-CBC",
///     port=1194,
///     compress=False)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var default0 = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var default1 = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[1]),
///     });
///
///     var defaultGateway = new AliCloud.Vpn.Gateway("default", new()
///     {
///         VpnGatewayName = name,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         Bandwidth = 10,
///         EnableSsl = true,
///         Description = name,
///         PaymentType = "Subscription",
///         VswitchId = default0.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         DisasterRecoveryVswitchId = default1.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///     });
///
///     var defaultSslVpnServer = new AliCloud.Vpn.SslVpnServer("default", new()
///     {
///         Name = name,
///         VpnGatewayId = defaultGateway.Id,
///         ClientIpPool = "192.168.0.0/16",
///         LocalSubnet = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Vpcs[0]?.CidrBlock),
///             Newbits = 8,
///             Netnum = 8,
///         }).Apply(invoke => invoke.Result),
///         Protocol = "UDP",
///         Cipher = "AES-128-CBC",
///         Port = 1194,
///         Compress = false,
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
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 			CidrBlock: pulumi.StringRef("172.16.0.0/16"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default0, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default1, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Ids[1]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGateway, err := vpn.NewGateway(ctx, "default", &vpn.GatewayArgs{
/// 			VpnGatewayName:            pulumi.String(name),
/// 			VpcId:                     pulumi.String(defaultGetNetworks.Ids[0]),
/// 			Bandwidth:                 pulumi.Int(10),
/// 			EnableSsl:                 pulumi.Bool(true),
/// 			Description:               pulumi.String(name),
/// 			PaymentType:               pulumi.String("Subscription"),
/// 			VswitchId:                 pulumi.String(default0.Ids[0]),
/// 			DisasterRecoveryVswitchId: pulumi.String(default1.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   defaultGetNetworks.Vpcs[0].CidrBlock,
/// 			Newbits: 8,
/// 			Netnum:  8,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpn.NewSslVpnServer(ctx, "default", &vpn.SslVpnServerArgs{
/// 			Name:         pulumi.String(name),
/// 			VpnGatewayId: defaultGateway.ID(),
/// 			ClientIpPool: pulumi.String("192.168.0.0/16"),
/// 			LocalSubnet:  pulumi.String(invokeCidrsubnet.Result),
/// 			Protocol:     pulumi.String("UDP"),
/// 			Cipher:       pulumi.String("AES-128-CBC"),
/// 			Port:         pulumi.Int(1194),
/// 			Compress:     pulumi.Bool(false),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.vpn.Gateway;
/// import com.pulumi.alicloud.vpn.GatewayArgs;
/// import com.pulumi.alicloud.vpn.SslVpnServer;
/// import com.pulumi.alicloud.vpn.SslVpnServerArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
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
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         final var default0 = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[0])
///             .build());
///
///         final var default1 = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[1])
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .vpnGatewayName(name)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .bandwidth(10)
///             .enableSsl(true)
///             .description(name)
///             .paymentType("Subscription")
///             .vswitchId(default0.ids()[0])
///             .disasterRecoveryVswitchId(default1.ids()[0])
///             .build());
///
///         var defaultSslVpnServer = new SslVpnServer("defaultSslVpnServer", SslVpnServerArgs.builder()
///             .name(name)
///             .vpnGatewayId(defaultGateway.id())
///             .clientIpPool("192.168.0.0/16")
///             .localSubnet(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(defaultGetNetworks.vpcs()[0].cidrBlock())
///                 .newbits(8)
///                 .netnum(8)
///                 .build()).result())
///             .protocol("UDP")
///             .cipher("AES-128-CBC")
///             .port(1194)
///             .compress(false)
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
///   defaultGateway:
///     type: alicloud:vpn:Gateway
///     name: default
///     properties:
///       vpnGatewayName: ${name}
///       vpcId: ${defaultGetNetworks.ids[0]}
///       bandwidth: '10'
///       enableSsl: true
///       description: ${name}
///       paymentType: Subscription
///       vswitchId: ${default0.ids[0]}
///       disasterRecoveryVswitchId: ${default1.ids[0]}
///   defaultSslVpnServer:
///     type: alicloud:vpn:SslVpnServer
///     name: default
///     properties:
///       name: ${name}
///       vpnGatewayId: ${defaultGateway.id}
///       clientIpPool: 192.168.0.0/16
///       localSubnet:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: ${defaultGetNetworks.vpcs[0].cidrBlock}
///             newbits: 8
///             netnum: 8
///           return: result
///       protocol: UDP
///       cipher: AES-128-CBC
///       port: '1194'
///       compress: 'false'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///         cidrBlock: 172.16.0.0/16
///   default0:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.ids[0]}
///   default1:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.ids[1]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SSL-VPN server can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/sslVpnServer:SslVpnServer example vss-abc123456
/// ```
class SslVpnServer extends pulumi.CustomResource {
  /// The encryption algorithm that is used in the SSL-VPN connection. Valid values: `AES-128-CBC`,`AES-192-CBC`,`AES-256-CBC`,`none`. Default value: `AES-128-CBC`.
  /// * `AES-128-CBC` - the AES-128-CBC algorithm.
  /// * `AES-192-CBC` - the AES-192-CBC algorithm.
  /// * `AES-256-CBC` - the AES-256-CBC algorithm.
  late final pulumi.Output<String?> cipher;
  /// The CIDR block from which access addresses are allocated to the virtual network interface card of the client.
  late final pulumi.Output<String> clientIpPool;
  /// Specifies whether to enable data compression. Valid values: `true`,`false`. Default value: `false`
  late final pulumi.Output<bool?> compress;
  /// The number of current connections.
  late final pulumi.Output<int> connections;
  /// The internet IP of the SSL-VPN server.
  late final pulumi.Output<String> internetIp;
  /// The CIDR block to be accessed by the client through the SSL-VPN connection. It supports to set multi CIDRs by comma join ways, like `10.0.1.0/24,10.0.2.0/24,10.0.3.0/24`.
  late final pulumi.Output<String> localSubnet;
  /// The maximum number of connections.
  late final pulumi.Output<int> maxConnections;
  /// The name of the SSL-VPN server.
  late final pulumi.Output<String> name;
  /// The port used by the SSL-VPN server. The default value is `1194`.The following ports cannot be used: [22, 2222, 22222, 9000, 9001, 9002, 7505, 80, 443, 53, 68, 123, 4510, 4560, 500, 4500].
  late final pulumi.Output<int?> port;
  /// The protocol used by the SSL-VPN server. Valid value: UDP(default) |TCP
  late final pulumi.Output<String?> protocol;
  /// The ID of the VPN gateway.
  late final pulumi.Output<String> vpnGatewayId;

  /// Creates a new [SslVpnServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SslVpnServer]. {@macro pulumi_vpn_ssl_vpn_server_ssl_vpn_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SslVpnServer(
    String name, {
    SslVpnServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/sslVpnServer:SslVpnServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cipher = registerOutput<String?>('cipher');
    this.clientIpPool = registerOutput<String>('clientIpPool');
    this.compress = registerOutput<bool?>('compress');
    this.connections = registerOutput<int>('connections');
    this.internetIp = registerOutput<String>('internetIp');
    this.localSubnet = registerOutput<String>('localSubnet');
    this.maxConnections = registerOutput<int>('maxConnections');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int?>('port');
    this.protocol = registerOutput<String?>('protocol');
    this.vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
