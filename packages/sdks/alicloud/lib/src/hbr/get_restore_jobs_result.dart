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
      jobs: pulumi.Input.decodeList<GetRestoreJobsJob>(map['jobs']!, (value) => GetRestoreJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restoreIds: (() { final guardedValue = map['restoreIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      restoreType: map['restoreType'] as String,
      sourceTypes: (() { final guardedValue = map['sourceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetBuckets: (() { final guardedValue = map['targetBuckets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetFileSystemIds: (() { final guardedValue = map['targetFileSystemIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetInstanceIds: (() { final guardedValue = map['targetInstanceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vaultIds: (() { final guardedValue = map['vaultIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

