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
    this.outputFile,
    this.restoreIds,
    required this.restoreType,
    this.sourceTypes,
    this.status,
    this.targetBuckets,
    this.targetFileSystemIds,
    this.targetInstanceIds,
    this.vaultIds,
  });

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
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreIds: (() { final guardedValue = map['restoreIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      restoreType: pulumi.Input.fromValue(map['restoreType'] as String),
      sourceTypes: (() { final guardedValue = map['sourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetBuckets: (() { final guardedValue = map['targetBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetFileSystemIds: (() { final guardedValue = map['targetFileSystemIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetInstanceIds: (() { final guardedValue = map['targetInstanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vaultIds: (() { final guardedValue = map['vaultIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

