import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_network_interface_args.dart';

/// Provides a ECS Network Interface resource.
///
/// For information about ECS Network Interface and how to use it, see [What is Network Interface](https://www.alibabacloud.com/help/en/doc-detail/58504.htm).
///
/// > **NOTE:** Available since v1.123.1.
///
/// > **NOTE** Only one of `private_ip_addresses` or `secondary_private_ip_address_count` can be specified when assign private IPs.
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
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/24",
/// });
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "192.168.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vpcId: defaultNetwork.id,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultEcsNetworkInterface = new alicloud.ecs.EcsNetworkInterface("default", {
///     networkInterfaceName: name,
///     vswitchId: defaultSwitch.id,
///     securityGroupIds: [defaultSecurityGroup.id],
///     description: "Basic test",
///     primaryIpAddress: "192.168.0.2",
///     tags: {
///         Created: "TF",
///         For: "Test",
///     },
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
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
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/24")
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="192.168.0.0/24",
///     zone_id=default.zones[0].id,
///     vpc_id=default_network.id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_ecs_network_interface = alicloud.ecs.EcsNetworkInterface("default",
///     network_interface_name=name,
///     vswitch_id=default_switch.id,
///     security_group_ids=[default_security_group.id],
///     description="Basic test",
///     primary_ip_address="192.168.0.2",
///     tags={
///         "Created": "TF",
///         "For": "Test",
///     },
///     resource_group_id=default_get_resource_groups.ids[0])
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
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
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
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultEcsNetworkInterface = new AliCloud.Ecs.EcsNetworkInterface("default", new()
///     {
///         NetworkInterfaceName = name,
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         Description = "Basic test",
///         PrimaryIpAddress = "192.168.0.2",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Test" },
///         },
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
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
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VpcId:       defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsNetworkInterface(ctx, "default", &ecs.EcsNetworkInterfaceArgs{
/// 			NetworkInterfaceName: pulumi.String(name),
/// 			VswitchId:            defaultSwitch.ID(),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			Description:      pulumi.String("Basic test"),
/// 			PrimaryIpAddress: pulumi.String("192.168.0.2"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Test"),
/// 			},
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/24")
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultEcsNetworkInterface = new EcsNetworkInterface("defaultEcsNetworkInterface", EcsNetworkInterfaceArgs.builder()
///             .networkInterfaceName(name)
///             .vswitchId(defaultSwitch.id())
///             .securityGroupIds(defaultSecurityGroup.id())
///             .description("Basic test")
///             .primaryIpAddress("192.168.0.2")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Test")
///             ))
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.0.0/24
///       zoneId: ${default.zones[0].id}
///       vpcId: ${defaultNetwork.id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultEcsNetworkInterface:
///     type: alicloud:ecs:EcsNetworkInterface
///     name: default
///     properties:
///       networkInterfaceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///       description: Basic test
///       primaryIpAddress: 192.168.0.2
///       tags:
///         Created: TF
///         For: Test
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Network Interface can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsNetworkInterface:EcsNetworkInterface example eni-abcd12345
/// ```
class EcsNetworkInterface extends pulumi.CustomResource {
  /// The description of the ENI. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> description;
  /// The type of the ENI. Default value: `Secondary`. Valid values: `Secondary`, `Trunk`.
  late final pulumi.Output<String> instanceType;
  /// The number of IPv4 prefixes that can be automatically created by ECS. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv4_prefixes` and `ipv4_prefix_count` parameters.
  late final pulumi.Output<int> ipv4PrefixCount;
  /// A list of IPv4 prefixes to be assigned to the ENI. Support up to 10.
  late final pulumi.Output<List<String>> ipv4Prefixes;
  /// The number of IPv6 addresses to randomly generate for the primary ENI. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv6_addresses` and `ipv6_address_count` parameters.
  late final pulumi.Output<int> ipv6AddressCount;
  /// A list of IPv6 address to be assigned to the primary ENI. Support up to 10.
  late final pulumi.Output<List<String>> ipv6Addresses;
  /// The MAC address of the ENI.
  late final pulumi.Output<String> mac;
  /// Field `name` has been deprecated from provider version 1.123.1. New field `network_interface_name` instead
  late final pulumi.Output<String> name;
  /// The name of the ENI. The name must be 2 to 128 characters in length, and can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with http:// or https://.
  late final pulumi.Output<String> networkInterfaceName;
  /// The communication mode of the ENI. Default value: `Standard`. Valid values: `Standard`, `HighPerformance`.
  late final pulumi.Output<String> networkInterfaceTrafficMode;
  /// The primary private IP address of the ENI. The specified IP address must be available within the CIDR block of the VSwitch. If this parameter is not specified, an available IP address is assigned from the VSwitch CIDR block at random.
  late final pulumi.Output<String> primaryIpAddress;
  /// Field `private_ip` has been deprecated from provider version 1.123.1. New field `primary_ip_address` instead
  late final pulumi.Output<String> privateIp;
  /// Specifies secondary private IP address N of the ENI. This IP address must be an available IP address within the CIDR block of the VSwitch to which the ENI belongs.
  late final pulumi.Output<List<String>> privateIpAddresses;
  /// Field `private_ips` has been deprecated from provider version 1.123.1. New field `private_ip_addresses` instead
  late final pulumi.Output<List<String>> privateIps;
  /// Field `private_ips_count` has been deprecated from provider version 1.123.1. New field `secondary_private_ip_address_count` instead
  late final pulumi.Output<int> privateIpsCount;
  /// The queue number of the ENI.
  late final pulumi.Output<int> queueNumber;
  /// The resource group id.
  late final pulumi.Output<String?> resourceGroupId;
  /// The number of private IP addresses that can be automatically created by ECS.
  late final pulumi.Output<int> secondaryPrivateIpAddressCount;
  /// The ID of security group N. The security groups and the ENI must belong to the same VPC. The valid values of N are based on the maximum number of security groups to which an ENI can be added. **NOTE:** Either `security_group_ids` or `security_groups` must be set with valid security group IDs.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Field `security_groups` has been deprecated from provider version 1.123.1. New field `security_group_ids` instead. **NOTE:** Either `security_group_ids` or `security_groups` must be set with valid security group IDs.
  late final pulumi.Output<List<String>> securityGroups;
  /// Indicates whether the source and destination IP address check feature is enabled. To improve network security, enable this feature. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> sourceDestCheck;
  /// The status of the ENI.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the VSwitch in the specified VPC. The private IP addresses assigned to the ENI must be available IP addresses within the CIDR block of the VSwitch.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [EcsNetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsNetworkInterface]. {@macro pulumi_ecs_ecs_network_interface_ecs_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsNetworkInterface(
    String name, {
    EcsNetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsNetworkInterface:EcsNetworkInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipv4PrefixCount = registerOutput<int>('ipv4PrefixCount');
    this.ipv4Prefixes = registerOutput<List<String>>('ipv4Prefixes');
    this.ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.mac = registerOutput<String>('mac');
    this.name = registerOutput<String>('name');
    this.networkInterfaceName = registerOutput<String>('networkInterfaceName');
    this.networkInterfaceTrafficMode = registerOutput<String>('networkInterfaceTrafficMode');
    this.primaryIpAddress = registerOutput<String>('primaryIpAddress');
    this.privateIp = registerOutput<String>('privateIp');
    this.privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    this.privateIps = registerOutput<List<String>>('privateIps');
    this.privateIpsCount = registerOutput<int>('privateIpsCount');
    this.queueNumber = registerOutput<int>('queueNumber');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.secondaryPrivateIpAddressCount = registerOutput<int>('secondaryPrivateIpAddressCount');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
