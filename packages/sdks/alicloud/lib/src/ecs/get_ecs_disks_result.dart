// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_disks_disk.dart';
import 'get_ecs_disks_operation_lock.dart';

/// Result data returned by getEcsDisks.
class GetEcsDisksResult {
  final List<String>? additionalAttributes;
  /// Query cloud disks based on the automatic snapshot policy ID.
  final String? autoSnapshotPolicyId;
  /// Availability zone of the disk.
  final String? availabilityZone;
  /// Disk category.
  final String? category;
  /// Indicates whether the automatic snapshot is deleted when the disk is released.
  final bool? deleteAutoSnapshot;
  /// Indicates whether the disk is released together with the instance.
  final bool? deleteWithInstance;
  /// The disk name.
  final String? diskName;
  /// The type of the disk.
  final String? diskType;
  /// A list of Ecs Disks. Each element contains the following attributes:
  final List<GetEcsDisksDisk> disks;
  final bool? dryRun;
  /// Whether the disk implements an automatic snapshot policy.
  final bool? enableAutoSnapshot;
  /// Whether the disk implements an automatic snapshot policy.
  final bool? enableAutomatedSnapshotPolicy;
  final bool? enableShared;
  /// Indicate whether the disk is encrypted or not.
  final String? encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The instance ID of the disk mount.
  final String? instanceId;
  /// The ID of the KMS key that is used for the cloud disk.
  final String? kmsKeyId;
  final String? nameRegex;
  /// A list of Disk names.
  final List<String> names;
  /// The reasons why the disk was locked.
  final List<GetEcsDisksOperationLock>? operationLocks;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// Payment method for disk.
  final String? paymentType;
  /// Whether the disk is unmountable.
  final bool? portable;
  /// The Id of resource group.
  final String? resourceGroupId;
  /// Snapshot used to create the disk. It is null if no snapshot is used to create the disk.
  final String? snapshotId;
  /// Current status.
  final String? status;
  /// A map of tags assigned to the disk.
  final Map<String, String>? tags;
  final int totalCount;
  /// The type of the disk.
  final String? type;
  /// The zone id.
  final String? zoneId;

  /// Creates a new [GetEcsDisksResult].
  /// [additionalAttributes] Optional.
  /// [autoSnapshotPolicyId] Query cloud disks based on the automatic snapshot policy ID.
  /// [availabilityZone] Availability zone of the disk.
  /// [category] Disk category.
  /// [deleteAutoSnapshot] Indicates whether the automatic snapshot is deleted when the disk is released.
  /// [deleteWithInstance] Indicates whether the disk is released together with the instance.
  /// [diskName] The disk name.
  /// [diskType] The type of the disk.
  /// [disks] A list of Ecs Disks. Each element contains the following attributes:
  /// [dryRun] Optional.
  /// [enableAutoSnapshot] Whether the disk implements an automatic snapshot policy.
  /// [enableAutomatedSnapshotPolicy] Whether the disk implements an automatic snapshot policy.
  /// [enableShared] Optional.
  /// [encrypted] Indicate whether the disk is encrypted or not.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] The instance ID of the disk mount.
  /// [kmsKeyId] The ID of the KMS key that is used for the cloud disk.
  /// [nameRegex] Optional.
  /// [names] A list of Disk names.
  /// [operationLocks] The reasons why the disk was locked.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] Payment method for disk.
  /// [portable] Whether the disk is unmountable.
  /// [resourceGroupId] The Id of resource group.
  /// [snapshotId] Snapshot used to create the disk. It is null if no snapshot is used to create the disk.
  /// [status] Current status.
  /// [tags] A map of tags assigned to the disk.
  /// [totalCount] Required.
  /// [type] The type of the disk.
  /// [zoneId] The zone id.
  GetEcsDisksResult({
    this.additionalAttributes,
    this.autoSnapshotPolicyId,
    this.availabilityZone,
    this.category,
    this.deleteAutoSnapshot,
    this.deleteWithInstance,
    this.diskName,
    this.diskType,
    required this.disks,
    this.dryRun,
    this.enableAutoSnapshot,
    this.enableAutomatedSnapshotPolicy,
    this.enableShared,
    this.encrypted,
    required this.id,
    required this.ids,
    this.instanceId,
    this.kmsKeyId,
    this.nameRegex,
    required this.names,
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
    required this.totalCount,
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
      'disks': pulumi.Input.encodeList<GetEcsDisksDisk, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'dryRun': ?dryRun,
      'enableAutoSnapshot': ?enableAutoSnapshot,
      'enableAutomatedSnapshotPolicy': ?enableAutomatedSnapshotPolicy,
      'enableShared': ?enableShared,
      'encrypted': ?encrypted,
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'kmsKeyId': ?kmsKeyId,
      'nameRegex': ?nameRegex,
      'names': names,
      'operationLocks': ?(() { final guardedValue = operationLocks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEcsDisksOperationLock, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'portable': ?portable,
      'resourceGroupId': ?resourceGroupId,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetEcsDisksResult.fromMap(Map<String, dynamic> map) {
    return GetEcsDisksResult(
      additionalAttributes: (() { final guardedValue = map['additionalAttributes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      autoSnapshotPolicyId: (() { final guardedValue = map['autoSnapshotPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteAutoSnapshot: (() { final guardedValue = map['deleteAutoSnapshot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deleteWithInstance: (() { final guardedValue = map['deleteWithInstance']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disks: pulumi.Input.decodeList<GetEcsDisksDisk>(map['disks']!, (value) => GetEcsDisksDisk.fromMap((value as Map).cast<String, dynamic>())),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableAutoSnapshot: (() { final guardedValue = map['enableAutoSnapshot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableAutomatedSnapshotPolicy: (() { final guardedValue = map['enableAutomatedSnapshotPolicy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableShared: (() { final guardedValue = map['enableShared']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      operationLocks: (() { final guardedValue = map['operationLocks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEcsDisksOperationLock>(guardedValue, (value) => GetEcsDisksOperationLock.fromMap((value as Map).cast<String, dynamic>())); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portable: (() { final guardedValue = map['portable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalCount: map['totalCount'] as int,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

