import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_rule_alarm_dimension.dart';
import 'scaling_rule_args.dart';
import 'scaling_rule_state.dart';

/// Provides a ESS scaling rule resource.
///
/// For information about ess scaling rule, see [CreateScalingRule](https://www.alibabacloud.com/help/en/auto-scaling/latest/createscalingrule).
///
/// &gt; **NOTE:** Available since v1.39.0.
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
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 1,
///     maxSize: 1,
///     scalingGroupName: myName,
///     vswitchIds: [defaultSwitch.id],
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
/// });
/// const defaultScalingConfiguration = new alicloud.ess.ScalingConfiguration("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroupId: defaultSecurityGroup.id,
///     forceDelete: true,
/// });
/// const defaultScalingRule = new alicloud.ess.ScalingRule("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     adjustmentType: "TotalCapacity",
///     adjustmentValue: 1,
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
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=1,
///     max_size=1,
///     scaling_group_name=my_name,
///     vswitch_ids=[default_switch.id],
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ])
/// default_scaling_configuration = alicloud.ess.ScalingConfiguration("default",
///     scaling_group_id=default_scaling_group.id,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_group_id=default_security_group.id,
///     force_delete=True)
/// default_scaling_rule = alicloud.ess.ScalingRule("default",
///     scaling_group_id=default_scaling_group.id,
///     adjustment_type="TotalCapacity",
///     adjustment_value=1)
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
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 1,
///         MaxSize = 1,
///         ScalingGroupName = myName,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///             "NewestInstance",
///         },
///     });
///
///     var defaultScalingConfiguration = new AliCloud.Ess.ScalingConfiguration("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroupId = defaultSecurityGroup.Id,
///         ForceDelete = true,
///     });
///
///     var defaultScalingRule = new AliCloud.Ess.ScalingRule("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         AdjustmentType = "TotalCapacity",
///         AdjustmentValue = 1,
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
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(2),
/// 			MemorySize:       pulumi.Float64Ref(4),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
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
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(1),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewScalingConfiguration(ctx, "default", &ess.ScalingConfigurationArgs{
/// 			ScalingGroupId:  defaultScalingGroup.ID(),
/// 			ImageId:         pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:    pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			ForceDelete:     pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewScalingRule(ctx, "default", &ess.ScalingRuleArgs{
/// 			ScalingGroupId:  defaultScalingGroup.ID(),
/// 			AdjustmentType:  pulumi.String("TotalCapacity"),
/// 			AdjustmentValue: pulumi.Int(1),
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
/// import com.pulumi.alicloud.ess.ScalingConfiguration;
/// import com.pulumi.alicloud.ess.ScalingConfigurationArgs;
/// import com.pulumi.alicloud.ess.ScalingRule;
/// import com.pulumi.alicloud.ess.ScalingRuleArgs;
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
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(1)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .vswitchIds(defaultSwitch.id())
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .build());
///
///         var defaultScalingConfiguration = new ScalingConfiguration("defaultScalingConfiguration", ScalingConfigurationArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroupId(defaultSecurityGroup.id())
///             .forceDelete(true)
///             .build());
///
///         var defaultScalingRule = new ScalingRule("defaultScalingRule", ScalingRuleArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .adjustmentType("TotalCapacity")
///             .adjustmentValue(1)
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
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: 1
///       maxSize: 1
///       scalingGroupName: ${myName}
///       vswitchIds:
///         - ${defaultSwitch.id}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///   defaultScalingConfiguration:
///     type: alicloud:ess:ScalingConfiguration
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroupId: ${defaultSecurityGroup.id}
///       forceDelete: 'true'
///   defaultScalingRule:
///     type: alicloud:ess:ScalingRule
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       adjustmentType: TotalCapacity
///       adjustmentValue: 1
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
/// You can use to the existing autoscaling-rule module
/// to create different type rules, alarm task and scheduled task one-click.
///
/// ## Import
///
/// ESS scaling rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/scalingRule:ScalingRule example abc123456
/// ```
class ScalingRule extends pulumi.CustomResource {
  /// Adjustment mode of a scaling rule. Optional values:
  /// - QuantityChangeInCapacity: It is used to increase or decrease a specified number of ECS instances.
  /// - PercentChangeInCapacity: It is used to increase or decrease a specified proportion of ECS instances.
  /// - TotalCapacity: It is used to adjust the quantity of ECS instances in the current scaling group to a specified value.
  late final pulumi.Output<String?> adjustmentType;

  /// The number of ECS instances to be adjusted in the scaling rule. This parameter is required and applicable only to simple scaling rules. The number of ECS instances to be adjusted in a single scaling activity cannot exceed 500. Value range:
  /// - QuantityChangeInCapacity：(0, 500] U (-500, 0]
  /// - PercentChangeInCapacity：[0, 10000] U [-100, 0]
  /// - TotalCapacity：[0, 1000]
  late final pulumi.Output<int?> adjustmentValue;

  /// AlarmDimension for StepScalingRule. See `alarm_dimension` below.
  late final pulumi.Output<ScalingRuleAlarmDimension?> alarmDimension;

  /// The unique identifier of the scaling rule.
  late final pulumi.Output<String> ari;

  /// The cooldown time of the scaling rule. This parameter is applicable only to simple scaling rules. Value range: [0, 86,400], in seconds. The default value is empty，if not set, the return value will be 0, which is the default value of integer.
  late final pulumi.Output<int?> cooldown;

  /// Indicates whether scale in by the target tracking policy is disabled. Default to false.
  late final pulumi.Output<bool?> disableScaleIn;

  /// The estimated time, in seconds, until a newly launched instance will contribute CloudMonitor metrics. Default to 300.
  late final pulumi.Output<int> estimatedInstanceWarmup;

  /// The Hybrid Cloud Monitoring metrics. See `hybrid_metrics` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> hybridMetrics;

  /// The ID of the Hybrid Cloud Monitoring metric repository.
  late final pulumi.Output<String?> hybridMonitorNamespace;

  /// The maximum number of ECS instances that can be added to the scaling group. If you specify InitialMaxSize, you must also specify PredictiveValueBehavior.
  late final pulumi.Output<int> initialMaxSize;

  /// A CloudMonitor metric name.
  late final pulumi.Output<String?> metricName;

  /// The type of the metric. Valid values: system, custom, hybrid.
  late final pulumi.Output<String> metricType;

  /// The minimum number of instances that must be scaled. This parameter takes effect if you set ScalingRuleType to SimpleScalingRule or StepScalingRule, and AdjustmentType to PercentChangeInCapacity.
  late final pulumi.Output<int?> minAdjustmentMagnitude;

  /// The mode of the predictive scaling rule. Valid values: PredictAndScale, PredictOnly.
  late final pulumi.Output<String> predictiveScalingMode;

  /// The amount of buffer time before the prediction task runs. By default, all prediction tasks that are automatically created by a predictive scaling rule run on the hour. You can specify a buffer time to run prediction tasks and prepare resources in advance. Valid values: 0 to 60. Unit: minutes.
  late final pulumi.Output<int> predictiveTaskBufferTime;

  /// The action on the predicted maximum value. Valid values: MaxOverridePredictiveValue, PredictiveValueOverrideMax, PredictiveValueOverrideMaxWithBuffer.
  late final pulumi.Output<String> predictiveValueBehavior;

  /// The ratio based on which the predicted value is increased if you set PredictiveValueBehavior to PredictiveValueOverrideMaxWithBuffer. If the predicted value increased by this ratio is greater than the initial maximum capacity, the increased value is used as the maximum value for prediction tasks. Valid values: 0 to 100.
  late final pulumi.Output<int> predictiveValueBuffer;

  /// The number of consecutive times that the event-triggered task created for scale-ins must meet the threshold conditions before an alert is triggered. After a target tracking scaling rule is created, an event-triggered task is automatically created and associated with the target tracking scaling rule.
  late final pulumi.Output<int> scaleInEvaluationCount;

  /// The number of consecutive times that the event-triggered task created for scale-outs must meet the threshold conditions before an alert is triggered. After a target tracking scaling rule is created, an event-triggered task is automatically created and associated with the target tracking scaling rule.
  late final pulumi.Output<int> scaleOutEvaluationCount;

  /// ID of the scaling group of a scaling rule.
  late final pulumi.Output<String> scalingGroupId;

  /// Name shown for the scaling rule, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is scaling rule id.
  late final pulumi.Output<String> scalingRuleName;

  /// The scaling rule type, either "SimpleScalingRule", "TargetTrackingScalingRule", "StepScalingRule", "PredictiveScalingRule". Default to "SimpleScalingRule".
  late final pulumi.Output<String?> scalingRuleType;

  /// Steps for StepScalingRule. See `step_adjustment` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> stepAdjustments;

  /// The target value for the metric.
  late final pulumi.Output<double?> targetValue;

  /// Creates a new [ScalingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingRule]. {@macro pulumi_ess_scaling_rule_scaling_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingRule(
    String name, {
    ScalingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/scalingRule:ScalingRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adjustmentType = registerOutput<String?>('adjustmentType');
    adjustmentValue = registerOutput<int?>('adjustmentValue');
    alarmDimension = registerOutput<ScalingRuleAlarmDimension?>(
      'alarmDimension',
    );
    ari = registerOutput<String>('ari');
    cooldown = registerOutput<int?>('cooldown');
    disableScaleIn = registerOutput<bool?>('disableScaleIn');
    estimatedInstanceWarmup = registerOutput<int>('estimatedInstanceWarmup');
    hybridMetrics = registerOutput<List<Map<String, dynamic>>?>(
      'hybridMetrics',
    );
    hybridMonitorNamespace = registerOutput<String?>('hybridMonitorNamespace');
    initialMaxSize = registerOutput<int>('initialMaxSize');
    metricName = registerOutput<String?>('metricName');
    metricType = registerOutput<String>('metricType');
    minAdjustmentMagnitude = registerOutput<int?>('minAdjustmentMagnitude');
    predictiveScalingMode = registerOutput<String>('predictiveScalingMode');
    predictiveTaskBufferTime = registerOutput<int>('predictiveTaskBufferTime');
    predictiveValueBehavior = registerOutput<String>('predictiveValueBehavior');
    predictiveValueBuffer = registerOutput<int>('predictiveValueBuffer');
    scaleInEvaluationCount = registerOutput<int>('scaleInEvaluationCount');
    scaleOutEvaluationCount = registerOutput<int>('scaleOutEvaluationCount');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    scalingRuleName = registerOutput<String>('scalingRuleName');
    scalingRuleType = registerOutput<String?>('scalingRuleType');
    stepAdjustments = registerOutput<List<Map<String, dynamic>>?>(
      'stepAdjustments',
    );
    targetValue = registerOutput<double?>('targetValue');
  }

  /// Gets an existing [ScalingRule] resource's state with the given [name] and [id].
  static ScalingRule get(
    String name,
    pulumi.Input<String> id, {
    ScalingRuleState? state,
  }) {
    return ScalingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScalingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/scalingRule:ScalingRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adjustmentType = registerOutput<String?>('adjustmentType');
    adjustmentValue = registerOutput<int?>('adjustmentValue');
    alarmDimension = registerOutput<ScalingRuleAlarmDimension?>(
      'alarmDimension',
    );
    ari = registerOutput<String>('ari');
    cooldown = registerOutput<int?>('cooldown');
    disableScaleIn = registerOutput<bool?>('disableScaleIn');
    estimatedInstanceWarmup = registerOutput<int>('estimatedInstanceWarmup');
    hybridMetrics = registerOutput<List<Map<String, dynamic>>?>(
      'hybridMetrics',
    );
    hybridMonitorNamespace = registerOutput<String?>('hybridMonitorNamespace');
    initialMaxSize = registerOutput<int>('initialMaxSize');
    metricName = registerOutput<String?>('metricName');
    metricType = registerOutput<String>('metricType');
    minAdjustmentMagnitude = registerOutput<int?>('minAdjustmentMagnitude');
    predictiveScalingMode = registerOutput<String>('predictiveScalingMode');
    predictiveTaskBufferTime = registerOutput<int>('predictiveTaskBufferTime');
    predictiveValueBehavior = registerOutput<String>('predictiveValueBehavior');
    predictiveValueBuffer = registerOutput<int>('predictiveValueBuffer');
    scaleInEvaluationCount = registerOutput<int>('scaleInEvaluationCount');
    scaleOutEvaluationCount = registerOutput<int>('scaleOutEvaluationCount');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    scalingRuleName = registerOutput<String>('scalingRuleName');
    scalingRuleType = registerOutput<String?>('scalingRuleType');
    stepAdjustments = registerOutput<List<Map<String, dynamic>>?>(
      'stepAdjustments',
    );
    targetValue = registerOutput<double?>('targetValue');
  }
}
