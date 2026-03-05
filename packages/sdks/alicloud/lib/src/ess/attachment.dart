import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_args.dart';
import 'attachment_state.dart';

/// Attaches several ECS instances to a specified scaling group or remove them from it.
///
/// &gt; **NOTE:** ECS instances can be attached or remove only when the scaling group is active, and it has no scaling activity in progress.
///
/// &gt; **NOTE:** There are two types ECS instances in a scaling group: "AutoCreated" and "Attached". The total number of them can not larger than the scaling group "MaxSize".
///
/// &gt; **NOTE:** Available since v1.6.0.
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
///     memorySize: 8,
///     instanceTypeFamily: "ecs.g9i",
/// }));
/// const defaultGetImages = defaultGetInstanceTypes.then(defaultGetInstanceTypes => alicloud.ecs.getImages({
///     instanceType: defaultGetInstanceTypes.instanceTypes?.[0]?.id,
///     mostRecent: true,
///     owners: "system",
/// }));
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[0]?.id,
/// }));
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0])});
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
///     minSize: 0,
///     maxSize: 2,
///     scalingGroupName: myName,
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0])],
/// });
/// const defaultScalingConfiguration = new alicloud.ess.ScalingConfiguration("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroupId: defaultSecurityGroup.id,
///     systemDiskCategory: "cloud_essd",
///     forceDelete: true,
///     active: true,
///     enable: true,
/// });
/// const defaultInstance: alicloud.ecs.Instance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultInstance.push(new alicloud.ecs.Instance(`default-${range.value}`, {
///         imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///         instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///         securityGroups: [defaultSecurityGroup.id],
///         internetChargeType: "PayByTraffic",
///         internetMaxBandwidthOut: 10,
///         instanceChargeType: "PostPaid",
///         systemDiskCategory: "cloud_essd",
///         vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///         instanceName: name,
///     }));
/// }
/// const defaultAttachment = new alicloud.ess.Attachment("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     instanceIds: [
///         defaultInstance[0].id,
///         defaultInstance[1].id,
///     ],
///     force: true,
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
///     memory_size=8,
///     instance_type_family="ecs.g9i")
/// default_get_images = alicloud.ecs.get_images(instance_type=default_get_instance_types.instance_types[0].id,
///     most_recent=True,
///     owners="system")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$",
///     cidr_block="10.4.0.0/16")
/// default_get_switches = alicloud.vpc.get_switches(cidr_block="10.4.0.0/24",
///     vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_get_networks.ids[0])
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
///     min_size=0,
///     max_size=2,
///     scaling_group_name=my_name,
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[default_get_switches.ids[0]])
/// default_scaling_configuration = alicloud.ess.ScalingConfiguration("default",
///     scaling_group_id=default_scaling_group.id,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_group_id=default_security_group.id,
///     system_disk_category="cloud_essd",
///     force_delete=True,
///     active=True,
///     enable=True)
/// default_instance = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_instance.append(alicloud.ecs.Instance(f"default-{range['value']}",
///         image_id=default_get_images.images[0].id,
///         instance_type=default_get_instance_types.instance_types[0].id,
///         security_groups=[default_security_group.id],
///         internet_charge_type="PayByTraffic",
///         internet_max_bandwidth_out=10,
///         instance_charge_type="PostPaid",
///         system_disk_category="cloud_essd",
///         vswitch_id=default_get_switches.ids[0],
///         instance_name=name))
/// default_attachment = alicloud.ess.Attachment("default",
///     scaling_group_id=default_scaling_group.id,
///     instance_ids=[
///         default_instance[0].id,
///         default_instance[1].id,
///     ],
///     force=True)
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
///         MemorySize = 8,
///         InstanceTypeFamily = "ecs.g9i",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
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
///         MinSize = 0,
///         MaxSize = 2,
///         ScalingGroupName = myName,
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///             "NewestInstance",
///         },
///         VswitchIds = new[]
///         {
///             defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         },
///     });
///
///     var defaultScalingConfiguration = new AliCloud.Ess.ScalingConfiguration("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroupId = defaultSecurityGroup.Id,
///         SystemDiskCategory = "cloud_essd",
///         ForceDelete = true,
///         Active = true,
///         Enable = true,
///     });
///
///     var defaultInstance = new List<AliCloud.Ecs.Instance>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultInstance.Add(new AliCloud.Ecs.Instance($"default-{range.Value}", new()
///         {
///             ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///             InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///             SecurityGroups = new[]
///             {
///                 defaultSecurityGroup.Id,
///             },
///             InternetChargeType = "PayByTraffic",
///             InternetMaxBandwidthOut = 10,
///             InstanceChargeType = "PostPaid",
///             SystemDiskCategory = "cloud_essd",
///             VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///             InstanceName = name,
///         }));
///     }
///     var defaultAttachment = new AliCloud.Ess.Attachment("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         InstanceIds = new[]
///         {
///             defaultInstance[0].Id,
///             defaultInstance[1].Id,
///         },
///         Force = true,
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
/// 			AvailabilityZone:   pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:       pulumi.IntRef(2),
/// 			MemorySize:         pulumi.Float64Ref(8),
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.g9i"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			InstanceType: pulumi.StringRef(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			MostRecent:   pulumi.BoolRef(true),
/// 			Owners:       pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 			CidrBlock: pulumi.StringRef("10.4.0.0/16"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			CidrBlock: pulumi.StringRef("10.4.0.0/24"),
/// 			VpcId:     pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId:    pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
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
/// 			MinSize:          pulumi.Int(0),
/// 			MaxSize:          pulumi.Int(2),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				pulumi.String(defaultGetSwitches.Ids[0]),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewScalingConfiguration(ctx, "default", &ess.ScalingConfigurationArgs{
/// 			ScalingGroupId:     defaultScalingGroup.ID(),
/// 			ImageId:            pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:       pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroupId:    defaultSecurityGroup.ID(),
/// 			SystemDiskCategory: pulumi.String("cloud_essd"),
/// 			ForceDelete:        pulumi.Bool(true),
/// 			Active:             pulumi.Bool(true),
/// 			Enable:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultInstance []*ecs.Instance
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewInstance(ctx, fmt.Sprintf("default-%v", key0), &ecs.InstanceArgs{
/// 				ImageId:      pulumi.String(defaultGetImages.Images[0].Id),
/// 				InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 				SecurityGroups: pulumi.StringArray{
/// 					defaultSecurityGroup.ID(),
/// 				},
/// 				InternetChargeType:      pulumi.String("PayByTraffic"),
/// 				InternetMaxBandwidthOut: pulumi.Int(10),
/// 				InstanceChargeType:      pulumi.String("PostPaid"),
/// 				SystemDiskCategory:      pulumi.String("cloud_essd"),
/// 				VswitchId:               pulumi.String(defaultGetSwitches.Ids[0]),
/// 				InstanceName:            pulumi.String(name),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultInstance = append(defaultInstance, __res)
/// 		}
/// 		_, err = ess.NewAttachment(ctx, "default", &ess.AttachmentArgs{
/// 			ScalingGroupId: defaultScalingGroup.ID(),
/// 			InstanceIds: pulumi.StringArray{
/// 				defaultInstance[0].ID(),
/// 				defaultInstance[1].ID(),
/// 			},
/// 			Force: pulumi.Bool(true),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroupRule;
/// import com.pulumi.alicloud.ecs.SecurityGroupRuleArgs;
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.ess.ScalingConfiguration;
/// import com.pulumi.alicloud.ess.ScalingConfigurationArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ess.Attachment;
/// import com.pulumi.alicloud.ess.AttachmentArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///             .memorySize(8)
///             .instanceTypeFamily("ecs.g9i")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
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
///             .minSize(0)
///             .maxSize(2)
///             .scalingGroupName(myName)
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(defaultGetSwitches.ids()[0])
///             .build());
///
///         var defaultScalingConfiguration = new ScalingConfiguration("defaultScalingConfiguration", ScalingConfigurationArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroupId(defaultSecurityGroup.id())
///             .systemDiskCategory("cloud_essd")
///             .forceDelete(true)
///             .active(true)
///             .enable(true)
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Instance("defaultInstance-" + i, InstanceArgs.builder()
///                 .imageId(defaultGetImages.images()[0].id())
///                 .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///                 .securityGroups(defaultSecurityGroup.id())
///                 .internetChargeType("PayByTraffic")
///                 .internetMaxBandwidthOut(10)
///                 .instanceChargeType("PostPaid")
///                 .systemDiskCategory("cloud_essd")
///                 .vswitchId(defaultGetSwitches.ids()[0])
///                 .instanceName(name)
///                 .build());
///
///
/// }
///         var defaultAttachment = new Attachment("defaultAttachment", AttachmentArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .instanceIds(
///                 defaultInstance[0].id(),
///                 defaultInstance[1].id())
///             .force(true)
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
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultGetNetworks.ids[0]}
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
///       minSize: 0
///       maxSize: 2
///       scalingGroupName: ${myName}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultGetSwitches.ids[0]}
///   defaultScalingConfiguration:
///     type: alicloud:ess:ScalingConfiguration
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroupId: ${defaultSecurityGroup.id}
///       systemDiskCategory: cloud_essd
///       forceDelete: true
///       active: true
///       enable: true
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       internetChargeType: PayByTraffic
///       internetMaxBandwidthOut: '10'
///       instanceChargeType: PostPaid
///       systemDiskCategory: cloud_essd
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       instanceName: ${name}
///     options: {}
///   defaultAttachment:
///     type: alicloud:ess:Attachment
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       instanceIds:
///         - ${defaultInstance[0].id}
///         - ${defaultInstance[1].id}
///       force: true
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
///         memorySize: 8
///         instanceTypeFamily: ecs.g9i
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///         mostRecent: true
///         owners: system
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///         cidrBlock: 10.4.0.0/16
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         cidrBlock: 10.4.0.0/24
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.zones[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESS attachment can be imported using the id or scaling group id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/attachment:Attachment example asg-abc123456
/// ```
class Attachment extends pulumi.CustomResource {
  /// Specifies whether the scaling group manages the lifecycles of the instances that are manually added to the scaling group.
  late final pulumi.Output<bool?> entrusted;
  /// Whether to remove forcibly "AutoCreated" ECS instances in order to release scaling group capacity "MaxSize" for attaching ECS instances. Default to false.
  late final pulumi.Output<bool?> force;
  /// ID of the ECS instance to be attached to the scaling group. You can input up to 20 IDs.
  late final pulumi.Output<List<String>> instanceIds;
  /// Specifies whether to trigger a lifecycle hook for the scaling group to which instances are being added.
  late final pulumi.Output<bool?> lifecycleHook;
  /// The weight of ECS instance N or elastic container instance N as a backend server of the associated Server Load Balancer (SLB) instance. Valid values of N: 1 to 20. Valid values of this parameter: 1 to 100.
  ///
  /// &gt; **NOTE:** "AutoCreated" ECS instance will be deleted after it is removed from scaling group, but "Attached" will be not.
  ///
  /// &gt; **NOTE:** Restrictions on attaching ECS instances:
  ///
  /// - The attached ECS instances and the scaling group must have the same region and network type(`Classic` or `VPC`).
  /// - The attached ECS instances and the instance with active scaling configurations must have the same instance type.
  /// - The attached ECS instances must in the running state.
  /// - The attached ECS instances has not been attached to other scaling groups.
  /// - The attached ECS instances supports Subscription and Pay-As-You-Go payment methods.
  late final pulumi.Output<List<int>> loadBalancerWeights;
  /// ID of the scaling group of a scaling configuration.
  late final pulumi.Output<String> scalingGroupId;

  /// Creates a new [Attachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Attachment]. {@macro pulumi_ess_attachment_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Attachment(
    String name, {
    AttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/attachment:Attachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    entrusted = registerOutput<bool?>('entrusted');
    force = registerOutput<bool?>('force');
    instanceIds = registerOutput<List<String>>('instanceIds');
    lifecycleHook = registerOutput<bool?>('lifecycleHook');
    loadBalancerWeights = registerOutput<List<int>>('loadBalancerWeights');
    scalingGroupId = registerOutput<String>('scalingGroupId');
  }

  /// Gets an existing [Attachment] resource's state with the given [name] and [id].
  static Attachment get(
    String name,
    pulumi.Input<String> id, {
    AttachmentState? state,
  }) {
    return Attachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Attachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/attachment:Attachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    entrusted = registerOutput<bool?>('entrusted');
    force = registerOutput<bool?>('force');
    instanceIds = registerOutput<List<String>>('instanceIds');
    lifecycleHook = registerOutput<bool?>('lifecycleHook');
    loadBalancerWeights = registerOutput<List<int>>('loadBalancerWeights');
    scalingGroupId = registerOutput<String>('scalingGroupId');
  }
}
