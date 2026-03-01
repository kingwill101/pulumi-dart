// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_synchronization_jobs_job.dart';

/// Result data returned by getSynchronizationJobs.
class GetSynchronizationJobsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetSynchronizationJobsJob> jobs;
  final String? nameRegex;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetSynchronizationJobsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [jobs] Required.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetSynchronizationJobsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.jobs,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'jobs': pulumi.Input.encodeList<GetSynchronizationJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetSynchronizationJobsResult.fromMap(Map<String, dynamic> map) {
    return GetSynchronizationJobsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      jobs: pulumi.Input.decodeList<GetSynchronizationJobsJob>(map['jobs'], (value) => GetSynchronizationJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

