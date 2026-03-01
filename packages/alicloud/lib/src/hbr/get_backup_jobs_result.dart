// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_jobs_filter.dart';
import 'get_backup_jobs_job.dart';

/// Result data returned by getBackupJobs.
class GetBackupJobsResult {
  final List<GetBackupJobsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetBackupJobsJob> jobs;
  final String? outputFile;
  final String? sortDirection;
  final String sourceType;
  final String? status;

  /// Creates a new [GetBackupJobsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [jobs] Required.
  /// [outputFile] Optional.
  /// [sortDirection] Optional.
  /// [sourceType] Required.
  /// [status] Optional.
  GetBackupJobsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.jobs,
    this.outputFile,
    this.sortDirection,
    required this.sourceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetBackupJobsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'jobs': pulumi.Input.encodeList<GetBackupJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'sortDirection': ?sortDirection,
      'sourceType': sourceType,
      'status': ?status,
    };
  }

  factory GetBackupJobsResult.fromMap(Map<String, dynamic> map) {
    return GetBackupJobsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetBackupJobsFilter>(map['filters'], (value) => GetBackupJobsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      jobs: pulumi.Input.decodeList<GetBackupJobsJob>(map['jobs'], (value) => GetBackupJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      sortDirection: map['sortDirection'] == null ? null : map['sortDirection'] as String,
      sourceType: map['sourceType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

