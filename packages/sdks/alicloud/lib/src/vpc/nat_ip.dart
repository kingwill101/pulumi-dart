import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_ip_args.dart';
import 'nat_ip_state.dart';

/// Provides a VPC Nat Ip resource.
///
/// For information about VPC Nat Ip and how to use it, see [What is Nat Ip](https://www.alibabacloud.com/help/doc-detail/281976.htm).
///
/// &gt; **NOTE:** Available since v1.136.0.
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
/// const example = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vpcId: exampleNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: example.then(example => example.zones?.[0]?.id),
///     vswitchName: "terraform-example",
/// });
/// const exampleNatGateway = new alicloud.vpc.NatGateway("example", {
///     vpcId: exampleNetwork.id,
///     internetChargeType: "PayByLcu",
///     natGatewayName: "terraform-example",
///     description: "terraform-example",
///     natType: "Enhanced",
///     vswitchId: exampleSwitch.id,
///     networkType: "intranet",
/// });
/// const exampleNatIpCidr = new alicloud.vpc.NatIpCidr("example", {
///     natIpCidr: "192.168.0.0/16",
///     natGatewayId: exampleNatGateway.id,
///     natIpCidrDescription: "terraform-example",
///     natIpCidrName: "terraform-example",
/// });
/// const exampleNatIp = new alicloud.vpc.NatIp("example", {
///     natIp: "192.168.0.37",
///     natGatewayId: exampleNatGateway.id,
///     natIpDescription: "example_value",
///     natIpName: "example_value",
///     natIpCidr: exampleNatIpCidr.natIpCidr,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.get_zones(available_resource_creation="VSwitch")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/12")
/// example_switch = alicloud.vpc.Switch("example",
///     vpc_id=example_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=example.zones[0].id,
///     vswitch_name="terraform-example")
/// example_nat_gateway = alicloud.vpc.NatGateway("example",
///     vpc_id=example_network.id,
///     internet_charge_type="PayByLcu",
///     nat_gateway_name="terraform-example",
///     description="terraform-example",
///     nat_type="Enhanced",
///     vswitch_id=example_switch.id,
///     network_type="intranet")
/// example_nat_ip_cidr = alicloud.vpc.NatIpCidr("example",
///     nat_ip_cidr="192.168.0.0/16",
///     nat_gateway_id=example_nat_gateway.id,
///     nat_ip_cidr_description="terraform-example",
///     nat_ip_cidr_name="terraform-example")
/// example_nat_ip = alicloud.vpc.NatIp("example",
///     nat_ip="192.168.0.37",
///     nat_gateway_id=example_nat_gateway.id,
///     nat_ip_description="example_value",
///     nat_ip_name="example_value",
///     nat_ip_cidr=example_nat_ip_cidr.nat_ip_cidr)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VpcId = exampleNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = "terraform-example",
///     });
///
///     var exampleNatGateway = new AliCloud.Vpc.NatGateway("example", new()
///     {
///         VpcId = exampleNetwork.Id,
///         InternetChargeType = "PayByLcu",
///         NatGatewayName = "terraform-example",
///         Description = "terraform-example",
///         NatType = "Enhanced",
///         VswitchId = exampleSwitch.Id,
///         NetworkType = "intranet",
///     });
///
///     var exampleNatIpCidr = new AliCloud.Vpc.NatIpCidr("example", new()
///     {
///         NatIpCidrBlock = "192.168.0.0/16",
///         NatGatewayId = exampleNatGateway.Id,
///         NatIpCidrDescription = "terraform-example",
///         NatIpCidrName = "terraform-example",
///     });
///
///     var exampleNatIp = new AliCloud.Vpc.NatIp("example", new()
///     {
///         NatIpAddress = "192.168.0.37",
///         NatGatewayId = exampleNatGateway.Id,
///         NatIpDescription = "example_value",
///         NatIpName = "example_value",
///         NatIpCidr = exampleNatIpCidr.NatIpCidrBlock,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VpcId:       exampleNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 			VswitchName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatGateway, err := vpc.NewNatGateway(ctx, "example", &vpc.NatGatewayArgs{
/// 			VpcId:              exampleNetwork.ID(),
/// 			InternetChargeType: pulumi.String("PayByLcu"),
/// 			NatGatewayName:     pulumi.String("terraform-example"),
/// 			Description:        pulumi.String("terraform-example"),
/// 			NatType:            pulumi.String("Enhanced"),
/// 			VswitchId:          exampleSwitch.ID(),
/// 			NetworkType:        pulumi.String("intranet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatIpCidr, err := vpc.NewNatIpCidr(ctx, "example", &vpc.NatIpCidrArgs{
/// 			NatIpCidr:            pulumi.String("192.168.0.0/16"),
/// 			NatGatewayId:         exampleNatGateway.ID(),
/// 			NatIpCidrDescription: pulumi.String("terraform-example"),
/// 			NatIpCidrName:        pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewNatIp(ctx, "example", &vpc.NatIpArgs{
/// 			NatIp:            pulumi.String("192.168.0.37"),
/// 			NatGatewayId:     exampleNatGateway.ID(),
/// 			NatIpDescription: pulumi.String("example_value"),
/// 			NatIpName:        pulumi.String("example_value"),
/// 			NatIpCidr:        exampleNatIpCidr.NatIpCidr,
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
/// import com.pulumi.alicloud.vpc.NatIpCidr;
/// import com.pulumi.alicloud.vpc.NatIpCidrArgs;
/// import com.pulumi.alicloud.vpc.NatIp;
/// import com.pulumi.alicloud.vpc.NatIpArgs;
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
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vpcId(exampleNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(example.zones()[0].id())
///             .vswitchName("terraform-example")
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .vpcId(exampleNetwork.id())
///             .internetChargeType("PayByLcu")
///             .natGatewayName("terraform-example")
///             .description("terraform-example")
///             .natType("Enhanced")
///             .vswitchId(exampleSwitch.id())
///             .networkType("intranet")
///             .build());
///
///         var exampleNatIpCidr = new NatIpCidr("exampleNatIpCidr", NatIpCidrArgs.builder()
///             .natIpCidr("192.168.0.0/16")
///             .natGatewayId(exampleNatGateway.id())
///             .natIpCidrDescription("terraform-example")
///             .natIpCidrName("terraform-example")
///             .build());
///
///         var exampleNatIp = new NatIp("exampleNatIp", NatIpArgs.builder()
///             .natIp("192.168.0.37")
///             .natGatewayId(exampleNatGateway.id())
///             .natIpDescription("example_value")
///             .natIpName("example_value")
///             .natIpCidr(exampleNatIpCidr.natIpCidr())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/12
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vpcId: ${exampleNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${example.zones[0].id}
///       vswitchName: terraform-example
///   exampleNatGateway:
///     type: alicloud:vpc:NatGateway
///     name: example
///     properties:
///       vpcId: ${exampleNetwork.id}
///       internetChargeType: PayByLcu
///       natGatewayName: terraform-example
///       description: terraform-example
///       natType: Enhanced
///       vswitchId: ${exampleSwitch.id}
///       networkType: intranet
///   exampleNatIpCidr:
///     type: alicloud:vpc:NatIpCidr
///     name: example
///     properties:
///       natIpCidr: 192.168.0.0/16
///       natGatewayId: ${exampleNatGateway.id}
///       natIpCidrDescription: terraform-example
///       natIpCidrName: terraform-example
///   exampleNatIp:
///     type: alicloud:vpc:NatIp
///     name: example
///     properties:
///       natIp: 192.168.0.37
///       natGatewayId: ${exampleNatGateway.id}
///       natIpDescription: example_value
///       natIpName: example_value
///       natIpCidr: ${exampleNatIpCidr.natIpCidr}
/// variables:
///   example:
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
/// VPC Nat Ip can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/natIp:NatIp example <nat_gateway_id>:<nat_ip_id>
/// ```
class NatIp extends pulumi.CustomResource {
  /// Specifies whether to check the validity of the request without actually making the request.
  late final pulumi.Output<bool> dryRun;

  /// The ID of the Virtual Private Cloud (VPC) NAT gateway for which you want to create the NAT IP address.
  late final pulumi.Output<String> natGatewayId;

  /// The NAT IP address that you want to create. If you do not specify an IP address, the system selects a random IP address from the specified CIDR block.
  late final pulumi.Output<String> natIp;

  /// NAT IP ADDRESS of the address segment.
  late final pulumi.Output<String?> natIpCidr;

  /// The ID of the CIDR block to which the NAT IP address belongs.
  late final pulumi.Output<String?> natIpCidrId;

  /// NAT IP ADDRESS description of information. Length is from `2` to `256` characters, must start with a letter or the Chinese at the beginning, but not at the` http://` Or `https://` at the beginning.
  late final pulumi.Output<String?> natIpDescription;

  /// Ihe ID of the Nat Ip.
  late final pulumi.Output<String> natIpId;

  /// NAT IP ADDRESS the name of the root directory. Length is from `2` to `128` characters, must start with a letter or the Chinese at the beginning can contain numbers, half a period (.), underscore (_) and dash (-). But do not start with `http://` or `https://` at the beginning.
  late final pulumi.Output<String?> natIpName;

  /// The status of the NAT IP address. Valid values: `Available`, `Deleting`, `Creating` and `Deleted`.
  late final pulumi.Output<String> status;

  /// Creates a new [NatIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatIp]. {@macro pulumi_vpc_nat_ip_nat_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatIp(String name, {NatIpArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:vpc/natIp:NatIp',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    dryRun = registerOutput<bool>('dryRun');
    natGatewayId = registerOutput<String>('natGatewayId');
    natIp = registerOutput<String>('natIp');
    natIpCidr = registerOutput<String?>('natIpCidr');
    natIpCidrId = registerOutput<String?>('natIpCidrId');
    natIpDescription = registerOutput<String?>('natIpDescription');
    natIpId = registerOutput<String>('natIpId');
    natIpName = registerOutput<String?>('natIpName');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [NatIp] resource's state with the given [name] and [id].
  static NatIp get(String name, pulumi.Input<String> id, {NatIpState? state}) {
    return NatIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/natIp:NatIp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dryRun = registerOutput<bool>('dryRun');
    natGatewayId = registerOutput<String>('natGatewayId');
    natIp = registerOutput<String>('natIp');
    natIpCidr = registerOutput<String?>('natIpCidr');
    natIpCidrId = registerOutput<String?>('natIpCidrId');
    natIpDescription = registerOutput<String?>('natIpDescription');
    natIpId = registerOutput<String>('natIpId');
    natIpName = registerOutput<String?>('natIpName');
    status = registerOutput<String>('status');
  }
}
