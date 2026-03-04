import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_configuration_args.dart';
import 'scaling_configuration_state.dart';

/// Provides a ESS scaling configuration resource.
///
/// &gt; **NOTE:** Several instance types have outdated in some regions and availability zones, such as `ecs.t1.*`, `ecs.s2.*`, `ecs.n1.*` and so on. If you want to keep them, you should set `is_outdated` to true. For more about the upgraded instance type, refer to `alicloud.ecs.getInstanceTypes` datasource.
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
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [defaultSwitch.id],
/// });
/// const defaultScalingConfiguration = new alicloud.ess.ScalingConfiguration("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroupId: defaultSecurityGroup.id,
///     forceDelete: true,
///     active: true,
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
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[default_switch.id])
/// default_scaling_configuration = alicloud.ess.ScalingConfiguration("default",
///     scaling_group_id=default_scaling_group.id,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_group_id=default_security_group.id,
///     force_delete=True,
///     active=True)
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
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///             "NewestInstance",
///         },
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
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
///         Active = true,
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
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
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
/// 			Active:          pulumi.Bool(true),
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
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(defaultSwitch.id())
///             .build());
///
///         var defaultScalingConfiguration = new ScalingConfiguration("defaultScalingConfiguration", ScalingConfigurationArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroupId(defaultSecurityGroup.id())
///             .forceDelete(true)
///             .active(true)
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
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
///   defaultScalingConfiguration:
///     type: alicloud:ess:ScalingConfiguration
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroupId: ${defaultSecurityGroup.id}
///       forceDelete: true
///       active: true
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
/// to create a configuration, scaling group and lifecycle hook one-click.
///
/// ## Import
///
/// ESS scaling configuration can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/scalingConfiguration:ScalingConfiguration example asg-abc123456
/// ```
class ScalingConfiguration extends pulumi.CustomResource {
  /// Whether active current scaling configuration in the specified scaling group. Default to `false`.
  late final pulumi.Output<bool> active;

  /// Performance mode of the t5 burstable instance. Valid values: 'Standard', 'Unlimited'.
  late final pulumi.Output<String?> creditSpecification;

  /// You can use CustomPriorities to specify the priority of a custom ECS instance type + vSwitch combination. See `custom_priorities` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> customPriorities;

  /// DataDisk mappings to attach to ecs instance. See `data_disk` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;

  /// The ID of the dedicated host cluster.
  late final pulumi.Output<String?> dedicatedHostClusterId;

  /// Specifies whether to enable the Release Protection feature for ECS instances. This parameter is applicable to only pay-as-you-go instances. You can use this parameter to specify whether an ECS instance can be directly released by using the ECS console or calling the DeleteInstance operation. Valid values: true, false. Default value: false.
  late final pulumi.Output<bool?> deletionProtection;

  /// Whether enable the specified scaling group(make it active) to which the current scaling configuration belongs.
  late final pulumi.Output<bool?> enable;

  /// The last scaling configuration will be deleted forcibly with deleting its scaling group. Default to false.
  late final pulumi.Output<bool?> forceDelete;

  /// Hostname of an ECS instance.
  late final pulumi.Output<String?> hostName;

  /// Specifies whether to enable the access channel for instance metadata. Valid values: enabled, disabled.
  late final pulumi.Output<String?> httpEndpoint;

  /// ID of an image file, indicating the image resource selected when an instance is enabled.
  late final pulumi.Output<String?> imageId;

  /// Name of an image file, indicating the image resource selected when an instance is enabled.
  late final pulumi.Output<String?> imageName;

  /// Specifies whether to use ecs-user to log on to an ECS instance. For more information, see Manage the username used to log on to an ECS instance. Valid values: true, false. Default value: false.
  late final pulumi.Output<bool?> imageOptionsLoginAsNonRoot;

  /// The description of ECS instances. The description must be 2 to 256 characters in length. It can contain letters but cannot start with http:// or https://.
  late final pulumi.Output<String?> instanceDescription;

  /// It has been deprecated from version 1.6.0. New resource `alicloud.ess.Attachment` replaces it.
  late final pulumi.Output<List<String>?> instanceIds;

  /// Name of an ECS instance. Default to "ESS-Instance". It is valid from version 1.7.1.
  late final pulumi.Output<String?> instanceName;

  /// intelligent configuration mode. In this mode, you only need to specify the number of vCPUs, memory size, instance family, and maximum price. The system selects an instance type that is provided at the lowest price based on your configurations to create ECS instances. This mode is available only for scaling groups that reside in virtual private clouds (VPCs). This mode helps reduce the failures of scale-out activities caused by insufficient inventory of instance types.  See `instance_pattern_info` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> instancePatternInfos;

