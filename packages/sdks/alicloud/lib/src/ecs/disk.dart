import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_args.dart';
import 'disk_state.dart';

/// Provides a ECS disk resource.
///
/// > **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsDisk from version 1.122.0.
///
/// > **NOTE:** One of `size` or `snapshot_id` is required when specifying an ECS disk. If all of them be specified, `size` must more than the size of snapshot which `snapshot_id` represents. Currently, `alicloud.ecs.Disk` doesn't resize disk.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Create a new ECS disk.
/// const ecsDisk = new alicloud.ecs.Disk("ecs_disk", {
///     availabilityZone: "cn-beijing-b",
///     name: "New-disk",
///     description: "Hello ecs disk.",
///     category: "cloud_efficiency",
///     size: 30,
///     encrypted: true,
///     kmsKeyId: "2a6767f0-a16c-4679-a60f-13bf*****",
///     tags: {
///         Name: "TerraformTest",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create a new ECS disk.
/// ecs_disk = alicloud.ecs.Disk("ecs_disk",
///     availability_zone="cn-beijing-b",
///     name="New-disk",
///     description="Hello ecs disk.",
///     category="cloud_efficiency",
///     size=30,
///     encrypted=True,
///     kms_key_id="2a6767f0-a16c-4679-a60f-13bf*****",
///     tags={
///         "Name": "TerraformTest",
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
///     // Create a new ECS disk.
///     var ecsDisk = new AliCloud.Ecs.Disk("ecs_disk", new()
///     {
///         AvailabilityZone = "cn-beijing-b",
///         Name = "New-disk",
///         Description = "Hello ecs disk.",
///         Category = "cloud_efficiency",
///         Size = 30,
///         Encrypted = true,
///         KmsKeyId = "2a6767f0-a16c-4679-a60f-13bf*****",
///         Tags =
///         {
///             { "Name", "TerraformTest" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new ECS disk.
/// 		_, err := ecs.NewDisk(ctx, "ecs_disk", &ecs.DiskArgs{
/// 			AvailabilityZone: pulumi.String("cn-beijing-b"),
/// 			Name:             pulumi.String("New-disk"),
/// 			Description:      pulumi.String("Hello ecs disk."),
/// 			Category:         pulumi.String("cloud_efficiency"),
/// 			Size:             pulumi.Int(30),
/// 			Encrypted:        pulumi.Bool(true),
/// 			KmsKeyId:         pulumi.String("2a6767f0-a16c-4679-a60f-13bf*****"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("TerraformTest"),
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
/// import com.pulumi.alicloud.ecs.Disk;
/// import com.pulumi.alicloud.ecs.DiskArgs;
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
///         // Create a new ECS disk.
///         var ecsDisk = new Disk("ecsDisk", DiskArgs.builder()
///             .availabilityZone("cn-beijing-b")
///             .name("New-disk")
///             .description("Hello ecs disk.")
///             .category("cloud_efficiency")
///             .size(30)
///             .encrypted(true)
///             .kmsKeyId("2a6767f0-a16c-4679-a60f-13bf*****")
///             .tags(Map.of("Name", "TerraformTest"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new ECS disk.
///   ecsDisk:
///     type: alicloud:ecs:Disk
///     name: ecs_disk
///     properties:
///       availabilityZone: cn-beijing-b
///       name: New-disk
///       description: Hello ecs disk.
///       category: cloud_efficiency
///       size: '30'
///       encrypted: true
///       kmsKeyId: 2a6767f0-a16c-4679-a60f-13bf*****
///       tags:
///         Name: TerraformTest
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud disk can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/disk:Disk example d-abc12345678
/// ```
class Disk extends pulumi.CustomResource {
  late final pulumi.Output<String?> advancedFeatures;
  /// The Zone to create the disk in.
  late final pulumi.Output<String> availabilityZone;
  late final pulumi.Output<bool?> burstingEnabled;
  /// Category of the disk. Valid values are `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_entry`. Default is `cloud_efficiency`.
  late final pulumi.Output<String?> category;
  late final pulumi.Output<String> createTime;
  /// Indicates whether the automatic snapshot is deleted when the disk is released. Default value: false.
  late final pulumi.Output<bool?> deleteAutoSnapshot;
  /// Indicates whether the disk is released together with the instance: Default value: false.
  late final pulumi.Output<bool> deleteWithInstance;
  /// Description of the disk. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> diskName;
  late final pulumi.Output<bool?> dryRun;
  /// Indicates whether to apply a created automatic snapshot policy to the disk. Default value: false.
  late final pulumi.Output<bool> enableAutoSnapshot;
  late final pulumi.Output<String?> encryptAlgorithm;
  /// If true, the disk will be encrypted, conflict with `snapshot_id`.
  late final pulumi.Output<bool> encrypted;
  late final pulumi.Output<String> instanceId;
  /// The ID of the KMS key corresponding to the data disk, The specified parameter `Encrypted` must be `true` when KmsKeyId is not empty.
  late final pulumi.Output<String> kmsKeyId;
  late final pulumi.Output<String> multiAttach;
  /// Name of the ECS disk. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Default value is null.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> paymentType;
  /// Specifies the performance level of an ESSD when you create the ESSD. Default value: `PL1`. Valid values:
  /// * `PL1`: A single ESSD delivers up to 50,000 random read/write IOPS.
  /// * `PL2`: A single ESSD delivers up to 100,000 random read/write IOPS.
  /// * `PL3`: A single ESSD delivers up to 1,000,000 random read/write IOPS.
  late final pulumi.Output<String> performanceLevel;
  late final pulumi.Output<int?> provisionedIops;
  late final pulumi.Output<String> regionId;
  /// The Id of resource group which the disk belongs.
  /// > **NOTE:** Disk category `cloud` has been outdated and it only can be used none I/O Optimized ECS instances. Recommend `cloud_efficiency` and `cloud_ssd` disk.
  late final pulumi.Output<String> resourceGroupId;
  /// The size of the disk in GiBs. When resize the disk, the new size must be greater than the former value, or you would get an error `InvalidDiskSize.TooSmall`.
  late final pulumi.Output<int> size;
  /// A snapshot to base the disk off of. If the disk size required by snapshot is greater than `size`, the `size` will be ignored, conflict with `encrypted`.
  late final pulumi.Output<String> snapshotId;
  /// The disk status.
  late final pulumi.Output<String> status;
  late final pulumi.Output<String?> storageSetId;
  late final pulumi.Output<int?> storageSetPartitionNumber;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String?> type;
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Disk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Disk]. {@macro pulumi_ecs_disk_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Disk(
    String name, {
    DiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/disk:Disk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedFeatures = registerOutput<String?>('advancedFeatures');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.burstingEnabled = registerOutput<bool?>('burstingEnabled');
    this.category = registerOutput<String?>('category');
    this.createTime = registerOutput<String>('createTime');
    this.deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    this.deleteWithInstance = registerOutput<bool>('deleteWithInstance');
    this.description = registerOutput<String?>('description');
    this.diskName = registerOutput<String>('diskName');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.enableAutoSnapshot = registerOutput<bool>('enableAutoSnapshot');
    this.encryptAlgorithm = registerOutput<String?>('encryptAlgorithm');
    this.encrypted = registerOutput<bool>('encrypted');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.multiAttach = registerOutput<String>('multiAttach');
    this.name = registerOutput<String>('name');
    this.paymentType = registerOutput<String>('paymentType');
    this.performanceLevel = registerOutput<String>('performanceLevel');
    this.provisionedIops = registerOutput<int?>('provisionedIops');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.size = registerOutput<int>('size');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.status = registerOutput<String>('status');
    this.storageSetId = registerOutput<String?>('storageSetId');
    this.storageSetPartitionNumber = registerOutput<int?>('storageSetPartitionNumber');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String?>('type');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Disk] resource's state with the given [name] and [id].
  static Disk get(
    String name,
    pulumi.Input<String> id, {
    DiskState? state,
  }) {
    return Disk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Disk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/disk:Disk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedFeatures = registerOutput<String?>('advancedFeatures');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.burstingEnabled = registerOutput<bool?>('burstingEnabled');
    this.category = registerOutput<String?>('category');
    this.createTime = registerOutput<String>('createTime');
    this.deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    this.deleteWithInstance = registerOutput<bool>('deleteWithInstance');
    this.description = registerOutput<String?>('description');
    this.diskName = registerOutput<String>('diskName');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.enableAutoSnapshot = registerOutput<bool>('enableAutoSnapshot');
    this.encryptAlgorithm = registerOutput<String?>('encryptAlgorithm');
    this.encrypted = registerOutput<bool>('encrypted');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.multiAttach = registerOutput<String>('multiAttach');
    this.name = registerOutput<String>('name');
    this.paymentType = registerOutput<String>('paymentType');
    this.performanceLevel = registerOutput<String>('performanceLevel');
    this.provisionedIops = registerOutput<int?>('provisionedIops');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.size = registerOutput<int>('size');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.status = registerOutput<String>('status');
    this.storageSetId = registerOutput<String?>('storageSetId');
    this.storageSetPartitionNumber = registerOutput<int?>('storageSetPartitionNumber');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String?>('type');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
