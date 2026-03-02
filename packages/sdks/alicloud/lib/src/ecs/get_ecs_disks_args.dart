// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_disks_operation_lock.dart';

/// {@template pulumi_ecs_get_ecs_disks_get_ecs_disks_args_doc}
/// Arguments for getEcsDisks.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_disks_get_ecs_disks_args_doc}
class GetEcsDisksArgs {
  /// Other attribute values. Currently, only the incoming value of IOPS is supported, which means to query the IOPS upper limit of the current disk.
  final pulumi.Input<List<String>>? additionalAttributes;
  /// Query cloud disks based on the automatic snapshot policy ID.
  final pulumi.Input<String>? autoSnapshotPolicyId;
  /// Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  final pulumi.Input<String>? availabilityZone;
  /// Disk category. Valid values: `cloud`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`, `ephemeral_ssd`, `cloud_auto`, `cloud_essd_entry`.
  final pulumi.Input<String>? category;
  /// Indicates whether the automatic snapshot is deleted when the disk is released.
  final pulumi.Input<bool>? deleteAutoSnapshot;
  /// Indicates whether the disk is released together with the instance.
  final pulumi.Input<bool>? deleteWithInstance;
  /// The disk name.
  final pulumi.Input<String>? diskName;
  /// The disk type. Valid values: `system`, `data`, `all`.
  final pulumi.Input<String>? diskType;
  /// Specifies whether to check the validity of the request without actually making the request.request Default value: false. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// Indicates whether the automatic snapshot is deleted when the disk is released.
  final pulumi.Input<bool>? enableAutoSnapshot;
  /// Whether the cloud disk has an automatic snapshot policy
  final pulumi.Input<bool>? enableAutomatedSnapshotPolicy;
  /// Whether it is shared block storage.
  final pulumi.Input<bool>? enableShared;
  /// Indicate whether the disk is encrypted or not. Valid values: `on` and `off`.
  final pulumi.Input<String>? encrypted;
  /// A list of Disk IDs.
  final pulumi.Input<List<String>>? ids;
  /// Filter the results by the specified ECS instance ID.
  final pulumi.Input<String>? instanceId;
  /// The kms key id.
  final pulumi.Input<String>? kmsKeyId;
  /// A regex string to filter results by Disk name.
  final pulumi.Input<String>? nameRegex;
  /// The reasons why the disk was locked. See `operation_locks` below for details.
  final pulumi.Input<List<GetEcsDisksOperationLock>>? operationLocks;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// Payment method for disk. Valid Values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// Whether the cloud disk or local disk supports uninstallation.
  final pulumi.Input<bool>? portable;
  /// The Id of resource group which the disk belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The source snapshot id.
  final pulumi.Input<String>? snapshotId;
  /// The status of disk. Valid Values: `Attaching`, `Available`, `Creating`, `Detaching`, `In_use`, `Migrating`, `ReIniting`, `Transferring`.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to the disks.
  final pulumi.Input<Map<String, String>>? tags;
  /// Field `type` has been deprecated from provider version 1.122.0. New field `disk_type` instead.
  final pulumi.Input<String>? type;
  /// ID of the free zone to which the disk belongs.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetEcsDisksArgs].
  /// [additionalAttributes] Other attribute values. Currently, only the incoming value of IOPS is supported, which means to query the IOPS upper limit of the current disk.
  /// [autoSnapshotPolicyId] Query cloud disks based on the automatic snapshot policy ID.
  /// [availabilityZone] Field `availability_zone` has been deprecated from provider version 1.122.0. New field `zone_id` instead.
  /// [category] Disk category. Valid values: `cloud`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`, `ephemeral_ssd`, `cloud_auto`, `cloud_essd_entry`.
  /// [deleteAutoSnapshot] Indicates whether the automatic snapshot is deleted when the disk is released.
  /// [deleteWithInstance] Indicates whether the disk is released together with the instance.
  /// [diskName] The disk name.
  /// [diskType] The disk type. Valid values: `system`, `data`, `all`.
  /// [dryRun] Specifies whether to check the validity of the request without actually making the request.request Default value: false. Valid values:
  /// [enableAutoSnapshot] Indicates whether the automatic snapshot is deleted when the disk is released.
  /// [enableAutomatedSnapshotPolicy] Whether the cloud disk has an automatic snapshot policy
  /// [enableShared] Whether it is shared block storage.
  /// [encrypted] Indicate whether the disk is encrypted or not. Valid values: `on` and `off`.
  /// [ids] A list of Disk IDs.
  /// [instanceId] Filter the results by the specified ECS instance ID.
  /// [kmsKeyId] The kms key id.
  /// [nameRegex] A regex string to filter results by Disk name.
  /// [operationLocks] The reasons why the disk was locked. See `operation_locks` below for details.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] Payment method for disk. Valid Values: `PayAsYouGo`, `Subscription`.
  /// [portable] Whether the cloud disk or local disk supports uninstallation.
  /// [resourceGroupId] The Id of resource group which the disk belongs.
  /// [snapshotId] The source snapshot id.
  /// [status] The status of disk. Valid Values: `Attaching`, `Available`, `Creating`, `Detaching`, `In_use`, `Migrating`, `ReIniting`, `Transferring`.
  /// [tags] A map of tags assigned to the disks.
  /// [type] Field `type` has been deprecated from provider version 1.122.0. New field `disk_type` instead.
  /// [zoneId] ID of the free zone to which the disk belongs.
  GetEcsDisksArgs({
    this.additionalAttributes,
    this.autoSnapshotPolicyId,
    this.availabilityZone,
    this.category,
    this.deleteAutoSnapshot,
    this.deleteWithInstance,
    this.diskName,
    this.diskType,
    this.dryRun,
    this.enableAutoSnapshot,
    this.enableAutomatedSnapshotPolicy,
    this.enableShared,
    this.encrypted,
    this.ids,
    this.instanceId,
    this.kmsKeyId,
    this.nameRegex,
    this.operationLocks,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.paymentType,
    this.portable,
    this.resourceGroupId,
    this.snapshotId,
    this.status,
    this.tags,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAttributes': ?additionalAttributes,
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'availabilityZone': ?availabilityZone,
      'category': ?category,
      'deleteAutoSnapshot': ?deleteAutoSnapshot,
      'deleteWithInstance': ?deleteWithInstance,
      'diskName': ?diskName,
      'diskType': ?diskType,
      'dryRun': ?dryRun,
      'enableAutoSnapshot': ?enableAutoSnapshot,
      'enableAutomatedSnapshotPolicy': ?enableAutomatedSnapshotPolicy,
      'enableShared': ?enableShared,
      'encrypted': ?encrypted,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'kmsKeyId': ?kmsKeyId,
      'nameRegex': ?nameRegex,
      'operationLocks': ?pulumi.Input.mapOptionalInputValue<List<GetEcsDisksOperationLock>, List<Map<String, dynamic>>>(operationLocks, (value) => pulumi.Input.encodeList<GetEcsDisksOperationLock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'portable': ?portable,
      'resourceGroupId': ?resourceGroupId,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetEcsDisksArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsDisksArgs(
      additionalAttributes: map['additionalAttributes'] == null ? null : ((map['additionalAttributes']! as List).cast<String>()).input(),
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : (map['autoSnapshotPolicyId']! as String).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : (map['deleteAutoSnapshot']! as bool).input(),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : (map['deleteWithInstance']! as bool).input(),
      diskName: map['diskName'] == null ? null : (map['diskName']! as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      enableAutoSnapshot: map['enableAutoSnapshot'] == null ? null : (map['enableAutoSnapshot']! as bool).input(),
      enableAutomatedSnapshotPolicy: map['enableAutomatedSnapshotPolicy'] == null ? null : (map['enableAutomatedSnapshotPolicy']! as bool).input(),
      enableShared: map['enableShared'] == null ? null : (map['enableShared']! as bool).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      operationLocks: map['operationLocks'] == null ? null : (pulumi.Input.decodeList<GetEcsDisksOperationLock>(map['operationLocks']!, (value) => GetEcsDisksOperationLock.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      portable: map['portable'] == null ? null : (map['portable']! as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

