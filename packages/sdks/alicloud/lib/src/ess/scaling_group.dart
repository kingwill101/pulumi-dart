import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_group_alb_server_group.dart';
import 'scaling_group_args.dart';
import 'scaling_group_launch_template_override.dart';
import 'scaling_group_state.dart';

/// Provides a ESS scaling group resource which is a collection of ECS instances with the same application scenarios.
///
/// It defines the maximum and minimum numbers of ECS instances in the group, and their associated Server Load Balancer instances, RDS instances, and other attributes.
///
/// > **NOTE:** You can launch an ESS scaling group for a VPC network via specifying parameter `vswitch_ids`.
///
/// For information about ess scaling rule, see [CreateScalingGroup](https://www.alibabacloud.com/help/en/auto-scaling/latest/createscalinggroup).
///
/// > **NOTE:** Available since v1.39.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const myName = `${name}-${defaultInteger.result}`;
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 2,
///     memorySize: 4,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: myName,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: myName,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: myName,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultSecurityGroupRule = new alicloud.ecs.SecurityGroupRule("default", {
///     type: "ingress",
///     ipProtocol: "tcp",
///     nicType: "intranet",
///     policy: "accept",
///     portRange: "22/22",
///     priority: 1,
///     securityGroupId: defaultSecurityGroup.id,
///     cidrIp: "172.16.0.0/24",
/// });
/// const default2 = new alicloud.vpc.Switch("default2", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.1.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: `${name}-bar`,
/// });
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 1,
///     maxSize: 1,
///     scalingGroupName: myName,
///     defaultCooldown: 20,
///     vswitchIds: [
///         defaultSwitch.id,
///         default2.id,
///     ],
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// my_name = f"{name}-{default_integer['result']}"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=2,
///     memory_size=4)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=my_name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=my_name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name=my_name,
///     vpc_id=default_network.id)
/// default_security_group_rule = alicloud.ecs.SecurityGroupRule("default",
///     type="ingress",
///     ip_protocol="tcp",
///     nic_type="intranet",
///     policy="accept",
///     port_range="22/22",
///     priority=1,
///     security_group_id=default_security_group.id,
///     cidr_ip="172.16.0.0/24")
/// default2 = alicloud.vpc.Switch("default2",
///     vpc_id=default_network.id,
///     cidr_block="172.16.1.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=f"{name}-bar")
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=1,
///     max_size=1,
///     scaling_group_name=my_name,
///     default_cooldown=20,
///     vswitch_ids=[
///         default_switch.id,
///         default2.id,
///     ],
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var myName = $"{name}-{defaultInteger.Result}";
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 2,
///         MemorySize = 4,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = myName,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = myName,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = myName,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultSecurityGroupRule = new AliCloud.Ecs.SecurityGroupRule("default", new()
///     {
///         Type = "ingress",
///         IpProtocol = "tcp",
///         NicType = "intranet",
///         Policy = "accept",
///         PortRange = "22/22",
///         Priority = 1,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         CidrIp = "172.16.0.0/24",
///     });
///
///     var default2 = new AliCloud.Vpc.Switch("default2", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.1.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = $"{name}-bar",
///     });
///
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 1,
///         MaxSize = 1,
///         ScalingGroupName = myName,
///         DefaultCooldown = 20,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///             default2.Id,
///         },
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///             "NewestInstance",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ess"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myName := fmt.Sprintf("%v-%v", name, defaultInteger.Result)
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(2),
/// 			MemorySize:       pulumi.Float64Ref(4),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(myName),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(myName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String(myName),
/// 			VpcId:             defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroupRule(ctx, "default", &ecs.SecurityGroupRuleArgs{
/// 			Type:            pulumi.String("ingress"),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			NicType:         pulumi.String("intranet"),
/// 			Policy:          pulumi.String("accept"),
/// 			PortRange:       pulumi.String("22/22"),
/// 			Priority:        pulumi.Int(1),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			CidrIp:          pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default2, err := vpc.NewSwitch(ctx, "default2", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.1.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.Sprintf("%v-bar", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(1),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			DefaultCooldown:  pulumi.Int(20),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 				default2.ID(),
/// 			},
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroupRule;
/// import com.pulumi.alicloud.ecs.SecurityGroupRuleArgs;
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var myName = String.format("%s-%s", name,defaultInteger.result());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(2)
///             .memorySize(4)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(myName)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(myName)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(myName)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultSecurityGroupRule = new SecurityGroupRule("defaultSecurityGroupRule", SecurityGroupRuleArgs.builder()
///             .type("ingress")
///             .ipProtocol("tcp")
///             .nicType("intranet")
///             .policy("accept")
///             .portRange("22/22")
///             .priority(1)
///             .securityGroupId(defaultSecurityGroup.id())
///             .cidrIp("172.16.0.0/24")
///             .build());
///
///         var default2 = new Switch("default2", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.1.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(String.format("%s-bar", name))
///             .build());
///
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(1)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .defaultCooldown(20)
///             .vswitchIds(
///                 defaultSwitch.id(),
///                 default2.id())
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${myName}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${myName}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       securityGroupName: ${myName}
///       vpcId: ${defaultNetwork.id}
///   defaultSecurityGroupRule:
///     type: alicloud:ecs:SecurityGroupRule
///     name: default
///     properties:
///       type: ingress
///       ipProtocol: tcp
///       nicType: intranet
///       policy: accept
///       portRange: 22/22
///       priority: 1
///       securityGroupId: ${defaultSecurityGroup.id}
///       cidrIp: 172.16.0.0/24
///   default2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.1.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}-bar
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: 1
///       maxSize: 1
///       scalingGroupName: ${myName}
///       defaultCooldown: 20
///       vswitchIds:
///         - ${defaultSwitch.id}
///         - ${default2.id}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 2
///         memorySize: 4
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use to the existing autoscaling module
/// to create a scaling group, configuration and lifecycle hook one-click.
///
/// ## Import
///
/// ESS scaling group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/scalingGroup:ScalingGroup example asg-abc123456
/// ```
class ScalingGroup extends pulumi.CustomResource {
  /// If a Serve ALB instance is specified in the scaling group, the scaling group automatically attaches its ECS instances to the Server ALB instance.  See `alb_server_group` below for details.
  late final pulumi.Output<List<ScalingGroupAlbServerGroup>?> albServerGroups;
  /// The allocation policy of instances. Auto Scaling selects instance types based on the allocation policy to create instances. The policy can be applied to pay-as-you-go instances and preemptible instances. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  late final pulumi.Output<String> allocationStrategy;
  /// Specifies whether to enable automatic rebalancing for the scaling group. This parameter takes effect only when BalancedOnly is enabled for a zone-balanced scaling group. Valid values: false, true.
  late final pulumi.Output<bool?> autoRebalance;
  /// Specifies whether to evenly distribute instances in the scaling group across multiple zones. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  late final pulumi.Output<bool?> azBalance;
  /// The zone balancing mode. This parameter takes effect only when zone balancing is enabled. Valid values: BalancedBestEffort, BalancedOnly.
  late final pulumi.Output<String?> balanceMode;
  /// Specifies whether to automatically create pay-as-you-go instances to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is supported only if you set 'multi_az_policy' to COST_OPTIMIZED. Valid values: true, false.
  late final pulumi.Output<bool> capacityOptionsCompensateWithOnDemand;
  /// The minimum number of pay-as-you-go instances that must be contained in the scaling group. When the actual number of pay-as-you-go instances in the scaling group drops below the value of this parameter, Auto Scaling preferentially creates pay-as-you-go instances. Valid values: 0 to 1000. If you set 'multi_az_policy' to COMPOSABLE, the default value of this parameter is 0.
  late final pulumi.Output<int> capacityOptionsOnDemandBaseCapacity;
  /// The percentage of pay-as-you-go instances in the excess instances when the minimum number of pay-as-you-go instances is reached. 'on_demand_base_capacity' specifies the minimum number of pay-as-you-go instances that must be contained in the scaling group. Valid values: 0 to 100. If you set 'multi_az_policy' to COMPOSABLE, the default value of this parameter is 100.
  late final pulumi.Output<int> capacityOptionsOnDemandPercentageAboveBaseCapacity;
  /// The price comparison mode. Valid values: PricePerUnit,PricePerVCpu. Default value: PricePerUnit.
  late final pulumi.Output<String> capacityOptionsPriceComparisonMode;
  /// Specifies whether to replace pay-as-you-go instances with preemptible instances. If you specify 'compensate_with_on_demand', it may result in a higher percentage of pay-as-you-go instances compared to the value of 'on_demand_percentage_above_base_capacity'. If you specify this parameter, Auto Scaling preferentially deploys preemptible instances to replace the surplus pay-as-you-go instances when preemptible instance types are available. If you specify 'compensate_with_on_demand', Auto Scaling creates pay-as-you-go instances when preemptible instance types are insufficient. To avoid retaining these pay-as-you-go instances for extended periods, Auto Scaling attempts to replace them with preemptible instances when sufficient preemptible instance types become available. Valid values: true, false.
  late final pulumi.Output<bool> capacityOptionsSpotAutoReplaceOnDemand;
  /// Specifies whether to automatically create pay-as-you-go instances to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is supported only if you set 'multi_az_policy' to COST_OPTIMIZED. Valid values: true, false.
  late final pulumi.Output<bool> compensateWithOnDemand;
  /// The ID of the elastic container instance.
  late final pulumi.Output<String?> containerGroupId;
  /// If an RDS instance is specified in the scaling group, the scaling group automatically attaches the Intranet IP addresses of its ECS instances to the RDS access whitelist.
  /// - The specified RDS instance must be in running status.
  /// - The specified RDS instance’s whitelist must have room for more IP addresses.
  late final pulumi.Output<List<String>?> dbInstanceIds;
  /// Default cool-down time (in seconds) of the scaling group. Value range: [0, 86400]. The default value is 300s.
  late final pulumi.Output<int?> defaultCooldown;
  /// Expected number of ECS instances in the scaling group. Value range: [min_size, max_size].
  late final pulumi.Output<int?> desiredCapacity;
  /// Specifies whether the scaling group deletion protection is enabled. `true` or `false`, Default value: `false`.
  late final pulumi.Output<bool?> groupDeletionProtection;
  /// Resource type within scaling group. Optional values: ECS, ECI. Default to ECS.
  late final pulumi.Output<String> groupType;
  /// Resource type within scaling group. Optional values: ECS, ECI, NONE, LOAD_BALANCER. Default to ECS.
  late final pulumi.Output<String> healthCheckType;
  /// The health check modes of the scaling group. Valid values: ECS, NONE, LOAD_BALANCER.
  late final pulumi.Output<List<String>?> healthCheckTypes;
  /// The ID of the instance from which Auto Scaling obtains the required configuration information and uses the information to automatically create a scaling configuration.
  late final pulumi.Output<String?> instanceId;
  /// Instance launch template ID, scaling group obtains launch configuration from instance launch template, see [Launch Template](https://www.alibabacloud.com/help/doc-detail/73916.html). Creating scaling group from launch template enable group automatically.
  late final pulumi.Output<String?> launchTemplateId;
  /// The details of the instance types that are specified by using the Extend Instance Type of Launch Template feature.  See `launch_template_override` below for details.
  late final pulumi.Output<List<ScalingGroupLaunchTemplateOverride>?> launchTemplateOverrides;
  /// The version number of the launch template. Valid values are the version number, `Latest`, or `Default`, Default value: `Default`.
  late final pulumi.Output<String?> launchTemplateVersion;
  /// If a Server Load Balancer instance is specified in the scaling group, the scaling group automatically attaches its ECS instances to the Server Load Balancer instance.
  /// - The Server Load Balancer instance must be enabled.
  /// - At least one listener must be configured for each Server Load Balancer and it HealthCheck must be on. Otherwise, creation will fail (it may be useful to add a `depends_on` argument
  /// targeting your `alicloud.slb.Listener` in order to make sure the listener with its HealthCheck configuration is ready before creating your scaling group).
  /// - The Server Load Balancer instance attached with VPC-type ECS instances cannot be attached to the scaling group.
  /// - The default weight of an ECS instance attached to the Server Load Balancer instance is 50.
  late final pulumi.Output<List<String>?> loadbalancerIds;
  /// The maximum life span of an instance in the scaling group. Unit: seconds.
  late final pulumi.Output<int?> maxInstanceLifetime;
  /// Maximum number of ECS instances in the scaling group. Value range: [0, 2000].
  /// **NOTE:** From version 1.204.1, `max_size` can be set to `2000`.
  late final pulumi.Output<int> maxSize;
  /// Minimum number of ECS instances in the scaling group. Value range: [0, 2000].
  /// **NOTE:** From version 1.204.1, `min_size` can be set to `2000`.
  late final pulumi.Output<int> minSize;
  /// Multi-AZ scaling group ECS instance expansion and contraction strategy. PRIORITY, COMPOSABLE, BALANCE or COST_OPTIMIZED(Available since v1.54.0).
  late final pulumi.Output<String?> multiAzPolicy;
  /// The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand Instances. This base portion is provisioned first as your group scales.
  late final pulumi.Output<int> onDemandBaseCapacity;
  /// Controls the percentages of On-Demand Instances and Spot Instances for your additional capacity beyond OnDemandBaseCapacity.
  late final pulumi.Output<int> onDemandPercentageAboveBaseCapacity;
  /// Set or unset instances within group into protected status.
  late final pulumi.Output<List<String>?> protectedInstances;
  /// RemovalPolicy is used to select the ECS instances you want to remove from the scaling group when multiple candidates for removal exist. Optional values:
  /// - OldestInstance: removes the ECS instance that is added to the scaling group at the earliest point in time.
  /// - NewestInstance: removes the ECS instance that is added to the scaling group at the latest point in time.
  /// - OldestScalingConfiguration: removes the ECS instance that is created based on the earliest scaling configuration.
  /// - Default values: Default value of RemovalPolicy.1: OldestScalingConfiguration. Default value of RemovalPolicy.2: OldestInstance.
  late final pulumi.Output<List<String>> removalPolicies;
  /// The ID of the resource group to which you want to add the scaling group.
  late final pulumi.Output<String> resourceGroupId;
  /// Name shown for the scaling group, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain numbers, underscores `_`, hyphens `-`, and decimal points `.`. If this parameter is not specified, the default value is ScalingGroupId.
  late final pulumi.Output<String?> scalingGroupName;
  /// The reclaim mode of the scaling group. Optional values: recycle, release, forceRecycle, forceRelease.
  late final pulumi.Output<String> scalingPolicy;
  /// The allocation policy of preemptible instances. You can use this parameter to individually specify the allocation policy for preemptible instances. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  late final pulumi.Output<String> spotAllocationStrategy;
  /// The number of Spot pools to use to allocate your Spot capacity. The Spot pools is composed of instance types of lowest price.
  late final pulumi.Output<int> spotInstancePools;
  /// Whether to replace spot instances with newly created spot/onDemand instance when receive a spot recycling message.
  late final pulumi.Output<bool> spotInstanceRemedy;
  /// The period of time required by the ECS instance to enter the Stopped state. Unit: seconds. Valid values: 30 to 240.
  late final pulumi.Output<int?> stopInstanceTimeout;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// It has been deprecated from version 1.7.1 and new field 'vswitch_ids' replaces it.
  late final pulumi.Output<String?> vswitchId;
  /// List of virtual switch IDs in which the ecs instances to be launched.
  late final pulumi.Output<List<String>?> vswitchIds;

