import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_provisioning_group_args.dart';
import 'auto_provisioning_group_state.dart';

/// Provides a ECS auto provisioning group resource which is a solution that uses preemptive instances and pay_as_you_go instances to rapidly deploy clusters.
///
/// &gt; **NOTE:** Available in 1.79.0+
///
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "auto_provisioning_group";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const template = new alicloud.ecs.EcsLaunchTemplate("template", {
///     launchTemplateName: name,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: "ecs.n1.tiny",
///     securityGroupId: defaultSecurityGroup.id,
/// });
/// const defaultAutoProvisioningGroup = new alicloud.ecs.AutoProvisioningGroup("default", {
///     launchTemplateId: template.id,
///     totalTargetCapacity: "4",
///     payAsYouGoTargetCapacity: "1",
///     spotTargetCapacity: "2",
///     launchTemplateConfigs: [{
///         instanceType: "ecs.n1.small",
///         vswitchId: defaultSwitch.id,
///         weightedCapacity: "2",
///         maxPrice: "2",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "auto_provisioning_group"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// template = alicloud.ecs.EcsLaunchTemplate("template",
///     launch_template_name=name,
///     image_id=default_get_images.images[0].id,
///     instance_type="ecs.n1.tiny",
///     security_group_id=default_security_group.id)
/// default_auto_provisioning_group = alicloud.ecs.AutoProvisioningGroup("default",
///     launch_template_id=template.id,
///     total_target_capacity="4",
///     pay_as_you_go_target_capacity="1",
///     spot_target_capacity="2",
///     launch_template_configs=[{
///         "instance_type": "ecs.n1.small",
///         "vswitch_id": default_switch.id,
///         "weighted_capacity": "2",
///         "max_price": "2",
///     }])
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
///     var name = config.Get("name") ?? "auto_provisioning_group";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var template = new AliCloud.Ecs.EcsLaunchTemplate("template", new()
///     {
///         LaunchTemplateName = name,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = "ecs.n1.tiny",
///         SecurityGroupId = defaultSecurityGroup.Id,
///     });
///
///     var defaultAutoProvisioningGroup = new AliCloud.Ecs.AutoProvisioningGroup("default", new()
///     {
///         LaunchTemplateId = template.Id,
///         TotalTargetCapacity = "4",
///         PayAsYouGoTargetCapacity = "1",
///         SpotTargetCapacity = "2",
///         LaunchTemplateConfigs = new[]
///         {
///             new AliCloud.Ecs.Inputs.AutoProvisioningGroupLaunchTemplateConfigArgs
///             {
///                 InstanceType = "ecs.n1.small",
///                 VswitchId = defaultSwitch.Id,
///                 WeightedCapacity = "2",
///                 MaxPrice = "2",
///             },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "auto_provisioning_group"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
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
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		template, err := ecs.NewEcsLaunchTemplate(ctx, "template", &ecs.EcsLaunchTemplateArgs{
/// 			LaunchTemplateName: pulumi.String(name),
/// 			ImageId:            pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:       pulumi.String("ecs.n1.tiny"),
/// 			SecurityGroupId:    defaultSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewAutoProvisioningGroup(ctx, "default", &ecs.AutoProvisioningGroupArgs{
/// 			LaunchTemplateId:         template.ID(),
/// 			TotalTargetCapacity:      pulumi.String("4"),
/// 			PayAsYouGoTargetCapacity: pulumi.String("1"),
/// 			SpotTargetCapacity:       pulumi.String("2"),
/// 			LaunchTemplateConfigs: ecs.AutoProvisioningGroupLaunchTemplateConfigArray{
/// 				&ecs.AutoProvisioningGroupLaunchTemplateConfigArgs{
/// 					InstanceType:     pulumi.String("ecs.n1.small"),
/// 					VswitchId:        defaultSwitch.ID(),
/// 					WeightedCapacity: pulumi.String("2"),
/// 					MaxPrice:         pulumi.String("2"),
/// 				},
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
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.EcsLaunchTemplate;
/// import com.pulumi.alicloud.ecs.EcsLaunchTemplateArgs;
/// import com.pulumi.alicloud.ecs.AutoProvisioningGroup;
/// import com.pulumi.alicloud.ecs.AutoProvisioningGroupArgs;
/// import com.pulumi.alicloud.ecs.inputs.AutoProvisioningGroupLaunchTemplateConfigArgs;
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
///         final var name = config.get("name").orElse("auto_provisioning_group");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var template = new EcsLaunchTemplate("template", EcsLaunchTemplateArgs.builder()
///             .launchTemplateName(name)
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType("ecs.n1.tiny")
///             .securityGroupId(defaultSecurityGroup.id())
///             .build());
///
///         var defaultAutoProvisioningGroup = new AutoProvisioningGroup("defaultAutoProvisioningGroup", AutoProvisioningGroupArgs.builder()
///             .launchTemplateId(template.id())
///             .totalTargetCapacity("4")
///             .payAsYouGoTargetCapacity("1")
///             .spotTargetCapacity("2")
///             .launchTemplateConfigs(AutoProvisioningGroupLaunchTemplateConfigArgs.builder()
///                 .instanceType("ecs.n1.small")
///                 .vswitchId(defaultSwitch.id())
///                 .weightedCapacity("2")
///                 .maxPrice("2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: auto_provisioning_group
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultAutoProvisioningGroup:
///     type: alicloud:ecs:AutoProvisioningGroup
///     name: default
///     properties:
///       launchTemplateId: ${template.id}
///       totalTargetCapacity: '4'
///       payAsYouGoTargetCapacity: '1'
///       spotTargetCapacity: '2'
///       launchTemplateConfigs:
///         - instanceType: ecs.n1.small
///           vswitchId: ${defaultSwitch.id}
///           weightedCapacity: '2'
///           maxPrice: '2'
///   template:
///     type: alicloud:ecs:EcsLaunchTemplate
///     properties:
///       launchTemplateName: ${name}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ecs.n1.tiny
///       securityGroupId: ${defaultSecurityGroup.id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
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
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS auto provisioning group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/autoProvisioningGroup:AutoProvisioningGroup example asg-abc123456
/// ```
class AutoProvisioningGroup extends pulumi.CustomResource {
  /// The name of the auto provisioning group to be created. It must be 2 to 128 characters in length. It must start with a letter but cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-)
  late final pulumi.Output<String> autoProvisioningGroupName;
  /// The type of the auto provisioning group. Valid values:`request` and `maintain`,Default value: `maintain`.
  late final pulumi.Output<String?> autoProvisioningGroupType;
  /// The type of supplemental instances. When the total value of `PayAsYouGoTargetCapacity` and `SpotTargetCapacity` is smaller than the value of TotalTargetCapacity, the auto provisioning group will create instances of the specified type to meet the capacity requirements. Valid values:`PayAsYouGo`: Pay-as-you-go instances; `Spot`: Preemptible instances, Default value: `Spot`.
  late final pulumi.Output<String?> defaultTargetCapacityType;
  /// The description of the auto provisioning group.
  late final pulumi.Output<String?> description;
  /// The shutdown policy for excess preemptible instances followed when the capacity of the auto provisioning group exceeds the target capacity. Valid values: `no-termination` and `termination`,Default value: `no-termination`.
  late final pulumi.Output<String?> excessCapacityTerminationPolicy;
  /// DataDisk mappings to attach to ecs instance. See `block-config` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> launchTemplateConfigs;
  /// The ID of the instance launch template associated with the auto provisioning group.
  late final pulumi.Output<String> launchTemplateId;
  /// The version of the instance launch template associated with the auto provisioning group.
  late final pulumi.Output<String> launchTemplateVersion;
  /// The global maximum price for preemptible instances in the auto provisioning group. If both the `MaxSpotPrice` and `LaunchTemplateConfig.N.MaxPrice` parameters are specified, the maximum price is the lower value of the two.
  late final pulumi.Output<double> maxSpotPrice;
  /// The scale-out policy for pay-as-you-go instances. Valid values: `lowest-price` and `prioritized`,Default value: `lowest-price`.
  late final pulumi.Output<String?> payAsYouGoAllocationStrategy;
  /// The target capacity of pay-as-you-go instances in the auto provisioning group.
  late final pulumi.Output<String?> payAsYouGoTargetCapacity;
  /// The scale-out policy for preemptible instances. Valid values:`lowest-price` and `diversified`,Default value: `lowest-price`.
  late final pulumi.Output<String?> spotAllocationStrategy;
  /// The default behavior after preemptible instances are shut down. Valid values: `stop` and `terminate`,Default value: `stop`.
  late final pulumi.Output<String?> spotInstanceInterruptionBehavior;
  /// This parameter takes effect when the `SpotAllocationStrategy` parameter is set to `lowest-price`. The auto provisioning group selects instance types of the lowest cost to create instances.
  late final pulumi.Output<int> spotInstancePoolsToUseCount;
  /// The target capacity of preemptible instances in the auto provisioning group.
  late final pulumi.Output<String?> spotTargetCapacity;
  /// Specifies whether to release instances of the auto provisioning group. Valid values:`false` and `true`, default value: `false`.
  late final pulumi.Output<bool?> terminateInstances;
  /// The shutdown policy for preemptible instances when the auto provisioning group expires. Valid values: `false` and `true`, default value: `false`.
  late final pulumi.Output<bool?> terminateInstancesWithExpiration;
  /// The total target capacity of the auto provisioning group. The target capacity consists of the following three parts:PayAsYouGoTargetCapacity,SpotTargetCapacity and the supplemental capacity besides PayAsYouGoTargetCapacity and SpotTargetCapacity.
  late final pulumi.Output<String> totalTargetCapacity;
  /// The time when the auto provisioning group is started. The period of time between this point in time and the point in time specified by the `valid_until` parameter is the effective time period of the auto provisioning group.By default, an auto provisioning group is immediately started after creation.
  late final pulumi.Output<String> validFrom;
  /// The time when the auto provisioning group expires. The period of time between this point in time and the point in time specified by the `valid_from` parameter is the effective time period of the auto provisioning group.By default, an auto provisioning group never expires.
  late final pulumi.Output<String> validUntil;

  /// Creates a new [AutoProvisioningGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoProvisioningGroup]. {@macro pulumi_ecs_auto_provisioning_group_auto_provisioning_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoProvisioningGroup(
    String name, {
    AutoProvisioningGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/autoProvisioningGroup:AutoProvisioningGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoProvisioningGroupName = registerOutput<String>('autoProvisioningGroupName');
    autoProvisioningGroupType = registerOutput<String?>('autoProvisioningGroupType');
    defaultTargetCapacityType = registerOutput<String?>('defaultTargetCapacityType');
    description = registerOutput<String?>('description');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    launchTemplateConfigs = registerOutput<List<Map<String, dynamic>>>('launchTemplateConfigs');
    launchTemplateId = registerOutput<String>('launchTemplateId');
    launchTemplateVersion = registerOutput<String>('launchTemplateVersion');
    maxSpotPrice = registerOutput<double>('maxSpotPrice');
    payAsYouGoAllocationStrategy = registerOutput<String?>('payAsYouGoAllocationStrategy');
    payAsYouGoTargetCapacity = registerOutput<String?>('payAsYouGoTargetCapacity');
    spotAllocationStrategy = registerOutput<String?>('spotAllocationStrategy');
    spotInstanceInterruptionBehavior = registerOutput<String?>('spotInstanceInterruptionBehavior');
    spotInstancePoolsToUseCount = registerOutput<int>('spotInstancePoolsToUseCount');
    spotTargetCapacity = registerOutput<String?>('spotTargetCapacity');
    terminateInstances = registerOutput<bool?>('terminateInstances');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    totalTargetCapacity = registerOutput<String>('totalTargetCapacity');
    validFrom = registerOutput<String>('validFrom');
    validUntil = registerOutput<String>('validUntil');
  }

  /// Gets an existing [AutoProvisioningGroup] resource's state with the given [name] and [id].
  static AutoProvisioningGroup get(
    String name,
    pulumi.Input<String> id, {
    AutoProvisioningGroupState? state,
  }) {
    return AutoProvisioningGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutoProvisioningGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/autoProvisioningGroup:AutoProvisioningGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoProvisioningGroupName = registerOutput<String>('autoProvisioningGroupName');
    autoProvisioningGroupType = registerOutput<String?>('autoProvisioningGroupType');
    defaultTargetCapacityType = registerOutput<String?>('defaultTargetCapacityType');
    description = registerOutput<String?>('description');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    launchTemplateConfigs = registerOutput<List<Map<String, dynamic>>>('launchTemplateConfigs');
    launchTemplateId = registerOutput<String>('launchTemplateId');
    launchTemplateVersion = registerOutput<String>('launchTemplateVersion');
    maxSpotPrice = registerOutput<double>('maxSpotPrice');
    payAsYouGoAllocationStrategy = registerOutput<String?>('payAsYouGoAllocationStrategy');
    payAsYouGoTargetCapacity = registerOutput<String?>('payAsYouGoTargetCapacity');
    spotAllocationStrategy = registerOutput<String?>('spotAllocationStrategy');
    spotInstanceInterruptionBehavior = registerOutput<String?>('spotInstanceInterruptionBehavior');
    spotInstancePoolsToUseCount = registerOutput<int>('spotInstancePoolsToUseCount');
    spotTargetCapacity = registerOutput<String?>('spotTargetCapacity');
    terminateInstances = registerOutput<bool?>('terminateInstances');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    totalTargetCapacity = registerOutput<String>('totalTargetCapacity');
    validFrom = registerOutput<String>('validFrom');
    validUntil = registerOutput<String>('validUntil');
  }
}
