// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_response_jobs_v4.dart';

/// Derived details about the job posting.
class JobDerivedInfoResponseJobsV4 {
  /// Job categories derived from Job.title and Job.description.
  final List<String> jobCategories;

  /// Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  final List<LocationResponseJobsV4> locations;

  /// Creates a new [JobDerivedInfoResponseJobsV4].
  /// [jobCategories] Job categories derived from Job.title and Job.description.
  /// [locations] Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  JobDerivedInfoResponseJobsV4({
    required this.jobCategories,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobCategories'] = jobCategories;
    map['locations'] =
        pulumi.Input.encodeList<LocationResponseJobsV4, Map<String, dynamic>>(
            locations, (value) => value.toMap());
    return map;
  }

  factory JobDerivedInfoResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return JobDerivedInfoResponseJobsV4(
      jobCategories: (map['jobCategories'] as List).cast<String>(),
      locations: pulumi.Input.decodeList<LocationResponseJobsV4>(
          map['locations'],
          (value) => LocationResponseJobsV4.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
