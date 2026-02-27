// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_response_jobs_v3.dart';

/// Output only. Derived details about the job posting.
class JobDerivedInfoResponse {
  /// Job categories derived from Job.title and Job.description.
  final List<String> jobCategories;

  /// Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  final List<LocationResponseJobsV3> locations;

  JobDerivedInfoResponse({
    required this.jobCategories,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobCategories'] = jobCategories;
    map['locations'] =
        pulumi.Input.encodeList<LocationResponseJobsV3, Map<String, dynamic>>(
            locations, (value) => value.toMap());
    return map;
  }

  factory JobDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return JobDerivedInfoResponse(
      jobCategories: (map['jobCategories'] as List).cast<String>(),
      locations: pulumi.Input.decodeList<LocationResponseJobsV3>(
          map['locations'],
          (value) => LocationResponseJobsV3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
