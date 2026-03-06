// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsDisk resources.
class EcsDiskState {
  final pulumi.Input<String>? advancedFeatures;
  /// Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  final pulumi.Input<String>? availabilityZone;
  /// Specifies whether to enable the performance burst feature. Valid values: `true`, `false`. **NOTE:** `bursting_enabled` is only valid when `category` is `cloud_auto`.
  final pulumi.Input<bool>? burstingEnabled;
  /// The category of the data disk. Default value: `cloud_efficiency`. Valid Values: `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_auto`, `cloud_essd_entry`, `elastic_ephemeral_disk_standard`, `elastic_ephemeral_disk_premium`.
  final pulumi.Input<String>? category;
  /// (Available since v1.237.0) The time when the disk was created.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to delete the automatic snapshots of the disk when the disk is released. Default value: `false`.
  final pulumi.Input<bool>? deleteAutoSnapshot;
  /// Specifies whether to release the disk along with its associated instance. Default value: `false`.
  final pulumi.Input<bool>? deleteWithInstance;
  /// The description of the disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The name of the data disk. The name must be 2 to 128 characters in length and can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? diskName;
  /// Specifies whether to check the validity of the request without actually making the request.request Default value: `false`. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to enable the automatic snapshot policy feature for the cloud disk. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableAutoSnapshot;
  final pulumi.Input<String>? encryptAlgorithm;
  /// Specifies whether to encrypt the disk. Default value: `false`. Valid values:
  final pulumi.Input<bool>? encrypted;
  /// The ID of the instance to which the created subscription disk is automatically attached.
  /// * After you specify the instance ID, the specified `resource_group_id`, `tags`, and `kms_key_id` parameters are ignored.
  /// * One of the `zone_id` and `instance_id` must be set but can not be set at the same time.
  final pulumi.Input<String>? instanceId;
  /// The ID of the Key Management Service (KMS) key that is used for the disk. **NOTE:** `kms_key_id` is only valid when `encrypted` is `true`.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies whether to enable the multi-attach feature for the disk. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`. **NOTE:** Currently, `multi_attach` can only be set to `Enabled` when `category` is set to `cloud_essd`.
  final pulumi.Input<String>? multiAttach;
  /// Field `name` has been deprecated from provider version 1.122.0. New field `disk_name` instead.
  ///
  /// &gt; **NOTE:** Disk category `cloud` has been outdated, and it only can be used none I/O Optimized ECS instances. Recommend `cloud_efficiency` and `cloud_ssd` disk.
  final pulumi.Input<String>? name;
  /// The payment type of the disk. Default to `PayAsYouGo`. Valid values: `PayAsYouGo`, `Subscription`. If you want to change the disk payment type, the `instance_id` is required.
  final pulumi.Input<String>? paymentType;
  /// Specifies the performance level of an ESSD when you create the ESSD. Valid values:
  /// - `PL0`: A single ESSD delivers up to 10,000 random read/write IOPS.
  /// - `PL1`: A single ESSD delivers up to 50,000 random read/write IOPS.
  /// - `PL2`: A single ESSD delivers up to 100,000 random read/write IOPS.
  /// - `PL3`: A single ESSD delivers up to 1,000,000 random read/write IOPS.
  final pulumi.Input<String>? performanceLevel;
  /// The provisioned read/write IOPS of the ESSD AutoPL disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. **NOTE:** `provisioned_iops` is only valid when `category` is `cloud_auto`.
  final pulumi.Input<int>? provisionedIops;
  /// (Available since v1.237.0) The ID of the region to which the disk belongs.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group to which to add the disk.
  final pulumi.Input<String>? resourceGroupId;
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
  final pulumi.Input<int>? size;
  /// The ID of the snapshot to use to create the disk. **NOTE:** If the size of the snapshot specified by `snapshot_id` is larger than the value of `size`, the size of the created disk is equal to the specified snapshot size. If the size of the snapshot specified by `snapshot_id` is smaller than the value of `size`, the size of the created disk is equal to the value of `size`.
  final pulumi.Input<String>? snapshotId;
  /// The status of the disk.
  final pulumi.Input<String>? status;
  /// The ID of the storage set.
  final pulumi.Input<String>? storageSetId;
  /// The number of partitions in the storage set.
  final pulumi.Input<int>? storageSetPartitionNumber;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type to expand cloud disks. Valid Values: `online`, `offline`. Default to `offline`.
  final pulumi.Input<String>? type;
  /// ID of the free zone to which the disk belongs. One of the `zone_id` and `instance_id` must be set but can not be set at the same time.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [EcsDiskState].
  /// [advancedFeatures] Optional.
  /// [availabilityZone] Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  /// [burstingEnabled] Specifies whether to enable the performance burst feature. Valid values: `true`, `false`. **NOTE:** `bursting_enabled` is only valid when `category` is `cloud_auto`.
  /// [category] The category of the data disk. Default value: `cloud_efficiency`. Valid Values: `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_auto`, `cloud_essd_entry`, `elastic_ephemeral_disk_standard`, `elastic_ephemeral_disk_premium`.
  /// [createTime] (Available since v1.237.0) The time when the disk was created.
  /// [deleteAutoSnapshot] Specifies whether to delete the automatic snapshots of the disk when the disk is released. Default value: `false`.
  /// [deleteWithInstance] Specifies whether to release the disk along with its associated instance. Default value: `false`.
  /// [description] The description of the disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [diskName] The name of the data disk. The name must be 2 to 128 characters in length and can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-). The name must start with a letter.
  /// [dryRun] Specifies whether to check the validity of the request without actually making the request.request Default value: `false`. Valid values:
  /// [enableAutoSnapshot] Specifies whether to enable the automatic snapshot policy feature for the cloud disk. Valid values: `true`, `false`.
  /// [encryptAlgorithm] Optional.
  /// [encrypted] Specifies whether to encrypt the disk. Default value: `false`. Valid values:
  /// [instanceId] The ID of the instance to which the created subscription disk is automatically attached.
  /// [kmsKeyId] The ID of the Key Management Service (KMS) key that is used for the disk. **NOTE:** `kms_key_id` is only valid when `encrypted` is `true`.
  /// [multiAttach] Specifies whether to enable the multi-attach feature for the disk. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`. **NOTE:** Currently, `multi_attach` can only be set to `Enabled` when `category` is set to `cloud_essd`.
  /// [name] Field `name` has been deprecated from provider version 1.122.0. New field `disk_name` instead.
  /// [paymentType] The payment type of the disk. Default to `PayAsYouGo`. Valid values: `PayAsYouGo`, `Subscription`. If you want to change the disk payment type, the `instance_id` is required.
  /// [performanceLevel] Specifies the performance level of an ESSD when you create the ESSD. Valid values:
  /// [provisionedIops] The provisioned read/write IOPS of the ESSD AutoPL disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. **NOTE:** `provisioned_iops` is only valid when `category` is `cloud_auto`.
  /// [regionId] (Available since v1.237.0) The ID of the region to which the disk belongs.
  /// [resourceGroupId] The ID of the resource group to which to add the disk.
  /// [size] The size of the disk. Unit: GiB. This parameter is required. Valid values:
  /// [snapshotId] The ID of the snapshot to use to create the disk. **NOTE:** If the size of the snapshot specified by `snapshot_id` is larger than the value of `size`, the size of the created disk is equal to the specified snapshot size. If the size of the snapshot specified by `snapshot_id` is smaller than the value of `size`, the size of the created disk is equal to the value of `size`.
  /// [status] The status of the disk.
  /// [storageSetId] The ID of the storage set.
  /// [storageSetPartitionNumber] The number of partitions in the storage set.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type to expand cloud disks. Valid Values: `online`, `offline`. Default to `offline`.
  /// [zoneId] ID of the free zone to which the disk belongs. One of the `zone_id` and `instance_id` must be set but can not be set at the same time.
  const EcsDiskState({
    this.advancedFeatures,
    this.availabilityZone,
    this.burstingEnabled,
    this.category,
    this.createTime,
    this.deleteAutoSnapshot,
    this.deleteWithInstance,
    this.description,
    this.diskName,
    this.dryRun,
    this.enableAutoSnapshot,
    this.encryptAlgorithm,
    this.encrypted,
    this.instanceId,
    this.kmsKeyId,
    this.multiAttach,
    this.name,
    this.paymentType,
    this.performanceLevel,
    this.provisionedIops,
    this.regionId,
    this.resourceGroupId,
    this.size,
    this.snapshotId,
    this.status,
    this.storageSetId,
    this.storageSetPartitionNumber,
    this.tags,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedFeatures': ?advancedFeatures,
      'availabilityZone': ?availabilityZone,
      'burstingEnabled': ?burstingEnabled,
      'category': ?category,
      'createTime': ?createTime,
      'deleteAutoSnapshot': ?deleteAutoSnapshot,
      'deleteWithInstance': ?deleteWithInstance,
      'description': ?description,
      'diskName': ?diskName,
      'dryRun': ?dryRun,
      'enableAutoSnapshot': ?enableAutoSnapshot,
      'encryptAlgorithm': ?encryptAlgorithm,
      'encrypted': ?encrypted,
      'instanceId': ?instanceId,
      'kmsKeyId': ?kmsKeyId,
      'multiAttach': ?multiAttach,
      'name': ?name,
      'paymentType': ?paymentType,
      'performanceLevel': ?performanceLevel,
      'provisionedIops': ?provisionedIops,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'storageSetId': ?storageSetId,
      'storageSetPartitionNumber': ?storageSetPartitionNumber,
      'tags': ?tags,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory EcsDiskState.fromMap(Map<String, dynamic> map) {
    return EcsDiskState(
      advancedFeatures: (() { final guardedValue = map['advancedFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      burstingEnabled: (() { final guardedValue = map['burstingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAutoSnapshot: (() { final guardedValue = map['deleteAutoSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteWithInstance: (() { final guardedValue = map['deleteWithInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutoSnapshot: (() { final guardedValue = map['enableAutoSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptAlgorithm: (() { final guardedValue = map['encryptAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAttach: (() { final guardedValue = map['multiAttach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSetId: (() { final guardedValue = map['storageSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSetPartitionNumber: (() { final guardedValue = map['storageSetPartitionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

