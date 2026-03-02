// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_history_delivery_jobs_job.dart';

/// Result data returned by getHistoryDeliveryJobs.
class GetHistoryDeliveryJobsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetHistoryDeliveryJobsJob> jobs;
  final String? outputFile;
  final int? status;

  /// Creates a new [GetHistoryDeliveryJobsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [jobs] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetHistoryDeliveryJobsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.jobs,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'jobs': pulumi.Input.encodeList<GetHistoryDeliveryJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetHistoryDeliveryJobsResult.fromMap(Map<String, dynamic> map) {
    return GetHistoryDeliveryJobsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      jobs: pulumi.Input.decodeList<GetHistoryDeliveryJobsJob>(map['jobs'], (value) => GetHistoryDeliveryJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as int,
    );
  }
}