  /// Resource type of an ECS instance.
  late final pulumi.Output<String?> instanceType;

  /// specify the weight of instance type.  See `instance_type_override` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> instanceTypeOverrides;

  /// Resource types of an ECS instance.
  late final pulumi.Output<List<String>?> instanceTypes;

  /// Network billing type, Values: PayByBandwidth or PayByTraffic. Default to `PayByBandwidth`.
  late final pulumi.Output<String?> internetChargeType;

  /// Maximum incoming bandwidth from the public network, measured in Mbps (Mega bit per second).
  late final pulumi.Output<int?> internetMaxBandwidthIn;

  /// Maximum outgoing bandwidth from the public network, measured in Mbps (Mega bit per second). The value range for PayByBandwidth is [0,1024].
  late final pulumi.Output<int?> internetMaxBandwidthOut;

  /// It has been deprecated on instance resource. All the launched alicloud instances will be I/O optimized.
  late final pulumi.Output<String?> ioOptimized;

  /// Whether to use outdated instance type. Default to false.
  late final pulumi.Output<bool?> isOutdated;

  /// The name of key pair that can login ECS instance successfully without password. If it is specified, the password would be invalid.
  late final pulumi.Output<String?> keyName;

  /// An KMS encrypts password used to a db account. If the `password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;

  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;

  /// Specify NetworkInterfaces.N to configure primary and secondary ENIs. In this case, specify at least one primary ENI. If you set NetworkInterfaces.N.InstanceType to Primary, a primary ENI is configured. If you set NetworkInterfaces.N.InstanceType to Secondary or leave the parameter empty, a secondary ENI is configured. See `network_interfaces` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkInterfaces;

  /// Indicates whether to overwrite the existing data. Default to false.
  late final pulumi.Output<bool?> override;

  /// The password of the ECS instance. The password must be 8 to 30 characters in length. It must contains at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `() ~!@#$%^&*-_+=\|{}[]:;'&lt;&gt;,.?/`, The password of Windows-based instances cannot start with a forward slash (/).
  late final pulumi.Output<String?> password;

  /// Specifies whether to use the password that is predefined in the image. If the PasswordInherit parameter is set to true, the `password` and `kms_encrypted_password` will be ignored. You must ensure that the selected image has a password configured.
  late final pulumi.Output<bool?> passwordInherit;

  /// ID of resource group.
  late final pulumi.Output<String?> resourceGroupId;

  /// Instance RAM role name. The name is provided and maintained by RAM. You can use `alicloud.ram.Role` to create a new one.
  late final pulumi.Output<String?> roleName;

  /// Name shown for the scheduled task. which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is ScalingConfigurationId.
  late final pulumi.Output<String> scalingConfigurationName;

  /// ID of the scaling group of a scaling configuration.
  late final pulumi.Output<String> scalingGroupId;

  /// Specifies whether to enable Security Hardening. Valid values: Active, Deactive.
  late final pulumi.Output<String?> securityEnhancementStrategy;

  /// ID of the security group used to create new instance. It is conflict with `security_group_ids`.
  late final pulumi.Output<String?> securityGroupId;

  /// List IDs of the security group used to create new instances. It is conflict with `security_group_id`.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// The protection period of preemptible instances. Unit: hours. Valid values: 1, 0.
  late final pulumi.Output<int?> spotDuration;

  /// Sets the maximum price hourly for instance types. See `spot_price_limit` below for details.
  ///
  /// &gt; **NOTE:** Before enabling the scaling group, it must have a active scaling configuration.
  ///
  /// &gt; **NOTE:** If the number of attached ECS instances by `instance_ids` is smaller than MinSize, the Auto Scaling Service will automatically create ECS Pay-As-You-Go instance to cater to MinSize. For example, MinSize=5 and 2 existing ECS instances has been attached to the scaling group. When the scaling group is enabled, it will create 3 instnaces automatically based on its current active scaling configuration.
  ///
  /// &gt; **NOTE:** Restrictions on attaching ECS instances:
  ///
  /// - The attached ECS instances and the scaling group must have the same region and network type(`Classic` or `VPC`).
  /// - The attached ECS instances and the instance with active scaling configurations must have the same instance type.
  /// - The attached ECS instances must in the running state.
  /// - The attached ECS instances has not been attached to other scaling groups.
  /// - The attached ECS instances supports Subscription and Pay-As-You-Go payment methods.
  ///
  /// &gt; **NOTE:** The last scaling configuration can't be set to inactive and deleted alone.
  late final pulumi.Output<List<Map<String, dynamic>>?> spotPriceLimits;

  /// The spot strategy for a Pay-As-You-Go instance. Valid values: `NoSpot`, `SpotAsPriceGo`, `SpotWithPriceLimit`.
  late final pulumi.Output<String?> spotStrategy;

