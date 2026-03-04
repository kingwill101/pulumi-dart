import 'package:pulumi/pulumi.dart' as pulumi;
import 'switch_args.dart';
import 'switch_state.dart';

/// Provides a VPC Vswitch resource. ## Module Support
///
/// You can use to the existing vpc module  to create a VPC and several VSwitches one-click.
///
/// For information about VPC Vswitch and how to use it, see [What is Vswitch](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/work-with-vswitches).
///
/// &gt; **NOTE:** Available since v1.0.0.
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
/// const foo = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const fooNetwork = new alicloud.vpc.Network("foo", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const fooSwitch = new alicloud.vpc.Switch("foo", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.16.0.0/21",
///     vpcId: fooNetwork.id,
///     zoneId: foo.then(foo => foo.zones?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.get_zones(available_resource_creation="VSwitch")
/// foo_network = alicloud.vpc.Network("foo",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/12")
/// foo_switch = alicloud.vpc.Switch("foo",
///     vswitch_name="terraform-example",
///     cidr_block="172.16.0.0/21",
///     vpc_id=foo_network.id,
///     zone_id=foo.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var fooNetwork = new AliCloud.Vpc.Network("foo", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var fooSwitch = new AliCloud.Vpc.Switch("foo", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.16.0.0/21",
///         VpcId = fooNetwork.Id,
///         ZoneId = foo.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
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
/// 		foo, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooNetwork, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSwitch(ctx, "foo", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			VpcId:       fooNetwork.ID(),
/// 			ZoneId:      pulumi.String(foo.Zones[0].Id),
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
///         final var foo = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var fooNetwork = new Network("fooNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var fooSwitch = new Switch("fooSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.16.0.0/21")
///             .vpcId(fooNetwork.id())
///             .zoneId(foo.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooNetwork:
///     type: alicloud:vpc:Network
///     name: foo
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/12
///   fooSwitch:
///     type: alicloud:vpc:Switch
///     name: foo
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.16.0.0/21
///       vpcId: ${fooNetwork.id}
///       zoneId: ${foo.zones[0].id}
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const vpc = new alicloud.vpc.Network("vpc", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const cidrBlocks = new alicloud.vpc.Ipv4CidrBlock("cidr_blocks", {
///     vpcId: vpc.id,
///     secondaryCidrBlock: "192.163.0.0/16",
/// });
/// const island_nat = new alicloud.vpc.Switch("island-nat", {
///     vpcId: cidrBlocks.vpcId,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: foo.then(foo => foo.zones?.[0]?.id),
///     vswitchName: "terraform-example",
///     tags: {
///         BuiltBy: "example_value",
///         cnm_version: "example_value",
///         Environment: "example_value",
///         ManagedBy: "example_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.get_zones(available_resource_creation="VSwitch")
/// vpc = alicloud.vpc.Network("vpc",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/12")
/// cidr_blocks = alicloud.vpc.Ipv4CidrBlock("cidr_blocks",
///     vpc_id=vpc.id,
///     secondary_cidr_block="192.163.0.0/16")
/// island_nat = alicloud.vpc.Switch("island-nat",
///     vpc_id=cidr_blocks.vpc_id,
///     cidr_block="172.16.0.0/21",
///     zone_id=foo.zones[0].id,
///     vswitch_name="terraform-example",
///     tags={
///         "BuiltBy": "example_value",
///         "cnm_version": "example_value",
///         "Environment": "example_value",
///         "ManagedBy": "example_value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var cidrBlocks = new AliCloud.Vpc.Ipv4CidrBlock("cidr_blocks", new()
///     {
///         VpcId = vpc.Id,
///         SecondaryCidrBlock = "192.163.0.0/16",
///     });
///
///     var island_nat = new AliCloud.Vpc.Switch("island-nat", new()
///     {
///         VpcId = cidrBlocks.VpcId,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = foo.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = "terraform-example",
///         Tags =
///         {
///             { "BuiltBy", "example_value" },
///             { "cnm_version", "example_value" },
///             { "Environment", "example_value" },
///             { "ManagedBy", "example_value" },
///         },
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
/// 		foo, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cidrBlocks, err := vpc.NewIpv4CidrBlock(ctx, "cidr_blocks", &vpc.Ipv4CidrBlockArgs{
/// 			VpcId:              vpc.ID(),
/// 			SecondaryCidrBlock: pulumi.String("192.163.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSwitch(ctx, "island-nat", &vpc.SwitchArgs{
/// 			VpcId:       cidrBlocks.VpcId,
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(foo.Zones[0].Id),
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			Tags: pulumi.StringMap{
/// 				"BuiltBy":     pulumi.String("example_value"),
/// 				"cnm_version": pulumi.String("example_value"),
/// 				"Environment": pulumi.String("example_value"),
/// 				"ManagedBy":   pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Ipv4CidrBlock;
/// import com.pulumi.alicloud.vpc.Ipv4CidrBlockArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
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
///         final var foo = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var cidrBlocks = new Ipv4CidrBlock("cidrBlocks", Ipv4CidrBlockArgs.builder()
///             .vpcId(vpc.id())
///             .secondaryCidrBlock("192.163.0.0/16")
///             .build());
///
///         var island_nat = new Switch("island-nat", SwitchArgs.builder()
///             .vpcId(cidrBlocks.vpcId())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(foo.zones()[0].id())
///             .vswitchName("terraform-example")
///             .tags(Map.ofEntries(
///                 Map.entry("BuiltBy", "example_value"),
///                 Map.entry("cnm_version", "example_value"),
///                 Map.entry("Environment", "example_value"),
///                 Map.entry("ManagedBy", "example_value")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/12
///   cidrBlocks:
///     type: alicloud:vpc:Ipv4CidrBlock
///     name: cidr_blocks
///     properties:
///       vpcId: ${vpc.id}
///       secondaryCidrBlock: 192.163.0.0/16
///   island-nat:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${cidrBlocks.vpcId}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${foo.zones[0].id}
///       vswitchName: terraform-example
///       tags:
///         BuiltBy: example_value
///         cnm_version: example_value
///         Environment: example_value
///         ManagedBy: example_value
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// Create a switch associated with the additional network segment
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const fooNetwork = new alicloud.vpc.Network("foo", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const fooIpv4CidrBlock = new alicloud.vpc.Ipv4CidrBlock("foo", {
///     vpcId: fooNetwork.id,
///     secondaryCidrBlock: "192.163.0.0/16",
/// });
/// const fooSwitch = new alicloud.vpc.Switch("foo", {
///     vpcId: fooIpv4CidrBlock.vpcId,
///     cidrBlock: "192.163.0.0/24",
///     zoneId: foo.then(foo => foo.zones?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.get_zones(available_resource_creation="VSwitch")
/// foo_network = alicloud.vpc.Network("foo",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/12")
/// foo_ipv4_cidr_block = alicloud.vpc.Ipv4CidrBlock("foo",
///     vpc_id=foo_network.id,
///     secondary_cidr_block="192.163.0.0/16")
/// foo_switch = alicloud.vpc.Switch("foo",
///     vpc_id=foo_ipv4_cidr_block.vpc_id,
///     cidr_block="192.163.0.0/24",
///     zone_id=foo.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var fooNetwork = new AliCloud.Vpc.Network("foo", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var fooIpv4CidrBlock = new AliCloud.Vpc.Ipv4CidrBlock("foo", new()
///     {
///         VpcId = fooNetwork.Id,
///         SecondaryCidrBlock = "192.163.0.0/16",
///     });
///
///     var fooSwitch = new AliCloud.Vpc.Switch("foo", new()
///     {
///         VpcId = fooIpv4CidrBlock.VpcId,
///         CidrBlock = "192.163.0.0/24",
///         ZoneId = foo.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
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
/// 		foo, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooNetwork, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooIpv4CidrBlock, err := vpc.NewIpv4CidrBlock(ctx, "foo", &vpc.Ipv4CidrBlockArgs{
/// 			VpcId:              fooNetwork.ID(),
/// 			SecondaryCidrBlock: pulumi.String("192.163.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSwitch(ctx, "foo", &vpc.SwitchArgs{
/// 			VpcId:     fooIpv4CidrBlock.VpcId,
/// 			CidrBlock: pulumi.String("192.163.0.0/24"),
/// 			ZoneId:    pulumi.String(foo.Zones[0].Id),
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
/// import com.pulumi.alicloud.vpc.Ipv4CidrBlock;
/// import com.pulumi.alicloud.vpc.Ipv4CidrBlockArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
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
///         final var foo = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var fooNetwork = new Network("fooNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var fooIpv4CidrBlock = new Ipv4CidrBlock("fooIpv4CidrBlock", Ipv4CidrBlockArgs.builder()
///             .vpcId(fooNetwork.id())
///             .secondaryCidrBlock("192.163.0.0/16")
///             .build());
///
///         var fooSwitch = new Switch("fooSwitch", SwitchArgs.builder()
///             .vpcId(fooIpv4CidrBlock.vpcId())
///             .cidrBlock("192.163.0.0/24")
///             .zoneId(foo.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooNetwork:
///     type: alicloud:vpc:Network
///     name: foo
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/12
///   fooIpv4CidrBlock:
///     type: alicloud:vpc:Ipv4CidrBlock
///     name: foo
///     properties:
///       vpcId: ${fooNetwork.id}
///       secondaryCidrBlock: 192.163.0.0/16
///   fooSwitch:
///     type: alicloud:vpc:Switch
///     name: foo
///     properties:
///       vpcId: ${fooIpv4CidrBlock.vpcId}
///       cidrBlock: 192.163.0.0/24
///       zoneId: ${foo.zones[0].id}
/// variables:
///   foo:
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
/// VPC Vswitch can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/switch:Switch example <id>
/// ```
class Switch extends pulumi.CustomResource {
  /// Field `availability_zone` has been deprecated from provider version 1.119.0. New field `zone_id` instead.
  late final pulumi.Output<String> availabilityZone;

  /// The IPv4 CIDR block of the VSwitch. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `cidr_block` is required.
  late final pulumi.Output<String> cidrBlock;

  /// The creation time of the VSwitch.
  late final pulumi.Output<String> createTime;

  /// The description of VSwitch.
  late final pulumi.Output<String?> description;

  /// Whether the IPv6 function is enabled in the switch. Value:
  late final pulumi.Output<bool?> enableIpv6;

  /// The IPv6 CIDR block of the VSwitch.
  late final pulumi.Output<String> ipv6CidrBlock;

  /// The IPv6 CIDR block of the VSwitch.
  late final pulumi.Output<int> ipv6CidrBlockMask;

  /// Specifies whether to create the default VSwitch. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> isDefault;

  /// Field `name` has been deprecated from provider version 1.119.0. New field `vswitch_name` instead.
  late final pulumi.Output<String> name;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// The tags of VSwitch.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The VPC ID. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `vpc_id` is required.
  late final pulumi.Output<String> vpcId;

  /// The name of the VSwitch.
  late final pulumi.Output<String> vswitchName;

  /// The AZ for the VSwitch. **Note:** Required for a VPC VSwitch.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Switch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Switch]. {@macro pulumi_vpc_switch_switch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Switch(String name, {SwitchArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:vpc/switch:Switch',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    cidrBlock = registerOutput<String>('cidrBlock');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    enableIpv6 = registerOutput<bool?>('enableIpv6');
    ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    ipv6CidrBlockMask = registerOutput<int>('ipv6CidrBlockMask');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchName = registerOutput<String>('vswitchName');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Switch] resource's state with the given [name] and [id].
  static Switch get(
    String name,
    pulumi.Input<String> id, {
    SwitchState? state,
  }) {
    return Switch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Switch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/switch:Switch',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    cidrBlock = registerOutput<String>('cidrBlock');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    enableIpv6 = registerOutput<bool?>('enableIpv6');
    ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    ipv6CidrBlockMask = registerOutput<int>('ipv6CidrBlockMask');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchName = registerOutput<String>('vswitchName');
    zoneId = registerOutput<String>('zoneId');
  }
}
