// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_disks_disk_mount_instance.dart';
import 'get_ecs_disks_disk_operation_lock.dart';

class GetEcsDisksDisk {
  /// A mount of time.
  final String attachedTime;
  /// Query cloud disks based on the automatic snapshot policy ID.
  final String autoSnapshotPolicyId;
  /// Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  final String availabilityZone;
  /// Disk category. Valid values: `cloud`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`, `ephemeral_ssd`, `cloud_auto`, `cloud_essd_entry`.
  final String category;
  /// Disk creation time.
  final String creationTime;
  /// Indicates whether the automatic snapshot is deleted when the disk is released.
  final bool deleteAutoSnapshot;
  /// Indicates whether the disk is released together with the instance.
  final bool deleteWithInstance;
  /// Disk description.
  final String description;
  /// Disk detachment time.
  final String detachedTime;
  /// The mount point of the disk.
  final String device;
  /// ID of the disk.
  final String diskId;
  /// The disk name.
  final String diskName;
  /// The disk type. Valid values: `system`, `data`, `all`.
  final String diskType;
  /// Indicates whether the automatic snapshot is deleted when the disk is released.
  final bool enableAutoSnapshot;
  /// Whether the cloud disk has an automatic snapshot policy
  final bool enableAutomatedSnapshotPolicy;
  /// Indicate whether the disk is encrypted or not. Valid values: `on` and `off`.
  final String encrypted;
  /// The time when the subscription disk expires.
  final String expirationTime;
  /// The time when the subscription disk expires.
  final String expiredTime;
  /// ID of the disk.
  final String id;
  /// ID of the image from which the disk is created. It is null unless the disk is created using an image.
  final String imageId;
  /// Filter the results by the specified ECS instance ID.
  final String instanceId;
  /// The maximum number of read and write operations per second.
  final int iops;
  /// The maximum number of read operations per second.
  final int iopsRead;
  /// The maximum number of write operations per second.
  final int iopsWrite;
  /// The kms key id.
  final String kmsKeyId;
  /// Number of instances mounted on shared storage.
  final int mountInstanceNum;
  /// Disk mount instances.
  final List<GetEcsDisksDiskMountInstance> mountInstances;
  /// Disk name.
  final String name;
  /// The reasons why the disk was locked. See `operation_locks` below for details.
  final List<GetEcsDisksDiskOperationLock> operationLocks;
  /// Payment method for disk. Valid Values: `PayAsYouGo`, `Subscription`.
  final String paymentType;
  /// Performance levels of ESSD cloud disk.
  final String performanceLevel;
  /// Whether the cloud disk or local disk supports uninstallation.
  final bool portable;
  /// The product logo of the cloud market.
  final String productCode;
  /// Region ID the disk belongs to.
  final String regionId;
  /// The Id of resource group which the disk belongs.
  final String resourceGroupId;
  /// Disk size in GiB.
  final int size;
  /// The source snapshot id.
  final String snapshotId;
  /// The status of disk. Valid Values: `Attaching`, `Available`, `Creating`, `Detaching`, `In_use`, `Migrating`, `ReIniting`, `Transferring`.
  final String status;
  /// A map of tags assigned to the disks.
  final Map<String, String> tags;
  /// Field `type` has been deprecated from provider version 1.122.0. New field `disk_type` instead.
  final String type;
  /// ID of the free zone to which the disk belongs.
  final String zoneId;

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
      'mountInstances': pulumi.Input.encodeList<GetEcsDisksDiskMountInstance, Map<String, dynamic>>(mountInstances, (value) => value.toMap()),
      'name': name,
      'operationLocks': pulumi.Input.encodeList<GetEcsDisksDiskOperationLock, Map<String, dynamic>>(operationLocks, (value) => value.toMap()),
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
      attachedTime: map['attachedTime'] as String,
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] as String,
      availabilityZone: map['availabilityZone'] as String,
      category: map['category'] as String,
      creationTime: map['creationTime'] as String,
      deleteAutoSnapshot: map['deleteAutoSnapshot'] as bool,
      deleteWithInstance: map['deleteWithInstance'] as bool,
      description: map['description'] as String,
      detachedTime: map['detachedTime'] as String,
      device: map['device'] as String,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      enableAutoSnapshot: map['enableAutoSnapshot'] as bool,
      enableAutomatedSnapshotPolicy: map['enableAutomatedSnapshotPolicy'] as bool,
      encrypted: map['encrypted'] as String,
      expirationTime: map['expirationTime'] as String,
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      instanceId: map['instanceId'] as String,
      iops: map['iops'] as int,
      iopsRead: map['iopsRead'] as int,
      iopsWrite: map['iopsWrite'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      mountInstanceNum: map['mountInstanceNum'] as int,
      mountInstances: pulumi.Input.decodeList<GetEcsDisksDiskMountInstance>(map['mountInstances'], (value) => GetEcsDisksDiskMountInstance.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      operationLocks: pulumi.Input.decodeList<GetEcsDisksDiskOperationLock>(map['operationLocks'], (value) => GetEcsDisksDiskOperationLock.fromMap((value as Map).cast<String, dynamic>())),
      paymentType: map['paymentType'] as String,
      performanceLevel: map['performanceLevel'] as String,
      portable: map['portable'] as bool,
      productCode: map['productCode'] as String,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      size: map['size'] as int,
      snapshotId: map['snapshotId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

