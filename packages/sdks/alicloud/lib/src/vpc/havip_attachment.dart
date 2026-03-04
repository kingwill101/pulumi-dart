import 'package:pulumi/pulumi.dart' as pulumi;
import 'havip_attachment_args.dart';
import 'havip_attachment_state.dart';

/// Provides a VPC Ha Vip Attachment resource.
///
/// Attaching ECS instance to Havip.
///
/// For information about VPC Ha Vip Attachment and how to use it, see [What is Ha Vip Attachment](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/AssociateHaVip).
///
/// &gt; **NOTE:** Available since v1.18.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const example = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const exampleGetInstanceTypes = Promise.all([_default, example]).then(([_default, example]) => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     imageId: example.images?.[0]?.id,
/// }));
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const exampleHaVipv2 = new alicloud.vpc.HaVipv2("example", {
///     vswitchId: exampleSwitch.id,
///     description: name,
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     securityGroupName: name,
///     description: name,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.ecs.Instance("example", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchId: exampleSwitch.id,
///     imageId: example.then(example => example.images?.[0]?.id),
///     instanceType: exampleGetInstanceTypes.then(exampleGetInstanceTypes => exampleGetInstanceTypes.instanceTypes?.[0]?.id),
///     instanceChargeType: "PostPaid",
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 5,
///     securityGroups: [exampleSecurityGroup.id],
///     instanceName: name,
///     userData: "echo 'net.ipv4.ip_forward=1'>> /etc/sysctl.conf",
///     systemDiskCategory: "cloud_essd",
/// });
/// const exampleHAVipAttachment = new alicloud.vpc.HAVipAttachment("example", {
///     haVipId: exampleHaVipv2.id,
///     instanceId: exampleInstance.id,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// example = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// example_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     image_id=example.images[0].id)
/// example_network = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=example_network.id,
///     zone_id=default.zones[0].id)
/// example_ha_vipv2 = alicloud.vpc.HaVipv2("example",
///     vswitch_id=example_switch.id,
///     description=name)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     security_group_name=name,
///     description=name,
///     vpc_id=example_network.id)
/// example_instance = alicloud.ecs.Instance("example",
///     availability_zone=default.zones[0].id,
///     vswitch_id=example_switch.id,
///     image_id=example.images[0].id,
///     instance_type=example_get_instance_types.instance_types[0].id,
///     instance_charge_type="PostPaid",
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=5,
///     security_groups=[example_security_group.id],
///     instance_name=name,
///     user_data="echo 'net.ipv4.ip_forward=1'>> /etc/sysctl.conf",
///     system_disk_category="cloud_essd")
/// example_ha_vip_attachment = alicloud.vpc.HAVipAttachment("example",
///     ha_vip_id=example_ha_vipv2.id,
///     instance_id=example_instance.id)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var example = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var exampleGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         ImageId = example.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = exampleNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var exampleHaVipv2 = new AliCloud.Vpc.HaVipv2("example", new()
///     {
///         VswitchId = exampleSwitch.Id,
///         Description = name,
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         SecurityGroupName = name,
///         Description = name,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Ecs.Instance("example", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchId = exampleSwitch.Id,
///         ImageId = example.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = exampleGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InstanceChargeType = "PostPaid",
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 5,
///         SecurityGroups = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         InstanceName = name,
///         UserData = "echo 'net.ipv4.ip_forward=1'>> /etc/sysctl.conf",
///         SystemDiskCategory = "cloud_essd",
///     });
///
///     var exampleHAVipAttachment = new AliCloud.Vpc.HAVipAttachment("example", new()
///     {
///         HaVipId = exampleHaVipv2.Id,
///         InstanceId = exampleInstance.Id,
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			ImageId:          pulumi.StringRef(example.Images[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHaVipv2, err := vpc.NewHaVipv2(ctx, "example", &vpc.HaVipv2Args{
/// 			VswitchId:   exampleSwitch.ID(),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String(name),
/// 			Description:       pulumi.String(name),
/// 			VpcId:             exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := ecs.NewInstance(ctx, "example", &ecs.InstanceArgs{
/// 			AvailabilityZone:        pulumi.String(_default.Zones[0].Id),
/// 			VswitchId:               exampleSwitch.ID(),
/// 			ImageId:                 pulumi.String(example.Images[0].Id),
/// 			InstanceType:            pulumi.String(exampleGetInstanceTypes.InstanceTypes[0].Id),
/// 			InstanceChargeType:      pulumi.String("PostPaid"),
/// 			InternetChargeType:      pulumi.String("PayByTraffic"),
/// 			InternetMaxBandwidthOut: pulumi.Int(5),
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 			InstanceName:       pulumi.String(name),
/// 			UserData:           pulumi.String("echo 'net.ipv4.ip_forward=1'>> /etc/sysctl.conf"),
/// 			SystemDiskCategory: pulumi.String("cloud_essd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewHAVipAttachment(ctx, "example", &vpc.HAVipAttachmentArgs{
/// 			HaVipId:    exampleHaVipv2.ID(),
/// 			InstanceId: exampleInstance.ID(),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.HaVipv2;
/// import com.pulumi.alicloud.vpc.HaVipv2Args;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.vpc.HAVipAttachment;
/// import com.pulumi.alicloud.vpc.HAVipAttachmentArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var example = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         final var exampleGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .imageId(example.images()[0].id())
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var exampleHaVipv2 = new HaVipv2("exampleHaVipv2", HaVipv2Args.builder()
///             .vswitchId(exampleSwitch.id())
///             .description(name)
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(name)
///             .description(name)
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .vswitchId(exampleSwitch.id())
///             .imageId(example.images()[0].id())
///             .instanceType(exampleGetInstanceTypes.instanceTypes()[0].id())
///             .instanceChargeType("PostPaid")
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(5)
///             .securityGroups(exampleSecurityGroup.id())
///             .instanceName(name)
///             .userData("echo 'net.ipv4.ip_forward=1'>> /etc/sysctl.conf")
///             .systemDiskCategory("cloud_essd")
///             .build());
///
///         var exampleHAVipAttachment = new HAVipAttachment("exampleHAVipAttachment", HAVipAttachmentArgs.builder()
///             .haVipId(exampleHaVipv2.id())
///             .instanceId(exampleInstance.id())
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
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${default.zones[0].id}
///   exampleHaVipv2:
///     type: alicloud:vpc:HaVipv2
///     name: example
///     properties:
///       vswitchId: ${exampleSwitch.id}
///       description: ${name}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       securityGroupName: ${name}
///       description: ${name}
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:ecs:Instance
///     name: example
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       vswitchId: ${exampleSwitch.id}
///       imageId: ${example.images[0].id}
///       instanceType: ${exampleGetInstanceTypes.instanceTypes[0].id}
///       instanceChargeType: PostPaid
///       internetChargeType: PayByTraffic
///       internetMaxBandwidthOut: 5
///       securityGroups:
///         - ${exampleSecurityGroup.id}
///       instanceName: ${name}
///       userData: echo 'net.ipv4.ip_forward=1'>> /etc/sysctl.conf
///       systemDiskCategory: cloud_essd
///   exampleHAVipAttachment:
///     type: alicloud:vpc:HAVipAttachment
///     name: example
///     properties:
///       haVipId: ${exampleHaVipv2.id}
///       instanceId: ${exampleInstance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
///   exampleGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         imageId: ${example.images[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Ha Vip Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/hAVipAttachment:HAVipAttachment example <ha_vip_id>:<instance_id>
/// ```
class HAVipAttachment extends pulumi.CustomResource {
  /// Specifies whether to force delete the snapshot.
  late final pulumi.Output<bool?> force;

  /// The ID of the HaVip instance.
  late final pulumi.Output<String> haVipId;

  /// . Field 'havip_id' has been deprecated from provider version 1.259.0. New field 'ha_vip_id' instead.
  late final pulumi.Output<String> havipId;

  /// The ID of the ECS instance bound to the HaVip instance.
  late final pulumi.Output<String> instanceId;

  /// The type of the instance to be associated with the HAVIP. Valid values: * `EcsInstance`: an ECS instance * `NetworkInterface`: an ENI. If you want to associate the HAVIP with an ENI, this parameter is required.
  late final pulumi.Output<String> instanceType;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [HAVipAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HAVipAttachment]. {@macro pulumi_vpc_h_avip_attachment_havip_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HAVipAttachment(
    String name, {
    HAVipAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/hAVipAttachment:HAVipAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    force = registerOutput<bool?>('force');
    haVipId = registerOutput<String>('haVipId');
    havipId = registerOutput<String>('havipId');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [HAVipAttachment] resource's state with the given [name] and [id].
  static HAVipAttachment get(
    String name,
    pulumi.Input<String> id, {
    HAVipAttachmentState? state,
  }) {
    return HAVipAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HAVipAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/hAVipAttachment:HAVipAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    force = registerOutput<bool?>('force');
    haVipId = registerOutput<String>('haVipId');
    havipId = registerOutput<String>('havipId');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    status = registerOutput<String>('status');
  }
}
