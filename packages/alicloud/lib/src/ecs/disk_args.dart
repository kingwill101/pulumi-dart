// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_disk_disk_args_doc}
/// The set of arguments for Disk.
/// {@endtemplate}
/// {@macro pulumi_ecs_disk_disk_args_doc}
class DiskArgs {
  final pulumi.Input<String>? advancedFeatures;
  /// The Zone to create the disk in.
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<bool>? burstingEnabled;
  /// Category of the disk. Valid values are `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_entry`. Default is `cloud_efficiency`.
  final pulumi.Input<String>? category;
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
  /// The Id of resource group which the disk belongs.
  /// > **NOTE:** Disk category `cloud` has been outdated and it only can be used none I/O Optimized ECS instances. Recommend `cloud_efficiency` and `cloud_ssd` disk.
  final pulumi.Input<String>? resourceGroupId;
  /// The size of the disk in GiBs. When resize the disk, the new size must be greater than the former value, or you would get an error `InvalidDiskSize.TooSmall`.
  final pulumi.Input<int>? size;
  /// A snapshot to base the disk off of. If the disk size required by snapshot is greater than `size`, the `size` will be ignored, conflict with `encrypted`.
  final pulumi.Input<String>? snapshotId;
  final pulumi.Input<String>? storageSetId;
  final pulumi.Input<int>? storageSetPartitionNumber;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DiskArgs].
  /// [advancedFeatures] Optional.
  /// [availabilityZone] The Zone to create the disk in.
  /// [burstingEnabled] Optional.
  /// [category] Category of the disk. Valid values are `cloud`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_entry`. Default is `cloud_efficiency`.
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
  /// [resourceGroupId] The Id of resource group which the disk belongs.
  /// [size] The size of the disk in GiBs. When resize the disk, the new size must be greater than the former value, or you would get an error `InvalidDiskSize.TooSmall`.
  /// [snapshotId] A snapshot to base the disk off of. If the disk size required by snapshot is greater than `size`, the `size` will be ignored, conflict with `encrypted`.
  /// [storageSetId] Optional.
  /// [storageSetPartitionNumber] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] Optional.
  /// [zoneId] Optional.
  DiskArgs({
    String? advancedFeatures,
    String? availabilityZone,
    bool? burstingEnabled,
    String? category,
    bool? deleteAutoSnapshot,
    bool? deleteWithInstance,
    String? description,
    String? diskName,
    bool? dryRun,
    bool? enableAutoSnapshot,
    String? encryptAlgorithm,
    bool? encrypted,
    String? instanceId,
    String? kmsKeyId,
    String? multiAttach,
    String? name,
    String? paymentType,
    String? performanceLevel,
    int? provisionedIops,
    String? resourceGroupId,
    int? size,
    String? snapshotId,
    String? storageSetId,
    int? storageSetPartitionNumber,
    Map<String, String>? tags,
    String? type,
    String? zoneId,
  }) :
      advancedFeatures = pulumi.Input.asOptionalInput<String>(advancedFeatures),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      burstingEnabled = pulumi.Input.asOptionalInput<bool>(burstingEnabled),
      category = pulumi.Input.asOptionalInput<String>(category),
      deleteAutoSnapshot = pulumi.Input.asOptionalInput<bool>(deleteAutoSnapshot),
      deleteWithInstance = pulumi.Input.asOptionalInput<bool>(deleteWithInstance),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskName = pulumi.Input.asOptionalInput<String>(diskName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enableAutoSnapshot = pulumi.Input.asOptionalInput<bool>(enableAutoSnapshot),
      encryptAlgorithm = pulumi.Input.asOptionalInput<String>(encryptAlgorithm),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      multiAttach = pulumi.Input.asOptionalInput<String>(multiAttach),
      name = pulumi.Input.asOptionalInput<String>(name),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      performanceLevel = pulumi.Input.asOptionalInput<String>(performanceLevel),
      provisionedIops = pulumi.Input.asOptionalInput<int>(provisionedIops),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      size = pulumi.Input.asOptionalInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      storageSetId = pulumi.Input.asOptionalInput<String>(storageSetId),
      storageSetPartitionNumber = pulumi.Input.asOptionalInput<int>(storageSetPartitionNumber),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedFeatures': ?advancedFeatures,
      'availabilityZone': ?availabilityZone,
      'burstingEnabled': ?burstingEnabled,
      'category': ?category,
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
      'resourceGroupId': ?resourceGroupId,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'storageSetId': ?storageSetId,
      'storageSetPartitionNumber': ?storageSetPartitionNumber,
      'tags': ?tags,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory DiskArgs.fromMap(Map<String, dynamic> map) {
    return DiskArgs(
      advancedFeatures: map['advancedFeatures'] == null ? null : map['advancedFeatures'] as String,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      burstingEnabled: map['burstingEnabled'] == null ? null : map['burstingEnabled'] as bool,
      category: map['category'] == null ? null : map['category'] as String,
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : map['deleteAutoSnapshot'] as bool,
      deleteWithInstance: map['deleteWithInstance'] == null ? null : map['deleteWithInstance'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      enableAutoSnapshot: map['enableAutoSnapshot'] == null ? null : map['enableAutoSnapshot'] as bool,
      encryptAlgorithm: map['encryptAlgorithm'] == null ? null : map['encryptAlgorithm'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      multiAttach: map['multiAttach'] == null ? null : map['multiAttach'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      provisionedIops: map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      size: map['size'] == null ? null : map['size'] as int,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      storageSetId: map['storageSetId'] == null ? null : map['storageSetId'] as String,
      storageSetPartitionNumber: map['storageSetPartitionNumber'] == null ? null : map['storageSetPartitionNumber'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

