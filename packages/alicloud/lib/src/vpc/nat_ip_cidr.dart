import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_ip_cidr_args.dart';

/// Provides a VPC Nat Ip Cidr resource.
///
/// For information about VPC Nat Ip Cidr and how to use it, see [What is Nat Ip Cidr](https://www.alibabacloud.com/help/doc-detail/281972.htm).
///
/// > **NOTE:** Available in v1.136.0+.
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
///     natGatewayId: exampleNatGateway.id,
///     natIpCidrName: "terraform-example",
///     natIpCidr: "192.168.0.0/16",
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
///     nat_gateway_id=example_nat_gateway.id,
///     nat_ip_cidr_name="terraform-example",
///     nat_ip_cidr="192.168.0.0/16")
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
///         NatGatewayId = exampleNatGateway.Id,
///         NatIpCidrName = "terraform-example",
///         NatIpCidrBlock = "192.168.0.0/16",
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
/// 		_, err = vpc.NewNatIpCidr(ctx, "example", &vpc.NatIpCidrArgs{
/// 			NatGatewayId:  exampleNatGateway.ID(),
/// 			NatIpCidrName: pulumi.String("terraform-example"),
/// 			NatIpCidr:     pulumi.String("192.168.0.0/16"),
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
///             .natGatewayId(exampleNatGateway.id())
///             .natIpCidrName("terraform-example")
///             .natIpCidr("192.168.0.0/16")
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
///       natGatewayId: ${exampleNatGateway.id}
///       natIpCidrName: terraform-example
///       natIpCidr: 192.168.0.0/16
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
/// VPC Nat Ip Cidr can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/natIpCidr:NatIpCidr example <nat_gateway_id>:<nat_ip_cidr>
/// ```
class NatIpCidr extends pulumi.CustomResource {
  /// Specifies whether to precheck this request only. Valid values: `true` and `false`.
  late final pulumi.Output<bool> dryRun;
  /// The ID of the Virtual Private Cloud (VPC) NAT gateway where you want to create the NAT CIDR block.
  late final pulumi.Output<String> natGatewayId;
  /// The NAT CIDR block to be created. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  late final pulumi.Output<String?> natIpCidr;
  /// The description of the NAT CIDR block. The description must be `2` to `256` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> natIpCidrDescription;
  /// The name of the NAT CIDR block. The name must be `2` to `128` characters in length and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> natIpCidrName;
  /// The status of the CIDR block of the NAT gateway. Valid values: `Available`.
  late final pulumi.Output<String> status;

  /// Creates a new [NatIpCidr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatIpCidr]. {@macro pulumi_vpc_nat_ip_cidr_nat_ip_cidr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatIpCidr(
    String name, {
    NatIpCidrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/natIpCidr:NatIpCidr',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool>('dryRun');
    this.natGatewayId = registerOutput<String>('natGatewayId');
    this.natIpCidr = registerOutput<String?>('natIpCidr');
    this.natIpCidrDescription = registerOutput<String?>('natIpCidrDescription');
    this.natIpCidrName = registerOutput<String?>('natIpCidrName');
    this.status = registerOutput<String>('status');
  }
}
