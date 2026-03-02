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
      'operationLocks': ?operationLocks == null ? null : pulumi.Input.encodeList<GetEcsDisksOperationLock, Map<String, dynamic>>(operationLocks!, (value) => value.toMap()),
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
      additionalAttributes: map['additionalAttributes'] == null ? null : (map['additionalAttributes']! as List).cast<String>(),
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : map['autoSnapshotPolicyId']! as String,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone']! as String,
      category: map['category'] == null ? null : map['category']! as String,
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : map['deleteAutoSnapshot']! as bool,
      deleteWithInstance: map['deleteWithInstance'] == null ? null : map['deleteWithInstance']! as bool,
      diskName: map['diskName'] == null ? null : map['diskName']! as String,
      diskType: map['diskType'] == null ? null : map['diskType']! as String,
      disks: pulumi.Input.decodeList<GetEcsDisksDisk>(map['disks'], (value) => GetEcsDisksDisk.fromMap((value as Map).cast<String, dynamic>())),
      dryRun: map['dryRun'] == null ? null : map['dryRun']! as bool,
      enableAutoSnapshot: map['enableAutoSnapshot'] == null ? null : map['enableAutoSnapshot']! as bool,
      enableAutomatedSnapshotPolicy: map['enableAutomatedSnapshotPolicy'] == null ? null : map['enableAutomatedSnapshotPolicy']! as bool,
      enableShared: map['enableShared'] == null ? null : map['enableShared']! as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      operationLocks: map['operationLocks'] == null ? null : pulumi.Input.decodeList<GetEcsDisksOperationLock>(map['operationLocks']!, (value) => GetEcsDisksOperationLock.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      paymentType: map['paymentType'] == null ? null : map['paymentType']! as String,
      portable: map['portable'] == null ? null : map['portable']! as bool,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      type: map['type'] == null ? null : map['type']! as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

