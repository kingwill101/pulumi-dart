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
    List<String>? additionalAttributes,
    String? autoSnapshotPolicyId,
    String? availabilityZone,
    String? category,
    bool? deleteAutoSnapshot,
    bool? deleteWithInstance,
    String? diskName,
    String? diskType,
    bool? dryRun,
    bool? enableAutoSnapshot,
    bool? enableAutomatedSnapshotPolicy,
    bool? enableShared,
    String? encrypted,
    List<String>? ids,
    String? instanceId,
    String? kmsKeyId,
    String? nameRegex,
    List<GetEcsDisksOperationLock>? operationLocks,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? paymentType,
    bool? portable,
    String? resourceGroupId,
    String? snapshotId,
    String? status,
    Map<String, String>? tags,
    String? type,
    String? zoneId,
  }) :
      additionalAttributes = pulumi.Input.asOptionalInput<List<String>>(additionalAttributes),
      autoSnapshotPolicyId = pulumi.Input.asOptionalInput<String>(autoSnapshotPolicyId),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      category = pulumi.Input.asOptionalInput<String>(category),
      deleteAutoSnapshot = pulumi.Input.asOptionalInput<bool>(deleteAutoSnapshot),
      deleteWithInstance = pulumi.Input.asOptionalInput<bool>(deleteWithInstance),
      diskName = pulumi.Input.asOptionalInput<String>(diskName),
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enableAutoSnapshot = pulumi.Input.asOptionalInput<bool>(enableAutoSnapshot),
      enableAutomatedSnapshotPolicy = pulumi.Input.asOptionalInput<bool>(enableAutomatedSnapshotPolicy),
      enableShared = pulumi.Input.asOptionalInput<bool>(enableShared),
      encrypted = pulumi.Input.asOptionalInput<String>(encrypted),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      operationLocks = pulumi.Input.asOptionalInput<List<GetEcsDisksOperationLock>>(operationLocks),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      portable = pulumi.Input.asOptionalInput<bool>(portable),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      additionalAttributes: map['additionalAttributes'] == null ? null : (map['additionalAttributes'] as List).cast<String>(),
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : map['autoSnapshotPolicyId'] as String,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : map['deleteAutoSnapshot'] as bool,
      deleteWithInstance: map['deleteWithInstance'] == null ? null : map['deleteWithInstance'] as bool,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      enableAutoSnapshot: map['enableAutoSnapshot'] == null ? null : map['enableAutoSnapshot'] as bool,
      enableAutomatedSnapshotPolicy: map['enableAutomatedSnapshotPolicy'] == null ? null : map['enableAutomatedSnapshotPolicy'] as bool,
      enableShared: map['enableShared'] == null ? null : map['enableShared'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      operationLocks: map['operationLocks'] == null ? null : pulumi.Input.decodeList<GetEcsDisksOperationLock>(map['operationLocks'], (value) => GetEcsDisksOperationLock.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      portable: map['portable'] == null ? null : map['portable'] as bool,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

