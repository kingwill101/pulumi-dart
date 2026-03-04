import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_args.dart';
import 'network_interface_state.dart';

/// &gt; **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsNetworkInterface from version 1.123.1.
///
/// Provides an ECS Elastic Network Interface resource.
///
/// For information about Elastic Network Interface and how to use it, see [Elastic Network Interface](https://www.alibabacloud.com/help/doc-detail/58496.html).
///
/// &gt; **NOTE** Only one of private_ips or private_ips_count can be specified when assign private IPs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "networkInterfaceName";
/// const vpc = new alicloud.vpc.Network("vpc", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/24",
/// });
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     name: name,
///     cidrBlock: "192.168.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vpcId: vpc.id,
/// });
/// const group = new alicloud.ecs.SecurityGroup("group", {
///     name: name,
///     vpcId: vpc.id,
/// });
/// const defaultNetworkInterface = new alicloud.vpc.NetworkInterface("default", {
///     networkInterfaceName: name,
///     vswitchId: vswitch.id,
///     securityGroupIds: [group.id],
///     privateIp: "192.168.0.2",
///     privateIpsCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "networkInterfaceName"
/// vpc = alicloud.vpc.Network("vpc",
///     vpc_name=name,
///     cidr_block="192.168.0.0/24")
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// vswitch = alicloud.vpc.Switch("vswitch",
///     name=name,
///     cidr_block="192.168.0.0/24",
///     zone_id=default.zones[0].id,
///     vpc_id=vpc.id)
/// group = alicloud.ecs.SecurityGroup("group",
///     name=name,
///     vpc_id=vpc.id)
/// default_network_interface = alicloud.vpc.NetworkInterface("default",
///     network_interface_name=name,
///     vswitch_id=vswitch.id,
///     security_group_ids=[group.id],
///     private_ip="192.168.0.2",
///     private_ips_count=3)
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
///     var name = config.Get("name") ?? "networkInterfaceName";
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/24",
///     });
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         Name = name,
///         CidrBlock = "192.168.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VpcId = vpc.Id,
///     });
///
///     var @group = new AliCloud.Ecs.SecurityGroup("group", new()
///     {
///         Name = name,
///         VpcId = vpc.Id,
///     });
///
///     var defaultNetworkInterface = new AliCloud.Vpc.NetworkInterface("default", new()
///     {
///         NetworkInterfaceName = name,
///         VswitchId = vswitch.Id,
///         SecurityGroupIds = new[]
///         {
///             @group.Id,
///         },
///         PrivateIp = "192.168.0.2",
///         PrivateIpsCount = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "networkInterfaceName"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// 			Name:      pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/24"),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			VpcId:     vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group, err := ecs.NewSecurityGroup(ctx, "group", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewNetworkInterface(ctx, "default", &vpc.NetworkInterfaceArgs{
/// 			NetworkInterfaceName: pulumi.String(name),
/// 			VswitchId:            vswitch.ID(),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				group.ID(),
/// 			},
/// 			PrivateIp:       pulumi.String("192.168.0.2"),
/// 			PrivateIpsCount: pulumi.Int(3),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.NetworkInterface;
/// import com.pulumi.alicloud.vpc.NetworkInterfaceArgs;
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
///         final var name = config.get("name").orElse("networkInterfaceName");
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/24")
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .name(name)
///             .cidrBlock("192.168.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vpcId(vpc.id())
///             .build());
///
///         var group = new SecurityGroup("group", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(vpc.id())
///             .build());
///
///         var defaultNetworkInterface = new NetworkInterface("defaultNetworkInterface", NetworkInterfaceArgs.builder()
///             .networkInterfaceName(name)
///             .vswitchId(vswitch.id())
///             .securityGroupIds(group.id())
///             .privateIp("192.168.0.2")
///             .privateIpsCount(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: networkInterfaceName
/// resources:
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/24
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       name: ${name}
///       cidrBlock: 192.168.0.0/24
///       zoneId: ${default.zones[0].id}
///       vpcId: ${vpc.id}
///   group:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       name: ${name}
///       vpcId: ${vpc.id}
///   defaultNetworkInterface:
///     type: alicloud:vpc:NetworkInterface
///     name: default
///     properties:
///       networkInterfaceName: ${name}
///       vswitchId: ${vswitch.id}
///       securityGroupIds:
///         - ${group.id}
///       privateIp: 192.168.0.2
///       privateIpsCount: 3
/// variables:
///   default:
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
/// ENI can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/networkInterface:NetworkInterface eni eni-abc1234567890000
/// ```
class NetworkInterface extends pulumi.CustomResource {
  /// Description of the ENI. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> instanceType;
  late final pulumi.Output<int> ipv4PrefixCount;
  late final pulumi.Output<List<String>> ipv4Prefixes;
  late final pulumi.Output<int> ipv6AddressCount;
  late final pulumi.Output<List<String>> ipv6Addresses;