  /// The another scaling configuration which will be active automatically and replace current configuration when setting `active` to 'false'. It is invalid when `active` is 'true'.
  late final pulumi.Output<String> substitute;

  /// The id of auto snapshot policy for system disk.
  late final pulumi.Output<String?> systemDiskAutoSnapshotPolicyId;

  /// Category of the system disk. The parameter value options are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd` and `cloud`. `cloud` only is used to some no I/O optimized instance. Default to `cloud_efficiency`.
  late final pulumi.Output<String?> systemDiskCategory;

  /// The description of the system disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> systemDiskDescription;

  /// The algorithm that you want to use to encrypt the system disk. Valid values: AES-256, SM4-128.
  late final pulumi.Output<String?> systemDiskEncryptAlgorithm;

  /// Whether to encrypt the system disk.
  late final pulumi.Output<bool?> systemDiskEncrypted;

  /// The ID of the KMS key that you want to use to encrypt the system disk.
  late final pulumi.Output<String?> systemDiskKmsKeyId;

  /// The name of the system disk. It must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-). Default value: null.
  late final pulumi.Output<String?> systemDiskName;

  /// The performance level of the ESSD used as the system disk.
  late final pulumi.Output<String?> systemDiskPerformanceLevel;

  /// IOPS measures the number of read and write operations that an EBS device can process per second.
  late final pulumi.Output<int?> systemDiskProvisionedIops;

  /// Size of system disk, in GiB. Valid values: Basic disk: 20 to 500, ESSD: The valid values depend on the performance level (PL) of the system disk (PL0 ESSD: 1 to 2048, PL1 ESSD: 20 to 2048, PL2 ESSD: 461 to 2048, PL3 ESSD: 1261 to 2048) , ESSD AutoPL disk: 1 to 2048, Other disk categories: 20 to 2048. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.
  late final pulumi.Output<int?> systemDiskSize;

  /// A mapping of tags to assign to the resource. It will be applied for ECS instances finally.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "http://", or "https://" It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;

  /// User-defined data to customize the startup behaviors of the ECS instance and to pass data into the ECS instance.
  late final pulumi.Output<String?> userData;

