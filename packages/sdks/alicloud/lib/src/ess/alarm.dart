import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_args.dart';
import 'alarm_expression.dart';
import 'alarm_state.dart';

/// Provides a ESS alarm task resource.
///
/// For information about ess alarm, see [CreateAlarm](https://www.alibabacloud.com/help/en/auto-scaling/latest/createalarm).
///
/// > **NOTE:** Available since v1.15.0.
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
///     name: myName,
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
/// const defaultScalingRule = new alicloud.ess.ScalingRule("default", {
///     scalingRuleName: myName,
///     scalingGroupId: defaultScalingGroup.id,
///     adjustmentType: "TotalCapacity",
///     adjustmentValue: 2,
///     cooldown: 60,
/// });
/// const defaultAlarm = new alicloud.ess.Alarm("default", {
///     name: myName,
///     description: name,
///     alarmActions: [defaultScalingRule.ari],
///     scalingGroupId: defaultScalingGroup.id,
///     metricType: "system",
///     metricName: "CpuUtilization",
///     period: 300,
///     statistics: "Average",
///     threshold: "200.3",
///     comparisonOperator: ">=",
///     evaluationCount: 2,
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
///     name=my_name,
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
/// default_scaling_rule = alicloud.ess.ScalingRule("default",
///     scaling_rule_name=my_name,
///     scaling_group_id=default_scaling_group.id,
///     adjustment_type="TotalCapacity",
///     adjustment_value=2,
///     cooldown=60)
/// default_alarm = alicloud.ess.Alarm("default",
///     name=my_name,
///     description=name,
///     alarm_actions=[default_scaling_rule.ari],
///     scaling_group_id=default_scaling_group.id,
///     metric_type="system",
///     metric_name="CpuUtilization",
///     period=300,
///     statistics="Average",
///     threshold="200.3",
///     comparison_operator=">=",
///     evaluation_count=2)
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
///         Name = myName,
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
///     var defaultScalingRule = new AliCloud.Ess.ScalingRule("default", new()
///     {
///         ScalingRuleName = myName,
///         ScalingGroupId = defaultScalingGroup.Id,
///         AdjustmentType = "TotalCapacity",
///         AdjustmentValue = 2,
///         Cooldown = 60,
///     });
///
///     var defaultAlarm = new AliCloud.Ess.Alarm("default", new()
///     {
///         Name = myName,
///         Description = name,
///         AlarmActions = new[]
///         {
///             defaultScalingRule.Ari,
///         },
///         ScalingGroupId = defaultScalingGroup.Id,
///         MetricType = "system",
///         MetricName = "CpuUtilization",
///         Period = 300,
///         Statistics = "Average",
///         Threshold = "200.3",
///         ComparisonOperator = ">=",
///         EvaluationCount = 2,
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
/// 			Name:  pulumi.String(myName),
/// 			VpcId: defaultNetwork.ID(),
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
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
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
/// 		defaultScalingRule, err := ess.NewScalingRule(ctx, "default", &ess.ScalingRuleArgs{
/// 			ScalingRuleName: pulumi.String(myName),
/// 			ScalingGroupId:  defaultScalingGroup.ID(),
/// 			AdjustmentType:  pulumi.String("TotalCapacity"),
/// 			AdjustmentValue: pulumi.Int(2),
/// 			Cooldown:        pulumi.Int(60),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewAlarm(ctx, "default", &ess.AlarmArgs{
/// 			Name:        pulumi.String(myName),
/// 			Description: pulumi.String(name),
/// 			AlarmActions: pulumi.StringArray{
/// 				defaultScalingRule.Ari,
/// 			},
/// 			ScalingGroupId:     defaultScalingGroup.ID(),
/// 			MetricType:         pulumi.String("system"),
/// 			MetricName:         pulumi.String("CpuUtilization"),
/// 			Period:             pulumi.Int(300),
/// 			Statistics:         pulumi.String("Average"),
/// 			Threshold:          pulumi.String("200.3"),
/// 			ComparisonOperator: pulumi.String(">="),
/// 			EvaluationCount:    pulumi.Int(2),
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
/// import com.pulumi.alicloud.ess.ScalingRule;
/// import com.pulumi.alicloud.ess.ScalingRuleArgs;
/// import com.pulumi.alicloud.ess.Alarm;
/// import com.pulumi.alicloud.ess.AlarmArgs;
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
///             .name(myName)
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
///         var defaultScalingRule = new ScalingRule("defaultScalingRule", ScalingRuleArgs.builder()
///             .scalingRuleName(myName)
///             .scalingGroupId(defaultScalingGroup.id())
///             .adjustmentType("TotalCapacity")
///             .adjustmentValue(2)
///             .cooldown(60)
///             .build());
///
///         var defaultAlarm = new Alarm("defaultAlarm", AlarmArgs.builder()
///             .name(myName)
///             .description(name)
///             .alarmActions(defaultScalingRule.ari())
///             .scalingGroupId(defaultScalingGroup.id())
///             .metricType("system")
///             .metricName("CpuUtilization")
///             .period(300)
///             .statistics("Average")
///             .threshold("200.3")
///             .comparisonOperator(">=")
///             .evaluationCount(2)
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
///       name: ${myName}
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
///   defaultScalingRule:
///     type: alicloud:ess:ScalingRule
///     name: default
///     properties:
///       scalingRuleName: ${myName}
///       scalingGroupId: ${defaultScalingGroup.id}
///       adjustmentType: TotalCapacity
///       adjustmentValue: 2
///       cooldown: 60
///   defaultAlarm:
///     type: alicloud:ess:Alarm
///     name: default
///     properties:
///       name: ${myName}
///       description: ${name}
///       alarmActions:
///         - ${defaultScalingRule.ari}
///       scalingGroupId: ${defaultScalingGroup.id}
///       metricType: system
///       metricName: CpuUtilization
///       period: 300
///       statistics: Average
///       threshold: 200.3
///       comparisonOperator: '>='
///       evaluationCount: 2
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
/// to create alarm task, different type rules and scheduled task one-click.
///
/// ## Import
///
/// Ess alarm can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/alarm:Alarm example asg-2ze500_045efffe-4d05
/// ```
class Alarm extends pulumi.CustomResource {
  /// The list of actions to execute when this alarm transition into an ALARM state. Each action is specified as ess scaling rule ari.
  late final pulumi.Output<List<String>> alarmActions;
  /// Defines the application group id defined by CMS which is assigned when you upload custom metric to CMS, only available for custom metirc.
  late final pulumi.Output<int?> cloudMonitorGroupId;
  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Supported value: >=, <=, >, <. Defaults to >=.
  late final pulumi.Output<String> comparisonOperator;
  /// The description for the alarm.
  late final pulumi.Output<String?> description;
  /// The dimension map for the alarm's associated metric. For all metrics, you can not set the dimension key as "scaling_group" or "userId", which is set by default, the second dimension for metric, such as "device" for "PackagesNetIn", need to be set by users. See `dimensions` below.
  late final pulumi.Output<Map<String, String>> dimensions;
  /// The effective period of the event-triggered task. By default, the event-triggered task is in effect at all times.
  late final pulumi.Output<String> effective;
  /// Whether to enable specific ess alarm. Default to true.
  late final pulumi.Output<bool?> enable;
  /// The number of times that needs to satisfies comparison condition before transition into ALARM state. Defaults to 3.
  late final pulumi.Output<int?> evaluationCount;
  /// Support multi alert rule. See `expressions` below for details.
  late final pulumi.Output<List<AlarmExpression>> expressions;
  /// The relationship between the trigger conditions in the multi-metric alert rule.
  late final pulumi.Output<String> expressionsLogicOperator;
  /// The name for the alarm's associated metric. See `dimensions` below for details.
  late final pulumi.Output<String> metricName;
  /// The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  late final pulumi.Output<String?> metricType;
  /// The name for ess alarm.
  late final pulumi.Output<String> name;
  /// The period in seconds over which the specified statistic is applied. Supported value: 60, 120, 300, 900. Defaults to 300.
  late final pulumi.Output<int> period;
  /// The scaling group associated with this alarm, the 'ForceNew' attribute is available in 1.56.0+.
  late final pulumi.Output<String> scalingGroupId;
  /// The status of the event-triggered task. Valid values:
  /// - ALARM: The alert condition is met and an alert is triggered.
  /// - OK: The alert condition is not met.
  /// - INSUFFICIENT_DATA: Auto Scaling cannot determine whether the alert condition is met due to insufficient data.
  late final pulumi.Output<String> state;
  /// The statistic to apply to the alarm's associated metric. Supported value: Average, Minimum, Maximum. Defaults to Average.
  late final pulumi.Output<String> statistics;
  /// The value against which the specified statistics is compared.
  late final pulumi.Output<String> threshold;

