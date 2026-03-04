import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_snapshot_group_args.dart';
import 'ecs_snapshot_group_state.dart';

/// Provides a ECS Snapshot Group resource.
///
/// For information about ECS Snapshot Group and how to use it, see [What is Snapshot Group](https://www.alibabacloud.com/help/en/doc-detail/210939.html).
///
/// &gt; **NOTE:** Available since v1.160.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "Instance",
///     availableDiskCategory: "cloud_essd",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     systemDiskCategory: "cloud_essd",
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     owners: "system",
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: "terraform-example",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceName: "terraform-example",
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch.id,
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     internetMaxBandwidthOut: 10,
/// });
/// const defaultEcsDisk = new alicloud.ecs.EcsDisk("default", {
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     diskName: "terraform-example",
///     description: "terraform-example",
///     category: "cloud_essd",
///     size: 30,
/// });
/// const defaultDiskAttachment = new alicloud.ecs.DiskAttachment("default", {
///     diskId: defaultEcsDisk.id,
///     instanceId: defaultInstance.id,
/// });
/// const defaultEcsSnapshotGroup = new alicloud.ecs.EcsSnapshotGroup("default", {
///     description: "terraform-example",
///     diskIds: [defaultDiskAttachment.diskId],
///     snapshotGroupName: "terraform-example",
///     instanceId: defaultInstance.id,
///     instantAccess: true,
///     instantAccessRetentionDays: 1,
///     tags: {
///         Created: "TF",
///         For: "Acceptance",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="Instance",
///     available_disk_category="cloud_essd")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     system_disk_category="cloud_essd")
/// default_get_images = alicloud.ecs.get_images(owners="system",
///     name_regex="^ubuntu_18.*64",
///     most_recent=True)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name="terraform-example",
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     instance_name="terraform-example",
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch.id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     image_id=default_get_images.images[0].id,
///     internet_max_bandwidth_out=10)
/// default_ecs_disk = alicloud.ecs.EcsDisk("default",
///     zone_id=default.zones[0].id,
///     disk_name="terraform-example",
///     description="terraform-example",
///     category="cloud_essd",
///     size=30)
/// default_disk_attachment = alicloud.ecs.DiskAttachment("default",
///     disk_id=default_ecs_disk.id,
///     instance_id=default_instance.id)
/// default_ecs_snapshot_group = alicloud.ecs.EcsSnapshotGroup("default",
///     description="terraform-example",
///     disk_ids=[default_disk_attachment.disk_id],
///     snapshot_group_name="terraform-example",
///     instance_id=default_instance.id,
///     instant_access=True,
///     instant_access_retention_days=1,
///     tags={
///         "Created": "TF",
///         "For": "Acceptance",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///         AvailableDiskCategory = "cloud_essd",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         SystemDiskCategory = "cloud_essd",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         Owners = "system",
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = "terraform-example",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceName = "terraform-example",
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch.Id,
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InternetMaxBandwidthOut = 10,
///     });
///
///     var defaultEcsDisk = new AliCloud.Ecs.EcsDisk("default", new()
///     {
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         DiskName = "terraform-example",
///         Description = "terraform-example",
///         Category = "cloud_essd",
///         Size = 30,
///     });
///
///     var defaultDiskAttachment = new AliCloud.Ecs.DiskAttachment("default", new()
///     {
///         DiskId = defaultEcsDisk.Id,
///         InstanceId = defaultInstance.Id,
///     });
///
///     var defaultEcsSnapshotGroup = new AliCloud.Ecs.EcsSnapshotGroup("default", new()
///     {
///         Description = "terraform-example",
///         DiskIds = new[]
///         {
///             defaultDiskAttachment.DiskId,
///         },
///         SnapshotGroupName = "terraform-example",
///         InstanceId = defaultInstance.Id,
///         InstantAccess = true,
///         InstantAccessRetentionDays = 1,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Acceptance" },
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:   pulumi.StringRef(_default.Zones[0].Id),
/// 			SystemDiskCategory: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			Owners:     pulumi.StringRef("system"),
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String("terraform-example"),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			InstanceName:     pulumi.String("terraform-example"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId:               defaultSwitch.ID(),
/// 			InstanceType:            pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			ImageId:                 pulumi.String(defaultGetImages.Images[0].Id),
/// 			InternetMaxBandwidthOut: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsDisk, err := ecs.NewEcsDisk(ctx, "default", &ecs.EcsDiskArgs{
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			DiskName:    pulumi.String("terraform-example"),
/// 			Description: pulumi.String("terraform-example"),
/// 			Category:    pulumi.String("cloud_essd"),
/// 			Size:        pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDiskAttachment, err := ecs.NewDiskAttachment(ctx, "default", &ecs.DiskAttachmentArgs{
/// 			DiskId:     defaultEcsDisk.ID(),
/// 			InstanceId: defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsSnapshotGroup(ctx, "default", &ecs.EcsSnapshotGroupArgs{
/// 			Description: pulumi.String("terraform-example"),
/// 			DiskIds: pulumi.StringArray{
/// 				defaultDiskAttachment.DiskId,
/// 			},
/// 			SnapshotGroupName:          pulumi.String("terraform-example"),
/// 			InstanceId:                 defaultInstance.ID(),
/// 			InstantAccess:              pulumi.Bool(true),
/// 			InstantAccessRetentionDays: pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Acceptance"),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.EcsDisk;
/// import com.pulumi.alicloud.ecs.EcsDiskArgs;
/// import com.pulumi.alicloud.ecs.DiskAttachment;
/// import com.pulumi.alicloud.ecs.DiskAttachmentArgs;
/// import com.pulumi.alicloud.ecs.EcsSnapshotGroup;
/// import com.pulumi.alicloud.ecs.EcsSnapshotGroupArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .availableDiskCategory("cloud_essd")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .systemDiskCategory("cloud_essd")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .owners("system")
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name("terraform-example")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceName("terraform-example")
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .imageId(defaultGetImages.images()[0].id())
///             .internetMaxBandwidthOut(10)
///             .build());
///
///         var defaultEcsDisk = new EcsDisk("defaultEcsDisk", EcsDiskArgs.builder()
///             .zoneId(default_.zones()[0].id())
///             .diskName("terraform-example")
///             .description("terraform-example")
///             .category("cloud_essd")
///             .size(30)
///             .build());
///
///         var defaultDiskAttachment = new DiskAttachment("defaultDiskAttachment", DiskAttachmentArgs.builder()
///             .diskId(defaultEcsDisk.id())
///             .instanceId(defaultInstance.id())
///             .build());
///
///         var defaultEcsSnapshotGroup = new EcsSnapshotGroup("defaultEcsSnapshotGroup", EcsSnapshotGroupArgs.builder()
///             .description("terraform-example")
///             .diskIds(defaultDiskAttachment.diskId())
///             .snapshotGroupName("terraform-example")
///             .instanceId(defaultInstance.id())
///             .instantAccess(true)
///             .instantAccessRetentionDays(1)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Acceptance")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: terraform-example
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       instanceName: terraform-example
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       imageId: ${defaultGetImages.images[0].id}
///       internetMaxBandwidthOut: 10
///   defaultEcsDisk:
///     type: alicloud:ecs:EcsDisk
///     name: default
///     properties:
///       zoneId: ${default.zones[0].id}
///       diskName: terraform-example
///       description: terraform-example
///       category: cloud_essd
///       size: '30'
///   defaultDiskAttachment:
///     type: alicloud:ecs:DiskAttachment
///     name: default
///     properties:
///       diskId: ${defaultEcsDisk.id}
///       instanceId: ${defaultInstance.id}
///   defaultEcsSnapshotGroup:
///     type: alicloud:ecs:EcsSnapshotGroup
///     name: default
///     properties:
///       description: terraform-example
///       diskIds:
///         - ${defaultDiskAttachment.diskId}
///       snapshotGroupName: terraform-example
///       instanceId: ${defaultInstance.id}
///       instantAccess: true
///       instantAccessRetentionDays: 1
///       tags:
///         Created: TF
///         For: Acceptance
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///         availableDiskCategory: cloud_essd
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         systemDiskCategory: cloud_essd
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         owners: system
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Snapshot Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsSnapshotGroup:EcsSnapshotGroup example <id>
/// ```
class EcsSnapshotGroup extends pulumi.CustomResource {
  /// The description of the snapshot-consistent group. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> description;

  /// The ID of disk for which to create snapshots. You can specify multiple disk IDs across instances with the same zone.
  late final pulumi.Output<List<String>?> diskIds;

  /// The ID of disk N for which you do not need to create snapshots. After this parameter is specified, the created snapshot-consistent group does not contain snapshots of the disk.
  late final pulumi.Output<List<String>?> excludeDiskIds;

  /// The ID of the instance.
  late final pulumi.Output<String?> instanceId;

  /// Specifies whether to enable the instant access feature.
  late final pulumi.Output<bool?> instantAccess;

  /// Specify the number of days for which the instant access feature is available. Unit: days. Valid values: `1` to `65535`.
  late final pulumi.Output<int?> instantAccessRetentionDays;

  /// The ID of the resource group to which the snapshot consistency group belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// The name of the snapshot-consistent group. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), underscores (_), hyphens (-), and colons (:). It must start with a letter or a digit and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> snapshotGroupName;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the snapshot group.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [EcsSnapshotGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsSnapshotGroup]. {@macro pulumi_ecs_ecs_snapshot_group_ecs_snapshot_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsSnapshotGroup(
    String name, {
    EcsSnapshotGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsSnapshotGroup:EcsSnapshotGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    diskIds = registerOutput<List<String>?>('diskIds');
    excludeDiskIds = registerOutput<List<String>?>('excludeDiskIds');
    instanceId = registerOutput<String?>('instanceId');
    instantAccess = registerOutput<bool?>('instantAccess');
    instantAccessRetentionDays = registerOutput<int?>(
      'instantAccessRetentionDays',
    );
    resourceGroupId = registerOutput<String>('resourceGroupId');
    snapshotGroupName = registerOutput<String?>('snapshotGroupName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [EcsSnapshotGroup] resource's state with the given [name] and [id].
  static EcsSnapshotGroup get(
    String name,
    pulumi.Input<String> id, {
    EcsSnapshotGroupState? state,
  }) {
    return EcsSnapshotGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsSnapshotGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsSnapshotGroup:EcsSnapshotGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    diskIds = registerOutput<List<String>?>('diskIds');
    excludeDiskIds = registerOutput<List<String>?>('excludeDiskIds');
    instanceId = registerOutput<String?>('instanceId');
    instantAccess = registerOutput<bool?>('instantAccess');
    instantAccessRetentionDays = registerOutput<int?>(
      'instantAccessRetentionDays',
    );
    resourceGroupId = registerOutput<String>('resourceGroupId');
    snapshotGroupName = registerOutput<String?>('snapshotGroupName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
