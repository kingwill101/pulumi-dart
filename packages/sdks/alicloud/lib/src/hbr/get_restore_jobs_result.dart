// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_restore_jobs_job.dart';

/// Result data returned by getRestoreJobs.
class GetRestoreJobsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetRestoreJobsJob> jobs;
  final String? outputFile;
  final List<String>? restoreIds;
  final String restoreType;
  final List<String>? sourceTypes;
  final String? status;
  final List<String>? targetBuckets;
  final List<String>? targetFileSystemIds;
  final List<String>? targetInstanceIds;
  final List<String>? vaultIds;

  /// Creates a new [GetRestoreJobsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [jobs] Required.
  /// [outputFile] Optional.
  /// [restoreIds] Optional.
  /// [restoreType] Required.
  /// [sourceTypes] Optional.
  /// [status] Optional.
  /// [targetBuckets] Optional.
  /// [targetFileSystemIds] Optional.
  /// [targetInstanceIds] Optional.
  /// [vaultIds] Optional.
  GetRestoreJobsResult({
    required this.id,
    required this.ids,
    required this.jobs,
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
      'id': id,
      'ids': ids,
      'jobs': pulumi.Input.encodeList<GetRestoreJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
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

  factory GetRestoreJobsResult.fromMap(Map<String, dynamic> map) {
    return GetRestoreJobsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      jobs: pulumi.Input.decodeList<GetRestoreJobsJob>(map['jobs'], (value) => GetRestoreJobsJob.fromMap((value as Map).cast<String, dynamic>())),
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

