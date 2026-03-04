import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_address_args.dart';
import 'ipv6_address_state.dart';

/// Provides a VPC Ipv6 Address resource.
///
///
///
/// For information about VPC Ipv6 Address and how to use it, see [What is Ipv6 Address](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/AllocateIpv6Address).
///
/// &gt; **NOTE:** Available since v1.216.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetZones = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const vpc = new alicloud.vpc.Network("vpc", {
///     ipv6Isp: "BGP",
///     cidrBlock: "172.168.0.0/16",
///     enableIpv6: true,
///     vpcName: name,
/// });
/// const vswich = new alicloud.vpc.Switch("vswich", {
///     vpcId: vpc.id,
///     cidrBlock: "172.168.0.0/24",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     vswitchName: name,
///     ipv6CidrBlockMask: 1,
/// });
/// const defaultIpv6Address = new alicloud.vpc.Ipv6Address("default", {
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     vswitchId: vswich.id,
///     ipv6AddressDescription: "create_description",
///     ipv6AddressName: name,
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// vpc = alicloud.vpc.Network("vpc",
///     ipv6_isp="BGP",
///     cidr_block="172.168.0.0/16",
///     enable_ipv6=True,
///     vpc_name=name)
/// vswich = alicloud.vpc.Switch("vswich",
///     vpc_id=vpc.id,
///     cidr_block="172.168.0.0/24",
///     zone_id=default_get_zones.zones[0].id,
///     vswitch_name=name,
///     ipv6_cidr_block_mask=1)
/// default_ipv6_address = alicloud.vpc.Ipv6Address("default",
///     resource_group_id=default.ids[0],
///     vswitch_id=vswich.id,
///     ipv6_address_description="create_description",
///     ipv6_address_name=name)
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Ipv6Isp = "BGP",
///         CidrBlock = "172.168.0.0/16",
///         EnableIpv6 = true,
///         VpcName = name,
///     });
///
///     var vswich = new AliCloud.Vpc.Switch("vswich", new()
///     {
///         VpcId = vpc.Id,
///         CidrBlock = "172.168.0.0/24",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = name,
///         Ipv6CidrBlockMask = 1,
///     });
///
///     var defaultIpv6Address = new AliCloud.Vpc.Ipv6Address("default", new()
///     {
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         VswitchId = vswich.Id,
///         Ipv6AddressDescription = "create_description",
///         Ipv6AddressName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			Ipv6Isp:    pulumi.String("BGP"),
/// 			CidrBlock:  pulumi.String("172.168.0.0/16"),
/// 			EnableIpv6: pulumi.Bool(true),
/// 			VpcName:    pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswich, err := vpc.NewSwitch(ctx, "vswich", &vpc.SwitchArgs{
/// 			VpcId:             vpc.ID(),
/// 			CidrBlock:         pulumi.String("172.168.0.0/24"),
/// 			ZoneId:            pulumi.String(defaultGetZones.Zones[0].Id),
/// 			VswitchName:       pulumi.String(name),
/// 			Ipv6CidrBlockMask: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpv6Address(ctx, "default", &vpc.Ipv6AddressArgs{
/// 			ResourceGroupId:        pulumi.String(_default.Ids[0]),
/// 			VswitchId:              vswich.ID(),
/// 			Ipv6AddressDescription: pulumi.String("create_description"),
/// 			Ipv6AddressName:        pulumi.String(name),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.Ipv6Address;
/// import com.pulumi.alicloud.vpc.Ipv6AddressArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .ipv6Isp("BGP")
///             .cidrBlock("172.168.0.0/16")
///             .enableIpv6(true)
///             .vpcName(name)
///             .build());
///
///         var vswich = new Switch("vswich", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .cidrBlock("172.168.0.0/24")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .vswitchName(name)
///             .ipv6CidrBlockMask(1)
///             .build());
///
///         var defaultIpv6Address = new Ipv6Address("defaultIpv6Address", Ipv6AddressArgs.builder()
///             .resourceGroupId(default_.ids()[0])
///             .vswitchId(vswich.id())
///             .ipv6AddressDescription("create_description")
///             .ipv6AddressName(name)
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
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       ipv6Isp: BGP
///       cidrBlock: 172.168.0.0/16
///       enableIpv6: true
///       vpcName: ${name}
///   vswich:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc.id}
///       cidrBlock: 172.168.0.0/24
///       zoneId: ${defaultGetZones.zones[0].id}
///       vswitchName: ${name}
///       ipv6CidrBlockMask: '1'
///   defaultIpv6Address:
///     type: alicloud:vpc:Ipv6Address
///     name: default
///     properties:
///       resourceGroupId: ${default.ids[0]}
///       vswitchId: ${vswich.id}
///       ipv6AddressDescription: create_description
///       ipv6AddressName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetZones:
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
/// VPC Ipv6 Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipv6Address:Ipv6Address example <id>
/// ```
class Ipv6Address extends pulumi.CustomResource {
  /// The type of the IPv6 address. Value:
  /// - `IPv6Address` (default): indicates that the current instance is a single IPv6 address.
  /// - `IPv6Prefix`: indicates that the current instance is a contiguous block of IPv6 addresses.
  late final pulumi.Output<String> addressType;

  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// IPv6 address
  late final pulumi.Output<String> ipv6Address;

  /// The description of the IPv6 Address. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  late final pulumi.Output<String> ipv6AddressDescription;

  /// The name of the IPv6 Address. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  late final pulumi.Output<String?> ipv6AddressName;

  /// The ID of the resource group to which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource.  Available, Pending and Deleting.
  late final pulumi.Output<String> status;

  /// The tags for the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The VSwitchId of the IPv6 address.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Ipv6Address].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ipv6Address]. {@macro pulumi_vpc_ipv6_address_ipv6_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ipv6Address(
    String name, {
    Ipv6AddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipv6Address:Ipv6Address',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressType = registerOutput<String>('addressType');
    createTime = registerOutput<String>('createTime');
    ipv6Address = registerOutput<String>('ipv6Address');
    ipv6AddressDescription = registerOutput<String>('ipv6AddressDescription');
    ipv6AddressName = registerOutput<String?>('ipv6AddressName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [Ipv6Address] resource's state with the given [name] and [id].
  static Ipv6Address get(
    String name,
    pulumi.Input<String> id, {
    Ipv6AddressState? state,
  }) {
    return Ipv6Address._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ipv6Address._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipv6Address:Ipv6Address',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressType = registerOutput<String>('addressType');
    createTime = registerOutput<String>('createTime');
    ipv6Address = registerOutput<String>('ipv6Address');
    ipv6AddressDescription = registerOutput<String>('ipv6AddressDescription');
    ipv6AddressName = registerOutput<String?>('ipv6AddressName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
