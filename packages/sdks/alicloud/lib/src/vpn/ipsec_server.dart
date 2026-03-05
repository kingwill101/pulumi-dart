import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_server_args.dart';
import 'ipsec_server_state.dart';

/// Provides a VPN Ipsec Server resource.
///
/// For information about VPN Ipsec Server and how to use it, see [What is Ipsec Server](https://www.alibabacloud.com/help/en/vpn/sub-product-ssl-vpn/developer-reference/api-vpc-2016-04-28-createipsecserver-ssl-vpn).
///
/// &gt; **NOTE:** Available since v1.161.0.
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
/// const foo = new alicloud.vpn.IpsecServer("foo", {
///     clientIpPool: "10.0.0.0/24",
///     ipsecServerName: name,
///     localSubnet: "192.168.0.0/24",
///     vpnGatewayId: defaultGateway.id,
///     pskEnabled: true,
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
/// foo = alicloud.vpn.IpsecServer("foo",
///     client_ip_pool="10.0.0.0/24",
///     ipsec_server_name=name,
///     local_subnet="192.168.0.0/24",
///     vpn_gateway_id=default_gateway.id,
///     psk_enabled=True)
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
///     var foo = new AliCloud.Vpn.IpsecServer("foo", new()
///     {
///         ClientIpPool = "10.0.0.0/24",
///         IpsecServerName = name,
///         LocalSubnet = "192.168.0.0/24",
///         VpnGatewayId = defaultGateway.Id,
///         PskEnabled = true,
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
/// 		_, err = vpn.NewIpsecServer(ctx, "foo", &vpn.IpsecServerArgs{
/// 			ClientIpPool:    pulumi.String("10.0.0.0/24"),
/// 			IpsecServerName: pulumi.String(name),
/// 			LocalSubnet:     pulumi.String("192.168.0.0/24"),
/// 			VpnGatewayId:    defaultGateway.ID(),
/// 			PskEnabled:      pulumi.Bool(true),
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
/// import com.pulumi.alicloud.vpn.IpsecServer;
/// import com.pulumi.alicloud.vpn.IpsecServerArgs;
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
///         var foo = new IpsecServer("foo", IpsecServerArgs.builder()
///             .clientIpPool("10.0.0.0/24")
///             .ipsecServerName(name)
///             .localSubnet("192.168.0.0/24")
///             .vpnGatewayId(defaultGateway.id())
///             .pskEnabled(true)
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
///   foo:
///     type: alicloud:vpn:IpsecServer
///     properties:
///       clientIpPool: 10.0.0.0/24
///       ipsecServerName: ${name}
///       localSubnet: 192.168.0.0/24
///       vpnGatewayId: ${defaultGateway.id}
///       pskEnabled: true
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
/// VPN Ipsec Server can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/ipsecServer:IpsecServer example <id>
/// ```
class IpsecServer extends pulumi.CustomResource {
  /// The client CIDR block. It refers to the CIDR block that is allocated to the virtual interface of the client.
  late final pulumi.Output<String> clientIpPool;
  /// The dry run.
  late final pulumi.Output<bool?> dryRun;
  /// Specifies whether you want the configuration to immediately take effect.
  late final pulumi.Output<bool?> effectImmediately;
  /// The configuration of Phase 1 negotiations. See `ike_config` below.
  late final pulumi.Output<List<Map<String, dynamic>>> ikeConfigs;
  /// The configuration of Phase 2 negotiations. See `ipsec_config` below.
  late final pulumi.Output<List<Map<String, dynamic>>> ipsecConfigs;
  /// The name of the IPsec server. The name must be `2` to `128` characters in length, and can contain digits, hyphens (-), and underscores (_). It must start with a letter.
  late final pulumi.Output<String?> ipsecServerName;
  /// The local CIDR block. It refers to the CIDR block of the virtual private cloud (VPC) that is used to connect with the client. Separate multiple CIDR blocks with commas (,). Example: `192.168.1.0/24,192.168.2.0/24`.
  late final pulumi.Output<String> localSubnet;
  /// The pre-shared key. The pre-shared key is used to authenticate the VPN gateway and the client. By default, the system generates a random string that is 16 bits in length. You can also specify the pre-shared key. It can contain at most 100 characters.
  late final pulumi.Output<String> psk;
  /// Whether to enable the pre-shared key authentication method. The value is only `true`, which indicates that the pre-shared key authentication method is enabled.
  late final pulumi.Output<bool?> pskEnabled;
  /// The ID of the VPN gateway.
  late final pulumi.Output<String> vpnGatewayId;

  /// Creates a new [IpsecServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpsecServer]. {@macro pulumi_vpn_ipsec_server_ipsec_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpsecServer(
    String name, {
    IpsecServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/ipsecServer:IpsecServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientIpPool = registerOutput<String>('clientIpPool');
    dryRun = registerOutput<bool?>('dryRun');
    effectImmediately = registerOutput<bool?>('effectImmediately');
    ikeConfigs = registerOutput<List<Map<String, dynamic>>>('ikeConfigs');
    ipsecConfigs = registerOutput<List<Map<String, dynamic>>>('ipsecConfigs');
    ipsecServerName = registerOutput<String?>('ipsecServerName');
    localSubnet = registerOutput<String>('localSubnet');
    psk = registerOutput<String>('psk');
    pskEnabled = registerOutput<bool?>('pskEnabled');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }

  /// Gets an existing [IpsecServer] resource's state with the given [name] and [id].
  static IpsecServer get(
    String name,
    pulumi.Input<String> id, {
    IpsecServerState? state,
  }) {
    return IpsecServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpsecServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/ipsecServer:IpsecServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientIpPool = registerOutput<String>('clientIpPool');
    dryRun = registerOutput<bool?>('dryRun');
    effectImmediately = registerOutput<bool?>('effectImmediately');
    ikeConfigs = registerOutput<List<Map<String, dynamic>>>('ikeConfigs');
    ipsecConfigs = registerOutput<List<Map<String, dynamic>>>('ipsecConfigs');
    ipsecServerName = registerOutput<String?>('ipsecServerName');
    localSubnet = registerOutput<String>('localSubnet');
    psk = registerOutput<String>('psk');
    pskEnabled = registerOutput<bool?>('pskEnabled');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
