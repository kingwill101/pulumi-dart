// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'featureset_job_response.dart';

/// Result data returned by listFeaturesetVersionMaterializationJobs.
class ListFeaturesetVersionMaterializationJobsResult {
  /// The link to the next page of FeaturesetJob objects. If null, there are no additional pages.
  final String? nextLink;
  /// An array of objects of type FeaturesetJob.
  final List<FeaturesetJobResponse>? value;

  /// Creates a new [ListFeaturesetVersionMaterializationJobsResult].
  /// [nextLink] The link to the next page of FeaturesetJob objects. If null, there are no additional pages.
  /// [value] An array of objects of type FeaturesetJob.
  ListFeaturesetVersionMaterializationJobsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<FeaturesetJobResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListFeaturesetVersionMaterializationJobsResult.fromMap(Map<String, dynamic> map) {
    return ListFeaturesetVersionMaterializationJobsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<FeaturesetJobResponse>(map['value'], (value) => FeaturesetJobResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