  /// Creates a new [ScalingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingConfiguration]. {@macro pulumi_ess_scaling_configuration_scaling_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingConfiguration(
    String name, {
    ScalingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/scalingConfiguration:ScalingConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    active = registerOutput<bool>('active');
    creditSpecification = registerOutput<String?>('creditSpecification');
    customPriorities = registerOutput<List<Map<String, dynamic>>?>(
      'customPriorities',
    );
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    dedicatedHostClusterId = registerOutput<String?>('dedicatedHostClusterId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enable = registerOutput<bool?>('enable');
    forceDelete = registerOutput<bool?>('forceDelete');
    hostName = registerOutput<String?>('hostName');
    httpEndpoint = registerOutput<String?>('httpEndpoint');
    imageId = registerOutput<String?>('imageId');
    imageName = registerOutput<String?>('imageName');
    imageOptionsLoginAsNonRoot = registerOutput<bool?>(
      'imageOptionsLoginAsNonRoot',
    );
    instanceDescription = registerOutput<String?>('instanceDescription');
    instanceIds = registerOutput<List<String>?>('instanceIds');
    instanceName = registerOutput<String?>('instanceName');
    instancePatternInfos = registerOutput<List<Map<String, dynamic>>?>(
      'instancePatternInfos',
    );
    instanceType = registerOutput<String?>('instanceType');
    instanceTypeOverrides = registerOutput<List<Map<String, dynamic>>?>(
      'instanceTypeOverrides',
    );
    instanceTypes = registerOutput<List<String>?>('instanceTypes');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthIn = registerOutput<int?>('internetMaxBandwidthIn');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    ioOptimized = registerOutput<String?>('ioOptimized');
    isOutdated = registerOutput<bool?>('isOutdated');
    keyName = registerOutput<String?>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>(
      'networkInterfaces',
    );
    override = registerOutput<bool?>('override');
    password = registerOutput<String?>('password');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    roleName = registerOutput<String?>('roleName');
    scalingConfigurationName = registerOutput<String>(
      'scalingConfigurationName',
    );
    scalingGroupId = registerOutput<String>('scalingGroupId');
    securityEnhancementStrategy = registerOutput<String?>(
      'securityEnhancementStrategy',
    );
    securityGroupId = registerOutput<String?>('securityGroupId');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    spotDuration = registerOutput<int?>('spotDuration');
    spotPriceLimits = registerOutput<List<Map<String, dynamic>>?>(
      'spotPriceLimits',
    );
    spotStrategy = registerOutput<String?>('spotStrategy');
    substitute = registerOutput<String>('substitute');
    systemDiskAutoSnapshotPolicyId = registerOutput<String?>(
      'systemDiskAutoSnapshotPolicyId',
    );
    systemDiskCategory = registerOutput<String?>('systemDiskCategory');
    systemDiskDescription = registerOutput<String?>('systemDiskDescription');
    systemDiskEncryptAlgorithm = registerOutput<String?>(
      'systemDiskEncryptAlgorithm',
    );
    systemDiskEncrypted = registerOutput<bool?>('systemDiskEncrypted');
    systemDiskKmsKeyId = registerOutput<String?>('systemDiskKmsKeyId');
    systemDiskName = registerOutput<String?>('systemDiskName');
    systemDiskPerformanceLevel = registerOutput<String?>(
      'systemDiskPerformanceLevel',
    );
    systemDiskProvisionedIops = registerOutput<int?>(
      'systemDiskProvisionedIops',
    );
    systemDiskSize = registerOutput<int?>('systemDiskSize');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String?>('userData');
  }

  /// Gets an existing [ScalingConfiguration] resource's state with the given [name] and [id].
  static ScalingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ScalingConfigurationState? state,
  }) {
    return ScalingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScalingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/scalingConfiguration:ScalingConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    active = registerOutput<bool>('active');
    creditSpecification = registerOutput<String?>('creditSpecification');
    customPriorities = registerOutput<List<Map<String, dynamic>>?>(
      'customPriorities',
    );
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    dedicatedHostClusterId = registerOutput<String?>('dedicatedHostClusterId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enable = registerOutput<bool?>('enable');
    forceDelete = registerOutput<bool?>('forceDelete');
    hostName = registerOutput<String?>('hostName');
    httpEndpoint = registerOutput<String?>('httpEndpoint');
    imageId = registerOutput<String?>('imageId');
    imageName = registerOutput<String?>('imageName');
    imageOptionsLoginAsNonRoot = registerOutput<bool?>(
      'imageOptionsLoginAsNonRoot',
    );
    instanceDescription = registerOutput<String?>('instanceDescription');
    instanceIds = registerOutput<List<String>?>('instanceIds');
    instanceName = registerOutput<String?>('instanceName');
    instancePatternInfos = registerOutput<List<Map<String, dynamic>>?>(
      'instancePatternInfos',
    );
    instanceType = registerOutput<String?>('instanceType');
    instanceTypeOverrides = registerOutput<List<Map<String, dynamic>>?>(
      'instanceTypeOverrides',
    );
    instanceTypes = registerOutput<List<String>?>('instanceTypes');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthIn = registerOutput<int?>('internetMaxBandwidthIn');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    ioOptimized = registerOutput<String?>('ioOptimized');
    isOutdated = registerOutput<bool?>('isOutdated');
    keyName = registerOutput<String?>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>(
      'networkInterfaces',
    );
    override = registerOutput<bool?>('override');
    password = registerOutput<String?>('password');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    roleName = registerOutput<String?>('roleName');
    scalingConfigurationName = registerOutput<String>(
      'scalingConfigurationName',
    );
    scalingGroupId = registerOutput<String>('scalingGroupId');
    securityEnhancementStrategy = registerOutput<String?>(
      'securityEnhancementStrategy',
    );
    securityGroupId = registerOutput<String?>('securityGroupId');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    spotDuration = registerOutput<int?>('spotDuration');
    spotPriceLimits = registerOutput<List<Map<String, dynamic>>?>(
      'spotPriceLimits',
    );
    spotStrategy = registerOutput<String?>('spotStrategy');
    substitute = registerOutput<String>('substitute');
    systemDiskAutoSnapshotPolicyId = registerOutput<String?>(
      'systemDiskAutoSnapshotPolicyId',
    );
    systemDiskCategory = registerOutput<String?>('systemDiskCategory');
    systemDiskDescription = registerOutput<String?>('systemDiskDescription');
    systemDiskEncryptAlgorithm = registerOutput<String?>(
      'systemDiskEncryptAlgorithm',
    );
    systemDiskEncrypted = registerOutput<bool?>('systemDiskEncrypted');
    systemDiskKmsKeyId = registerOutput<String?>('systemDiskKmsKeyId');
    systemDiskName = registerOutput<String?>('systemDiskName');
    systemDiskPerformanceLevel = registerOutput<String?>(
      'systemDiskPerformanceLevel',
    );
    systemDiskProvisionedIops = registerOutput<int?>(
      'systemDiskProvisionedIops',
    );
    systemDiskSize = registerOutput<int?>('systemDiskSize');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String?>('userData');
  }
}