  /// (Available in 1.54.0+) The MAC address of an ENI.
  late final pulumi.Output<String> mac;

  /// Name of the ENI. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-", ".", "_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Default value is null.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> networkInterfaceName;
  late final pulumi.Output<String> networkInterfaceTrafficMode;
  late final pulumi.Output<String> primaryIpAddress;

  /// The primary private IP of the ENI.
  late final pulumi.Output<String> privateIp;
  late final pulumi.Output<List<String>> privateIpAddresses;

  /// List of secondary private IPs to assign to the ENI. Don't use both private_ips and private_ips_count in the same ENI resource block.
  late final pulumi.Output<List<String>> privateIps;

  /// Number of secondary private IPs to assign to the ENI. Don't use both private_ips and private_ips_count in the same ENI resource block.
  late final pulumi.Output<int> privateIpsCount;
  late final pulumi.Output<int> queueNumber;

  /// The Id of resource group which the network interface belongs.
  late final pulumi.Output<String?> resourceGroupId;
  late final pulumi.Output<int> secondaryPrivateIpAddressCount;
  late final pulumi.Output<List<String>> securityGroupIds;

  /// A list of security group ids to associate with.
  late final pulumi.Output<List<String>> securityGroups;
  late final pulumi.Output<bool?> sourceDestCheck;
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The VSwitch to create the ENI in.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [NetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterface]. {@macro pulumi_vpc_network_interface_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterface(
    String name, {
    NetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/networkInterface:NetworkInterface',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    instanceType = registerOutput<String>('instanceType');
    ipv4PrefixCount = registerOutput<int>('ipv4PrefixCount');
    ipv4Prefixes = registerOutput<List<String>>('ipv4Prefixes');
    ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    mac = registerOutput<String>('mac');
    this.name = registerOutput<String>('name');
    networkInterfaceName = registerOutput<String>('networkInterfaceName');
    networkInterfaceTrafficMode = registerOutput<String>(
      'networkInterfaceTrafficMode',
    );
    primaryIpAddress = registerOutput<String>('primaryIpAddress');
    privateIp = registerOutput<String>('privateIp');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    privateIps = registerOutput<List<String>>('privateIps');
    privateIpsCount = registerOutput<int>('privateIpsCount');
    queueNumber = registerOutput<int>('queueNumber');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    secondaryPrivateIpAddressCount = registerOutput<int>(
      'secondaryPrivateIpAddressCount',
    );
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    securityGroups = registerOutput<List<String>>('securityGroups');
    sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [NetworkInterface] resource's state with the given [name] and [id].
  static NetworkInterface get(
    String name,
    pulumi.Input<String> id, {
    NetworkInterfaceState? state,
  }) {
    return NetworkInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/networkInterface:NetworkInterface',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    instanceType = registerOutput<String>('instanceType');
    ipv4PrefixCount = registerOutput<int>('ipv4PrefixCount');
    ipv4Prefixes = registerOutput<List<String>>('ipv4Prefixes');
    ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    mac = registerOutput<String>('mac');
    this.name = registerOutput<String>('name');
    networkInterfaceName = registerOutput<String>('networkInterfaceName');
    networkInterfaceTrafficMode = registerOutput<String>(
      'networkInterfaceTrafficMode',
    );
    primaryIpAddress = registerOutput<String>('primaryIpAddress');
    privateIp = registerOutput<String>('privateIp');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    privateIps = registerOutput<List<String>>('privateIps');
    privateIpsCount = registerOutput<int>('privateIpsCount');
    queueNumber = registerOutput<int>('queueNumber');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    secondaryPrivateIpAddressCount = registerOutput<int>(
      'secondaryPrivateIpAddressCount',
    );
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    securityGroups = registerOutput<List<String>>('securityGroups');
    sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
