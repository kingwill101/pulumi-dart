// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_restore_jobs_get_restore_jobs_args_doc}
/// Arguments for getRestoreJobs.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_restore_jobs_get_restore_jobs_args_doc}
class GetRestoreJobsArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The list of restore job IDs.
  final pulumi.Input<List<String>>? restoreIds;
  /// The Recovery Destination Types. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`, `UDM_ECS_ROLLBACK`.
  final pulumi.Input<String> restoreType;
  /// The list of data source types. Valid values: `ECS_FILE`, `NAS`, `OSS`, `OTS_TABLE`,`UDM_ECS_ROLLBACK`.
  final pulumi.Input<List<String>>? sourceTypes;
  /// The status of restore job. Valid values: `CANCELED`, `CANCELING`, `COMPLETE`, `CREATED`, `EXPIRED`, `FAILED`, `PARTIAL_COMPLETE`, `QUEUED`, `RUNNING`.
  final pulumi.Input<String>? status;
  /// The name of target OSS bucket.
  final pulumi.Input<List<String>>? targetBuckets;
  /// Valid while source_type equals `NAS`. The list of destination File System IDs.
  final pulumi.Input<List<String>>? targetFileSystemIds;
  /// The ID of target ECS instance.
  final pulumi.Input<List<String>>? targetInstanceIds;
  /// The list of backup vault IDs.
  final pulumi.Input<List<String>>? vaultIds;

  /// Creates a new [GetRestoreJobsArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [restoreIds] The list of restore job IDs.
  /// [restoreType] The Recovery Destination Types. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`, `UDM_ECS_ROLLBACK`.
  /// [sourceTypes] The list of data source types. Valid values: `ECS_FILE`, `NAS`, `OSS`, `OTS_TABLE`,`UDM_ECS_ROLLBACK`.
  /// [status] The status of restore job. Valid values: `CANCELED`, `CANCELING`, `COMPLETE`, `CREATED`, `EXPIRED`, `FAILED`, `PARTIAL_COMPLETE`, `QUEUED`, `RUNNING`.
  /// [targetBuckets] The name of target OSS bucket.
  /// [targetFileSystemIds] Valid while source_type equals `NAS`. The list of destination File System IDs.
  /// [targetInstanceIds] The ID of target ECS instance.
  /// [vaultIds] The list of backup vault IDs.
  GetRestoreJobsArgs({
    String? outputFile,
    List<String>? restoreIds,
    required String restoreType,
    List<String>? sourceTypes,
    String? status,
    List<String>? targetBuckets,
    List<String>? targetFileSystemIds,
    List<String>? targetInstanceIds,
    List<String>? vaultIds,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      restoreIds = pulumi.Input.asOptionalInput<List<String>>(restoreIds),
      restoreType = pulumi.Input.asInput<String>(restoreType),
      sourceTypes = pulumi.Input.asOptionalInput<List<String>>(sourceTypes),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetBuckets = pulumi.Input.asOptionalInput<List<String>>(targetBuckets),
      targetFileSystemIds = pulumi.Input.asOptionalInput<List<String>>(targetFileSystemIds),
      targetInstanceIds = pulumi.Input.asOptionalInput<List<String>>(targetInstanceIds),
      vaultIds = pulumi.Input.asOptionalInput<List<String>>(vaultIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'restoreIds': ?restoreIds,
      'restoreType': restoreType,
      'sourceTypes': ?sourceTypes,
      'status': ?status,
      'targetBuckets': ?targetBuckets,
      'targetFileSystemIds': ?targetFileSystemIds,
      'targetInstanceIds': ?targetInstanceIds,
      'vaultIds': ?vaultIds,
    };
  }

  factory GetRestoreJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetRestoreJobsArgs(
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      restoreIds: map['restoreIds'] == null ? null : (map['restoreIds'] as List).cast<String>(),
      restoreType: map['restoreType'] as String,
      sourceTypes: map['sourceTypes'] == null ? null : (map['sourceTypes'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
      targetBuckets: map['targetBuckets'] == null ? null : (map['targetBuckets'] as List).cast<String>(),
      targetFileSystemIds: map['targetFileSystemIds'] == null ? null : (map['targetFileSystemIds'] as List).cast<String>(),
      targetInstanceIds: map['targetInstanceIds'] == null ? null : (map['targetInstanceIds'] as List).cast<String>(),
      vaultIds: map['vaultIds'] == null ? null : (map['vaultIds'] as List).cast<String>(),
    );
  }
}

