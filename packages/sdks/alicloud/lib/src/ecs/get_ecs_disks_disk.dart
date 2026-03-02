// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_disks_disk_mount_instance.dart';
import 'get_ecs_disks_disk_operation_lock.dart';

class GetEcsDisksDisk {
  /// A mount of time.
  final pulumi.Input<String> attachedTime;
  /// Query cloud disks based on the automatic snapshot policy ID.
  final pulumi.Input<String> autoSnapshotPolicyId;
  /// Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  final pulumi.Input<String> availabilityZone;
  /// Disk category. Valid values: `cloud`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`, `ephemeral_ssd`, `cloud_auto`, `cloud_essd_entry`.
  final pulumi.Input<String> category;
  /// Disk creation time.
  final pulumi.Input<String> creationTime;
  /// Indicates whether the automatic snapshot is deleted when the disk is released.
  final pulumi.Input<bool> deleteAutoSnapshot;
  /// Indicates whether the disk is released together with the instance.
  final pulumi.Input<bool> deleteWithInstance;
  /// Disk description.
  final pulumi.Input<String> description;
  /// Disk detachment time.
  final pulumi.Input<String> detachedTime;
  /// The mount point of the disk.
  final pulumi.Input<String> device;
  /// ID of the disk.
  final pulumi.Input<String> diskId;
  /// The disk name.
  final pulumi.Input<String> diskName;
  /// The disk type. Valid values: `system`, `data`, `all`.
  final pulumi.Input<String> diskType;
  /// Indicates whether the automatic snapshot is deleted when the disk is released.
  final pulumi.Input<bool> enableAutoSnapshot;
  /// Whether the cloud disk has an automatic snapshot policy
  final pulumi.Input<bool> enableAutomatedSnapshotPolicy;
  /// Indicate whether the disk is encrypted or not. Valid values: `on` and `off`.
  final pulumi.Input<String> encrypted;
  /// The time when the subscription disk expires.
  final pulumi.Input<String> expirationTime;
  /// The time when the subscription disk expires.
  final pulumi.Input<String> expiredTime;
  /// ID of the disk.
  final pulumi.Input<String> id;
  /// ID of the image from which the disk is created. It is null unless the disk is created using an image.
  final pulumi.Input<String> imageId;
  /// Filter the results by the specified ECS instance ID.
  final pulumi.Input<String> instanceId;
  /// The maximum number of read and write operations per second.
  final pulumi.Input<int> iops;
  /// The maximum number of read operations per second.
  final pulumi.Input<int> iopsRead;
  /// The maximum number of write operations per second.
  final pulumi.Input<int> iopsWrite;
  /// The kms key id.
  final pulumi.Input<String> kmsKeyId;
  /// Number of instances mounted on shared storage.
  final pulumi.Input<int> mountInstanceNum;
  /// Disk mount instances.
  final pulumi.Input<List<GetEcsDisksDiskMountInstance>> mountInstances;
  /// Disk name.
  final pulumi.Input<String> name;
  /// The reasons why the disk was locked. See `operation_locks` below for details.
  final pulumi.Input<List<GetEcsDisksDiskOperationLock>> operationLocks;
  /// Payment method for disk. Valid Values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String> paymentType;
  /// Performance levels of ESSD cloud disk.
  final pulumi.Input<String> performanceLevel;
  /// Whether the cloud disk or local disk supports uninstallation.
  final pulumi.Input<bool> portable;
  /// The product logo of the cloud market.
  final pulumi.Input<String> productCode;
  /// Region ID the disk belongs to.
  final pulumi.Input<String> regionId;
  /// The Id of resource group which the disk belongs.
  final pulumi.Input<String> resourceGroupId;
  /// Disk size in GiB.
  final pulumi.Input<int> size;
  /// The source snapshot id.
  final pulumi.Input<String> snapshotId;
  /// The status of disk. Valid Values: `Attaching`, `Available`, `Creating`, `Detaching`, `In_use`, `Migrating`, `ReIniting`, `Transferring`.
  final pulumi.Input<String> status;
  /// A map of tags assigned to the disks.
  final pulumi.Input<Map<String, String>> tags;
  /// Field `type` has been deprecated from provider version 1.122.0. New field `disk_type` instead.
  final pulumi.Input<String> type;
  /// ID of the free zone to which the disk belongs.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetEcsDisksDisk].
  /// [attachedTime] A mount of time.
  /// [autoSnapshotPolicyId] Query cloud disks based on the automatic snapshot policy ID.
  /// [availabilityZone] Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  /// [category] Disk category. Valid values: `cloud`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`, `ephemeral_ssd`, `cloud_auto`, `cloud_essd_entry`.
  /// [creationTime] Disk creation time.
  /// [deleteAutoSnapshot] Indicates whether the automatic snapshot is deleted when the disk is released.
  /// [deleteWithInstance] Indicates whether the disk is released together with the instance.
  /// [description] Disk description.
  /// [detachedTime] Disk detachment time.
  /// [device] The mount point of the disk.
  /// [diskId] ID of the disk.
  /// [diskName] The disk name.
  /// [diskType] The disk type. Valid values: `system`, `data`, `all`.
  /// [enableAutoSnapshot] Indicates whether the automatic snapshot is deleted when the disk is released.
  /// [enableAutomatedSnapshotPolicy] Whether the cloud disk has an automatic snapshot policy
  /// [encrypted] Indicate whether the disk is encrypted or not. Valid values: `on` and `off`.
  /// [expirationTime] The time when the subscription disk expires.
  /// [expiredTime] The time when the subscription disk expires.
  /// [id] ID of the disk.
  /// [imageId] ID of the image from which the disk is created. It is null unless the disk is created using an image.
  /// [instanceId] Filter the results by the specified ECS instance ID.
  /// [iops] The maximum number of read and write operations per second.
  /// [iopsRead] The maximum number of read operations per second.
  /// [iopsWrite] The maximum number of write operations per second.
  /// [kmsKeyId] The kms key id.
  /// [mountInstanceNum] Number of instances mounted on shared storage.
  /// [mountInstances] Disk mount instances.
  /// [name] Disk name.
  /// [operationLocks] The reasons why the disk was locked. See `operation_locks` below for details.
  /// [paymentType] Payment method for disk. Valid Values: `PayAsYouGo`, `Subscription`.
  /// [performanceLevel] Performance levels of ESSD cloud disk.
  /// [portable] Whether the cloud disk or local disk supports uninstallation.
  /// [productCode] The product logo of the cloud market.
  /// [regionId] Region ID the disk belongs to.
  /// [resourceGroupId] The Id of resource group which the disk belongs.
  /// [size] Disk size in GiB.
  /// [snapshotId] The source snapshot id.
  /// [status] The status of disk. Valid Values: `Attaching`, `Available`, `Creating`, `Detaching`, `In_use`, `Migrating`, `ReIniting`, `Transferring`.
  /// [tags] A map of tags assigned to the disks.
  /// [type] Field `type` has been deprecated from provider version 1.122.0. New field `disk_type` instead.
  /// [zoneId] ID of the free zone to which the disk belongs.
  GetEcsDisksDisk({
    required this.attachedTime,
    required this.autoSnapshotPolicyId,
    required this.availabilityZone,
    required this.category,
    required this.creationTime,
    required this.deleteAutoSnapshot,
    required this.deleteWithInstance,
    required this.description,
    required this.detachedTime,
    required this.device,
    required this.diskId,
    required this.diskName,
    required this.diskType,
    required this.enableAutoSnapshot,
    required this.enableAutomatedSnapshotPolicy,
    required this.encrypted,
    required this.expirationTime,
    required this.expiredTime,
    required this.id,
    required this.imageId,
    required this.instanceId,
    required this.iops,
    required this.iopsRead,
    required this.iopsWrite,
    required this.kmsKeyId,
    required this.mountInstanceNum,
    required this.mountInstances,
    required this.name,
    required this.operationLocks,
    required this.paymentType,
    required this.performanceLevel,
    required this.portable,
    required this.productCode,
    required this.regionId,
    required this.resourceGroupId,
    required this.size,
    required this.snapshotId,
    required this.status,
    required this.tags,
    required this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedTime': attachedTime,
      'autoSnapshotPolicyId': autoSnapshotPolicyId,
      'availabilityZone': availabilityZone,
      'category': category,
      'creationTime': creationTime,
      'deleteAutoSnapshot': deleteAutoSnapshot,
      'deleteWithInstance': deleteWithInstance,
      'description': description,
      'detachedTime': detachedTime,
      'device': device,
      'diskId': diskId,
      'diskName': diskName,
      'diskType': diskType,
      'enableAutoSnapshot': enableAutoSnapshot,
      'enableAutomatedSnapshotPolicy': enableAutomatedSnapshotPolicy,
      'encrypted': encrypted,
      'expirationTime': expirationTime,
      'expiredTime': expiredTime,
      'id': id,
      'imageId': imageId,
      'instanceId': instanceId,
      'iops': iops,
      'iopsRead': iopsRead,
      'iopsWrite': iopsWrite,
      'kmsKeyId': kmsKeyId,
      'mountInstanceNum': mountInstanceNum,
      'mountInstances': pulumi.Input.mapInputValue<List<GetEcsDisksDiskMountInstance>, List<Map<String, dynamic>>>(mountInstances, (value) => pulumi.Input.encodeList<GetEcsDisksDiskMountInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'operationLocks': pulumi.Input.mapInputValue<List<GetEcsDisksDiskOperationLock>, List<Map<String, dynamic>>>(operationLocks, (value) => pulumi.Input.encodeList<GetEcsDisksDiskOperationLock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': paymentType,
      'performanceLevel': performanceLevel,
      'portable': portable,
      'productCode': productCode,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'size': size,
      'snapshotId': snapshotId,
      'status': status,
      'tags': tags,
      'type': type,
      'zoneId': zoneId,
    };
  }

  factory GetEcsDisksDisk.fromMap(Map<String, dynamic> map) {
    return GetEcsDisksDisk(
      attachedTime: (map['attachedTime'] as String).input(),
      autoSnapshotPolicyId: (map['autoSnapshotPolicyId'] as String).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
      category: (map['category'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      deleteAutoSnapshot: (map['deleteAutoSnapshot'] as bool).input(),
      deleteWithInstance: (map['deleteWithInstance'] as bool).input(),
      description: (map['description'] as String).input(),
      detachedTime: (map['detachedTime'] as String).input(),
      device: (map['device'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      diskName: (map['diskName'] as String).input(),
      diskType: (map['diskType'] as String).input(),
      enableAutoSnapshot: (map['enableAutoSnapshot'] as bool).input(),
      enableAutomatedSnapshotPolicy: (map['enableAutomatedSnapshotPolicy'] as bool).input(),
      encrypted: (map['encrypted'] as String).input(),
      expirationTime: (map['expirationTime'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      iops: (map['iops'] as int).input(),
      iopsRead: (map['iopsRead'] as int).input(),
      iopsWrite: (map['iopsWrite'] as int).input(),
      kmsKeyId: (map['kmsKeyId'] as String).input(),
      mountInstanceNum: (map['mountInstanceNum'] as int).input(),
      mountInstances: (pulumi.Input.decodeList<GetEcsDisksDiskMountInstance>(map['mountInstances'], (value) => GetEcsDisksDiskMountInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      operationLocks: (pulumi.Input.decodeList<GetEcsDisksDiskOperationLock>(map['operationLocks'], (value) => GetEcsDisksDiskOperationLock.fromMap((value as Map).cast<String, dynamic>()))).input(),
      paymentType: (map['paymentType'] as String).input(),
      performanceLevel: (map['performanceLevel'] as String).input(),
      portable: (map['portable'] as bool).input(),
      productCode: (map['productCode'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      size: (map['size'] as int).input(),
      snapshotId: (map['snapshotId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

