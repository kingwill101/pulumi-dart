// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Disk resources.
class DiskState {
  final pulumi.Input<String>? advancedFeatures;
  /// The Zone to create the disk in.
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<bool>? burstingEnabled;
  /// Category of the disk. Valid values are `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_entry`. Default is `cloud_efficiency`.
  final pulumi.Input<String>? category;
  final pulumi.Input<String>? createTime;
  /// Indicates whether the automatic snapshot is deleted when the disk is released. Default value: false.
  final pulumi.Input<bool>? deleteAutoSnapshot;
  /// Indicates whether the disk is released together with the instance: Default value: false.
  final pulumi.Input<bool>? deleteWithInstance;
  /// Description of the disk. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? diskName;
  final pulumi.Input<bool>? dryRun;
  /// Indicates whether to apply a created automatic snapshot policy to the disk. Default value: false.
  final pulumi.Input<bool>? enableAutoSnapshot;
  final pulumi.Input<String>? encryptAlgorithm;
  /// If true, the disk will be encrypted, conflict with `snapshot_id`.
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<String>? instanceId;
  /// The ID of the KMS key corresponding to the data disk, The specified parameter `Encrypted` must be `true` when KmsKeyId is not empty.
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? multiAttach;
  /// Name of the ECS disk. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? paymentType;
  /// Specifies the performance level of an ESSD when you create the ESSD. Default value: `PL1`. Valid values:
  /// * `PL1`: A single ESSD delivers up to 50,000 random read/write IOPS.
  /// * `PL2`: A single ESSD delivers up to 100,000 random read/write IOPS.
  /// * `PL3`: A single ESSD delivers up to 1,000,000 random read/write IOPS.
  final pulumi.Input<String>? performanceLevel;
  final pulumi.Input<int>? provisionedIops;
  final pulumi.Input<String>? regionId;
  /// The Id of resource group which the disk belongs.
  /// &gt; **NOTE:** Disk category `cloud` has been outdated and it only can be used none I/O Optimized ECS instances. Recommend `cloud_efficiency` and `cloud_ssd` disk.
  final pulumi.Input<String>? resourceGroupId;
  /// The size of the disk in GiBs. When resize the disk, the new size must be greater than the former value, or you would get an error `InvalidDiskSize.TooSmall`.
  final pulumi.Input<int>? size;
  /// A snapshot to base the disk off of. If the disk size required by snapshot is greater than `size`, the `size` will be ignored, conflict with `encrypted`.
  final pulumi.Input<String>? snapshotId;
  /// The disk status.
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? storageSetId;
  final pulumi.Input<int>? storageSetPartitionNumber;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DiskState].
  /// [advancedFeatures] Optional.
  /// [availabilityZone] The Zone to create the disk in.
  /// [burstingEnabled] Optional.
  /// [category] Category of the disk. Valid values are `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_entry`. Default is `cloud_efficiency`.
  /// [createTime] Optional.
  /// [deleteAutoSnapshot] Indicates whether the automatic snapshot is deleted when the disk is released. Default value: false.
  /// [deleteWithInstance] Indicates whether the disk is released together with the instance: Default value: false.
  /// [description] Description of the disk. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  /// [diskName] Optional.
  /// [dryRun] Optional.
  /// [enableAutoSnapshot] Indicates whether to apply a created automatic snapshot policy to the disk. Default value: false.
  /// [encryptAlgorithm] Optional.
  /// [encrypted] If true, the disk will be encrypted, conflict with `snapshot_id`.
  /// [instanceId] Optional.
  /// [kmsKeyId] The ID of the KMS key corresponding to the data disk, The specified parameter `Encrypted` must be `true` when KmsKeyId is not empty.
  /// [multiAttach] Optional.
  /// [name] Name of the ECS disk. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Default value is null.
  /// [paymentType] Optional.
  /// [performanceLevel] Specifies the performance level of an ESSD when you create the ESSD. Default value: `PL1`. Valid values:
  /// [provisionedIops] Optional.
  /// [regionId] Optional.
  /// [resourceGroupId] The Id of resource group which the disk belongs.
  /// [size] The size of the disk in GiBs. When resize the disk, the new size must be greater than the former value, or you would get an error `InvalidDiskSize.TooSmall`.
  /// [snapshotId] A snapshot to base the disk off of. If the disk size required by snapshot is greater than `size`, the `size` will be ignored, conflict with `encrypted`.
  /// [status] The disk status.
  /// [storageSetId] Optional.
  /// [storageSetPartitionNumber] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] Optional.
  /// [zoneId] Optional.
  DiskState({
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

  factory DiskState.fromMap(Map<String, dynamic> map) {
    return DiskState(
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

