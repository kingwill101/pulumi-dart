import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_disk_args.dart';
import 'ecs_disk_state.dart';

/// ## Import
///
/// ECS Disk can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsDisk:EcsDisk example <id>
/// ```
class EcsDisk extends pulumi.CustomResource {
  late final pulumi.Output<String?> advancedFeatures;
  /// Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  late final pulumi.Output<String> availabilityZone;
  /// Specifies whether to enable the performance burst feature. Valid values: `true`, `false`. **NOTE:** `bursting_enabled` is only valid when `category` is `cloud_auto`.
  late final pulumi.Output<bool?> burstingEnabled;
  /// The category of the data disk. Default value: `cloud_efficiency`. Valid Values: `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_auto`, `cloud_essd_entry`, `elastic_ephemeral_disk_standard`, `elastic_ephemeral_disk_premium`.
  late final pulumi.Output<String?> category;
  /// (Available since v1.237.0) The time when the disk was created.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to delete the automatic snapshots of the disk when the disk is released. Default value: `false`.
  late final pulumi.Output<bool?> deleteAutoSnapshot;
  /// Specifies whether to release the disk along with its associated instance. Default value: `false`.
  late final pulumi.Output<bool> deleteWithInstance;
  /// The description of the disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> description;
  /// The name of the data disk. The name must be 2 to 128 characters in length and can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String> diskName;
  /// Specifies whether to check the validity of the request without actually making the request.request Default value: `false`. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// Specifies whether to enable the automatic snapshot policy feature for the cloud disk. Valid values: `true`, `false`.
  late final pulumi.Output<bool> enableAutoSnapshot;
  late final pulumi.Output<String?> encryptAlgorithm;
  /// Specifies whether to encrypt the disk. Default value: `false`. Valid values:
  late final pulumi.Output<bool> encrypted;
  /// The ID of the instance to which the created subscription disk is automatically attached.
  /// * After you specify the instance ID, the specified `resource_group_id`, `tags`, and `kms_key_id` parameters are ignored.
  /// * One of the `zone_id` and `instance_id` must be set but can not be set at the same time.
  late final pulumi.Output<String> instanceId;
  /// The ID of the Key Management Service (KMS) key that is used for the disk. **NOTE:** `kms_key_id` is only valid when `encrypted` is `true`.
  late final pulumi.Output<String> kmsKeyId;
  /// Specifies whether to enable the multi-attach feature for the disk. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`. **NOTE:** Currently, `multi_attach` can only be set to `Enabled` when `category` is set to `cloud_essd`.
  late final pulumi.Output<String> multiAttach;
  /// Field `name` has been deprecated from provider version 1.122.0. New field `disk_name` instead.
  ///
  /// &gt; **NOTE:** Disk category `cloud` has been outdated, and it only can be used none I/O Optimized ECS instances. Recommend `cloud_efficiency` and `cloud_ssd` disk.
  late final pulumi.Output<String> name;
  /// The payment type of the disk. Default to `PayAsYouGo`. Valid values: `PayAsYouGo`, `Subscription`. If you want to change the disk payment type, the `instance_id` is required.
  late final pulumi.Output<String> paymentType;
  /// Specifies the performance level of an ESSD when you create the ESSD. Valid values:
  /// - `PL0`: A single ESSD delivers up to 10,000 random read/write IOPS.
  /// - `PL1`: A single ESSD delivers up to 50,000 random read/write IOPS.
  /// - `PL2`: A single ESSD delivers up to 100,000 random read/write IOPS.
  /// - `PL3`: A single ESSD delivers up to 1,000,000 random read/write IOPS.
  late final pulumi.Output<String> performanceLevel;
  /// The provisioned read/write IOPS of the ESSD AutoPL disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. **NOTE:** `provisioned_iops` is only valid when `category` is `cloud_auto`.
  late final pulumi.Output<int?> provisionedIops;
  /// (Available since v1.237.0) The ID of the region to which the disk belongs.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group to which to add the disk.
  late final pulumi.Output<String> resourceGroupId;
  /// The size of the disk. Unit: GiB. This parameter is required. Valid values:
  /// - If `category` is set to `cloud`. Valid values: `5` to `2000`.
  /// - If `category` is set to `cloud_efficiency`. Valid values: `20` to `32768`.
  /// - If `category` is set to `cloud_ssd`. Valid values: `20` to `32768`.
  /// - If `category` is set to `cloud_auto`. Valid values: `1` to `65536`.
  /// - If `category` is set to `cloud_essd_entry`. Valid values: `10` to `32768`.
  /// - If `category` is set to `elastic_ephemeral_disk_standard`. Valid values: `64` to `8192`.
  /// - If `category` is set to `elastic_ephemeral_disk_premium`. Valid values: `64` to `8192`.
  /// - If `category` is set to `cloud_essd`, the valid values are related to `performance_level`. Valid values:
  /// - If `performance_level` is set to `PL0`. Valid values: `1` to `65536`.
  /// - If `performance_level` is set to `PL1`. Valid values: `20` to `65536`.
  /// - If `performance_level` is set to `PL2`. Valid values: `461` to `65536`.
  /// - If `performance_level` is set to `PL3`. Valid values: `1261` to `65536`.
  late final pulumi.Output<int> size;
  /// The ID of the snapshot to use to create the disk. **NOTE:** If the size of the snapshot specified by `snapshot_id` is larger than the value of `size`, the size of the created disk is equal to the specified snapshot size. If the size of the snapshot specified by `snapshot_id` is smaller than the value of `size`, the size of the created disk is equal to the value of `size`.
  late final pulumi.Output<String> snapshotId;
  /// The status of the disk.
  late final pulumi.Output<String> status;
  /// The ID of the storage set.
  late final pulumi.Output<String?> storageSetId;
  /// The number of partitions in the storage set.
  late final pulumi.Output<int?> storageSetPartitionNumber;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type to expand cloud disks. Valid Values: `online`, `offline`. Default to `offline`.
  late final pulumi.Output<String?> type;
  /// ID of the free zone to which the disk belongs. One of the `zone_id` and `instance_id` must be set but can not be set at the same time.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EcsDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsDisk]. {@macro pulumi_ecs_ecs_disk_ecs_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsDisk(
    String name, {
    EcsDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsDisk:EcsDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedFeatures = registerOutput<String?>('advancedFeatures');
    availabilityZone = registerOutput<String>('availabilityZone');
    burstingEnabled = registerOutput<bool?>('burstingEnabled');
    category = registerOutput<String?>('category');
    createTime = registerOutput<String>('createTime');
    deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    deleteWithInstance = registerOutput<bool>('deleteWithInstance');
    description = registerOutput<String?>('description');
    diskName = registerOutput<String>('diskName');
    dryRun = registerOutput<bool?>('dryRun');
    enableAutoSnapshot = registerOutput<bool>('enableAutoSnapshot');
    encryptAlgorithm = registerOutput<String?>('encryptAlgorithm');
    encrypted = registerOutput<bool>('encrypted');
    instanceId = registerOutput<String>('instanceId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    multiAttach = registerOutput<String>('multiAttach');
    this.name = registerOutput<String>('name');
    paymentType = registerOutput<String>('paymentType');
    performanceLevel = registerOutput<String>('performanceLevel');
    provisionedIops = registerOutput<int?>('provisionedIops');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String>('snapshotId');
    status = registerOutput<String>('status');
    storageSetId = registerOutput<String?>('storageSetId');
    storageSetPartitionNumber = registerOutput<int?>('storageSetPartitionNumber');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String?>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [EcsDisk] resource's state with the given [name] and [id].
  static EcsDisk get(
    String name,
    pulumi.Input<String> id, {
    EcsDiskState? state,
  }) {
    return EcsDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsDisk:EcsDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedFeatures = registerOutput<String?>('advancedFeatures');
    availabilityZone = registerOutput<String>('availabilityZone');
    burstingEnabled = registerOutput<bool?>('burstingEnabled');
    category = registerOutput<String?>('category');
    createTime = registerOutput<String>('createTime');
    deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    deleteWithInstance = registerOutput<bool>('deleteWithInstance');
    description = registerOutput<String?>('description');
    diskName = registerOutput<String>('diskName');
    dryRun = registerOutput<bool?>('dryRun');
    enableAutoSnapshot = registerOutput<bool>('enableAutoSnapshot');
    encryptAlgorithm = registerOutput<String?>('encryptAlgorithm');
    encrypted = registerOutput<bool>('encrypted');
    instanceId = registerOutput<String>('instanceId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    multiAttach = registerOutput<String>('multiAttach');
    this.name = registerOutput<String>('name');
    paymentType = registerOutput<String>('paymentType');
    performanceLevel = registerOutput<String>('performanceLevel');
    provisionedIops = registerOutput<int?>('provisionedIops');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String>('snapshotId');
    status = registerOutput<String>('status');
    storageSetId = registerOutput<String?>('storageSetId');
    storageSetPartitionNumber = registerOutput<int?>('storageSetPartitionNumber');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String?>('type');
    zoneId = registerOutput<String>('zoneId');
  }
}