  /// Creates a new [ScalingGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingGroup]. {@macro pulumi_ess_scaling_group_scaling_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingGroup(
    String name, {
    ScalingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/scalingGroup:ScalingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.albServerGroups = registerOutput<List<ScalingGroupAlbServerGroup>?>('albServerGroups');
    this.allocationStrategy = registerOutput<String>('allocationStrategy');
    this.autoRebalance = registerOutput<bool?>('autoRebalance');
    this.azBalance = registerOutput<bool?>('azBalance');
    this.balanceMode = registerOutput<String?>('balanceMode');
    this.capacityOptionsCompensateWithOnDemand = registerOutput<bool>('capacityOptionsCompensateWithOnDemand');
    this.capacityOptionsOnDemandBaseCapacity = registerOutput<int>('capacityOptionsOnDemandBaseCapacity');
    this.capacityOptionsOnDemandPercentageAboveBaseCapacity = registerOutput<int>('capacityOptionsOnDemandPercentageAboveBaseCapacity');
    this.capacityOptionsPriceComparisonMode = registerOutput<String>('capacityOptionsPriceComparisonMode');
    this.capacityOptionsSpotAutoReplaceOnDemand = registerOutput<bool>('capacityOptionsSpotAutoReplaceOnDemand');
    this.compensateWithOnDemand = registerOutput<bool>('compensateWithOnDemand');
    this.containerGroupId = registerOutput<String?>('containerGroupId');
    this.dbInstanceIds = registerOutput<List<String>?>('dbInstanceIds');
    this.defaultCooldown = registerOutput<int?>('defaultCooldown');
    this.desiredCapacity = registerOutput<int?>('desiredCapacity');
    this.groupDeletionProtection = registerOutput<bool?>('groupDeletionProtection');
    this.groupType = registerOutput<String>('groupType');
    this.healthCheckType = registerOutput<String>('healthCheckType');
    this.healthCheckTypes = registerOutput<List<String>?>('healthCheckTypes');
    this.instanceId = registerOutput<String?>('instanceId');
    this.launchTemplateId = registerOutput<String?>('launchTemplateId');
    this.launchTemplateOverrides = registerOutput<List<ScalingGroupLaunchTemplateOverride>?>('launchTemplateOverrides');
    this.launchTemplateVersion = registerOutput<String?>('launchTemplateVersion');
    this.loadbalancerIds = registerOutput<List<String>?>('loadbalancerIds');
    this.maxInstanceLifetime = registerOutput<int?>('maxInstanceLifetime');
    this.maxSize = registerOutput<int>('maxSize');
    this.minSize = registerOutput<int>('minSize');
    this.multiAzPolicy = registerOutput<String?>('multiAzPolicy');
    this.onDemandBaseCapacity = registerOutput<int>('onDemandBaseCapacity');
    this.onDemandPercentageAboveBaseCapacity = registerOutput<int>('onDemandPercentageAboveBaseCapacity');
    this.protectedInstances = registerOutput<List<String>?>('protectedInstances');
    this.removalPolicies = registerOutput<List<String>>('removalPolicies');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scalingGroupName = registerOutput<String?>('scalingGroupName');
    this.scalingPolicy = registerOutput<String>('scalingPolicy');
    this.spotAllocationStrategy = registerOutput<String>('spotAllocationStrategy');
    this.spotInstancePools = registerOutput<int>('spotInstancePools');
    this.spotInstanceRemedy = registerOutput<bool>('spotInstanceRemedy');
    this.stopInstanceTimeout = registerOutput<int?>('stopInstanceTimeout');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }

  /// Gets an existing [ScalingGroup] resource's state with the given [name] and [id].
  static ScalingGroup get(
    String name,
    pulumi.Input<String> id, {
    ScalingGroupState? state,
  }) {
    return ScalingGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScalingGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/scalingGroup:ScalingGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.albServerGroups = registerOutput<List<ScalingGroupAlbServerGroup>?>('albServerGroups');
    this.allocationStrategy = registerOutput<String>('allocationStrategy');
    this.autoRebalance = registerOutput<bool?>('autoRebalance');
    this.azBalance = registerOutput<bool?>('azBalance');
    this.balanceMode = registerOutput<String?>('balanceMode');
    this.capacityOptionsCompensateWithOnDemand = registerOutput<bool>('capacityOptionsCompensateWithOnDemand');
    this.capacityOptionsOnDemandBaseCapacity = registerOutput<int>('capacityOptionsOnDemandBaseCapacity');
    this.capacityOptionsOnDemandPercentageAboveBaseCapacity = registerOutput<int>('capacityOptionsOnDemandPercentageAboveBaseCapacity');
    this.capacityOptionsPriceComparisonMode = registerOutput<String>('capacityOptionsPriceComparisonMode');
    this.capacityOptionsSpotAutoReplaceOnDemand = registerOutput<bool>('capacityOptionsSpotAutoReplaceOnDemand');
    this.compensateWithOnDemand = registerOutput<bool>('compensateWithOnDemand');
    this.containerGroupId = registerOutput<String?>('containerGroupId');
    this.dbInstanceIds = registerOutput<List<String>?>('dbInstanceIds');
    this.defaultCooldown = registerOutput<int?>('defaultCooldown');
    this.desiredCapacity = registerOutput<int?>('desiredCapacity');
    this.groupDeletionProtection = registerOutput<bool?>('groupDeletionProtection');
    this.groupType = registerOutput<String>('groupType');
    this.healthCheckType = registerOutput<String>('healthCheckType');
    this.healthCheckTypes = registerOutput<List<String>?>('healthCheckTypes');
    this.instanceId = registerOutput<String?>('instanceId');
    this.launchTemplateId = registerOutput<String?>('launchTemplateId');
    this.launchTemplateOverrides = registerOutput<List<ScalingGroupLaunchTemplateOverride>?>('launchTemplateOverrides');
    this.launchTemplateVersion = registerOutput<String?>('launchTemplateVersion');
    this.loadbalancerIds = registerOutput<List<String>?>('loadbalancerIds');
    this.maxInstanceLifetime = registerOutput<int?>('maxInstanceLifetime');
    this.maxSize = registerOutput<int>('maxSize');
    this.minSize = registerOutput<int>('minSize');
    this.multiAzPolicy = registerOutput<String?>('multiAzPolicy');
    this.onDemandBaseCapacity = registerOutput<int>('onDemandBaseCapacity');
    this.onDemandPercentageAboveBaseCapacity = registerOutput<int>('onDemandPercentageAboveBaseCapacity');
    this.protectedInstances = registerOutput<List<String>?>('protectedInstances');
    this.removalPolicies = registerOutput<List<String>>('removalPolicies');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scalingGroupName = registerOutput<String?>('scalingGroupName');
    this.scalingPolicy = registerOutput<String>('scalingPolicy');
    this.spotAllocationStrategy = registerOutput<String>('spotAllocationStrategy');
    this.spotInstancePools = registerOutput<int>('spotInstancePools');
    this.spotInstanceRemedy = registerOutput<bool>('spotInstanceRemedy');
    this.stopInstanceTimeout = registerOutput<int?>('stopInstanceTimeout');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }
}