  /// Creates a new [Alarm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alarm]. {@macro pulumi_ess_alarm_alarm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alarm(
    String name, {
    AlarmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/alarm:Alarm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alarmActions = registerOutput<List<String>>('alarmActions');
    this.cloudMonitorGroupId = registerOutput<int?>('cloudMonitorGroupId');
    this.comparisonOperator = registerOutput<String>('comparisonOperator');
    this.description = registerOutput<String?>('description');
    this.dimensions = registerOutput<Map<String, String>>('dimensions');
    this.effective = registerOutput<String>('effective');
    this.enable = registerOutput<bool?>('enable');
    this.evaluationCount = registerOutput<int?>('evaluationCount');
    this.expressions = registerOutput<List<AlarmExpression>>('expressions');
    this.expressionsLogicOperator = registerOutput<String>('expressionsLogicOperator');
    this.metricName = registerOutput<String>('metricName');
    this.metricType = registerOutput<String?>('metricType');
    this.name = registerOutput<String>('name');
    this.period = registerOutput<int>('period');
    this.scalingGroupId = registerOutput<String>('scalingGroupId');
    this.state = registerOutput<String>('state');
    this.statistics = registerOutput<String>('statistics');
    this.threshold = registerOutput<String>('threshold');
  }

  /// Gets an existing [Alarm] resource's state with the given [name] and [id].
  static Alarm get(
    String name,
    pulumi.Input<String> id, {
    AlarmState? state,
  }) {
    return Alarm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Alarm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/alarm:Alarm',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alarmActions = registerOutput<List<String>>('alarmActions');
    this.cloudMonitorGroupId = registerOutput<int?>('cloudMonitorGroupId');
    this.comparisonOperator = registerOutput<String>('comparisonOperator');
    this.description = registerOutput<String?>('description');
    this.dimensions = registerOutput<Map<String, String>>('dimensions');
    this.effective = registerOutput<String>('effective');
    this.enable = registerOutput<bool?>('enable');
    this.evaluationCount = registerOutput<int?>('evaluationCount');
    this.expressions = registerOutput<List<AlarmExpression>>('expressions');
    this.expressionsLogicOperator = registerOutput<String>('expressionsLogicOperator');
    this.metricName = registerOutput<String>('metricName');
    this.metricType = registerOutput<String?>('metricType');
    this.name = registerOutput<String>('name');
    this.period = registerOutput<int>('period');
    this.scalingGroupId = registerOutput<String>('scalingGroupId');
    this.state = registerOutput<String>('state');
    this.statistics = registerOutput<String>('statistics');
    this.threshold = registerOutput<String>('threshold');
  }
}
