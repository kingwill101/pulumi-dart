import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_disk_attachment_args.dart';
import 'ecs_disk_attachment_state.dart';

/// Provides an Alicloud ECS Disk Attachment as a resource, to attach and detach disks from ECS Instances.
///
/// For information about ECS Disk Attachment and how to use it, see [What is Disk Attachment](https://www.alibabacloud.com/help/en/doc-detail/25515.htm).
///
/// &gt; **NOTE:** Available since v1.122.0.
///
/// ## Example Usage
///
/// Basic usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     instanceTypeFamily: "ecs.sn1ne",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "10.4.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: "tf-example",
///     description: "New security group",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceName: name,
///     hostName: name,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch.id,
/// });
/// const disk = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultEcsDisk = new alicloud.ecs.EcsDisk("default", {
///     zoneId: disk.then(disk => disk.zones?.[0]?.id),
///     category: "cloud_efficiency",
///     deleteAutoSnapshot: true,
///     description: "Test For Terraform",
///     diskName: name,
///     enableAutoSnapshot: true,
///     encrypted: true,
///     size: 500,
///     tags: {
///         Created: "TF",
///         Environment: "Acceptance-test",
///     },
/// });
/// const defaultEcsDiskAttachment = new alicloud.ecs.EcsDiskAttachment("default", {
///     diskId: defaultEcsDisk.id,
///     instanceId: defaultInstance.id,
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
/// default = alicloud.get_zones(available_resource_creation="Instance")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     instance_type_family="ecs.sn1ne")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="10.4.0.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name="tf-example",
///     description="New security group",
///     vpc_id=default_network.id)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     instance_name=name,
///     host_name=name,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch.id)
/// disk = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_ecs_disk = alicloud.ecs.EcsDisk("default",
///     zone_id=disk.zones[0].id,
///     category="cloud_efficiency",
///     delete_auto_snapshot=True,
///     description="Test For Terraform",
///     disk_name=name,
///     enable_auto_snapshot=True,
///     encrypted=True,
///     size=500,
///     tags={
///         "Created": "TF",
///         "Environment": "Acceptance-test",
///     })
/// default_ecs_disk_attachment = alicloud.ecs.EcsDiskAttachment("default",
///     disk_id=default_ecs_disk.id,
///     instance_id=default_instance.id)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceTypeFamily = "ecs.sn1ne",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "10.4.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = "tf-example",
///         Description = "New security group",
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
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceName = name,
///         HostName = name,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var disk = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultEcsDisk = new AliCloud.Ecs.EcsDisk("default", new()
///     {
///         ZoneId = disk.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Category = "cloud_efficiency",
///         DeleteAutoSnapshot = true,
///         Description = "Test For Terraform",
///         DiskName = name,
///         EnableAutoSnapshot = true,
///         Encrypted = true,
///         Size = 500,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "Environment", "Acceptance-test" },
///         },
///     });
///
///     var defaultEcsDiskAttachment = new AliCloud.Ecs.EcsDiskAttachment("default", new()
///     {
///         DiskId = defaultEcsDisk.Id,
///         InstanceId = defaultInstance.Id,
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:   pulumi.StringRef(_default.Zones[0].Id),
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.sn1ne"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:     defaultNetwork.ID(),
/// 			CidrBlock: pulumi.String("10.4.0.0/24"),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:        pulumi.String("tf-example"),
/// 			Description: pulumi.String("New security group"),
/// 			VpcId:       defaultNetwork.ID(),
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
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			HostName:         pulumi.String(name),
/// 			ImageId:          pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId: defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		disk, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsDisk, err := ecs.NewEcsDisk(ctx, "default", &ecs.EcsDiskArgs{
/// 			ZoneId:             pulumi.String(disk.Zones[0].Id),
/// 			Category:           pulumi.String("cloud_efficiency"),
/// 			DeleteAutoSnapshot: pulumi.Bool(true),
/// 			Description:        pulumi.String("Test For Terraform"),
/// 			DiskName:           pulumi.String(name),
/// 			EnableAutoSnapshot: pulumi.Bool(true),
/// 			Encrypted:          pulumi.Bool(true),
/// 			Size:               pulumi.Int(500),
/// 			Tags: pulumi.StringMap{
/// 				"Created":     pulumi.String("TF"),
/// 				"Environment": pulumi.String("Acceptance-test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsDiskAttachment(ctx, "default", &ecs.EcsDiskAttachmentArgs{
/// 			DiskId:     defaultEcsDisk.ID(),
/// 			InstanceId: defaultInstance.ID(),
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
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.EcsDisk;
/// import com.pulumi.alicloud.ecs.EcsDiskArgs;
/// import com.pulumi.alicloud.ecs.EcsDiskAttachment;
/// import com.pulumi.alicloud.ecs.EcsDiskAttachmentArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceTypeFamily("ecs.sn1ne")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("10.4.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name("tf-example")
///             .description("New security group")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceName(name)
///             .hostName(name)
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         final var disk = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultEcsDisk = new EcsDisk("defaultEcsDisk", EcsDiskArgs.builder()
///             .zoneId(disk.zones()[0].id())
///             .category("cloud_efficiency")
///             .deleteAutoSnapshot(true)
///             .description("Test For Terraform")
///             .diskName(name)
///             .enableAutoSnapshot(true)
///             .encrypted(true)
///             .size(500)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("Environment", "Acceptance-test")
///             ))
///             .build());
///
///         var defaultEcsDiskAttachment = new EcsDiskAttachment("defaultEcsDiskAttachment", EcsDiskAttachmentArgs.builder()
///             .diskId(defaultEcsDisk.id())
///             .instanceId(defaultInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   # Create a new ECS disk-attachment and use it attach one disk to a new instance.
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 10.4.0.0/24
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: tf-example
///       description: New security group
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       instanceName: ${name}
///       hostName: ${name}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///   defaultEcsDisk:
///     type: alicloud:ecs:EcsDisk
///     name: default
///     properties:
///       zoneId: ${disk.zones[0].id}
///       category: cloud_efficiency
///       deleteAutoSnapshot: 'true'
///       description: Test For Terraform
///       diskName: ${name}
///       enableAutoSnapshot: 'true'
///       encrypted: 'true'
///       size: '500'
///       tags:
///         Created: TF
///         Environment: Acceptance-test
///   defaultEcsDiskAttachment:
///     type: alicloud:ecs:EcsDiskAttachment
///     name: default
///     properties:
///       diskId: ${defaultEcsDisk.id}
///       instanceId: ${defaultInstance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         instanceTypeFamily: ecs.sn1ne
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   disk:
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
/// The disk attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsDiskAttachment:EcsDiskAttachment example d-abc12345678:i-abc12355
/// ```
class EcsDiskAttachment extends pulumi.CustomResource {
  /// Whether to mount as a system disk. Default to: `false`.
  late final pulumi.Output<bool?> bootable;
  /// Indicates whether the disk is released together with the instance. Default to: `false`.
  late final pulumi.Output<bool?> deleteWithInstance;
  /// The name of the cloud disk device.
  late final pulumi.Output<String> device;
  /// ID of the Disk to be attached.
  late final pulumi.Output<String> diskId;
  /// ID of the Instance to attach to.
  late final pulumi.Output<String> instanceId;
  /// The name of key pair
  late final pulumi.Output<String?> keyPairName;
  /// When mounting the system disk, setting the user name and password of the instance is only effective for the administrator and root user names, and other user names are not effective.
  late final pulumi.Output<String?> password;

  /// Creates a new [EcsDiskAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsDiskAttachment]. {@macro pulumi_ecs_ecs_disk_attachment_ecs_disk_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsDiskAttachment(
    String name, {
    EcsDiskAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsDiskAttachment:EcsDiskAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bootable = registerOutput<bool?>('bootable');
    deleteWithInstance = registerOutput<bool?>('deleteWithInstance');
    device = registerOutput<String>('device');
    diskId = registerOutput<String>('diskId');
    instanceId = registerOutput<String>('instanceId');
    keyPairName = registerOutput<String?>('keyPairName');
    password = registerOutput<String?>('password');
  }

  /// Gets an existing [EcsDiskAttachment] resource's state with the given [name] and [id].
  static EcsDiskAttachment get(
    String name,
    pulumi.Input<String> id, {
    EcsDiskAttachmentState? state,
  }) {
    return EcsDiskAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsDiskAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsDiskAttachment:EcsDiskAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bootable = registerOutput<bool?>('bootable');
    deleteWithInstance = registerOutput<bool?>('deleteWithInstance');
    device = registerOutput<String>('device');
    diskId = registerOutput<String>('diskId');
    instanceId = registerOutput<String>('instanceId');
    keyPairName = registerOutput<String?>('keyPairName');
    password = registerOutput<String?>('password');
  }
}
