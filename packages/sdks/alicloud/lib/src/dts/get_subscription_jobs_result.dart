// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_jobs_job.dart';

/// Result data returned by getSubscriptionJobs.
class GetSubscriptionJobsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetSubscriptionJobsJob> jobs;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetSubscriptionJobsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [jobs] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  GetSubscriptionJobsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.jobs,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'jobs': pulumi.Input.encodeList<GetSubscriptionJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSubscriptionJobsResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionJobsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      jobs: pulumi.Input.decodeList<GetSubscriptionJobsJob>(map['jobs'], (value) => GetSubscriptionJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

