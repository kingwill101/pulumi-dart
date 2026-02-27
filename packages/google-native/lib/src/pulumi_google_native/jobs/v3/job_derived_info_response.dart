// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'location_response4.dart';

/// Output only. Derived details about the job posting.
class JobDerivedInfoResponse {
  /// Job categories derived from Job.title and Job.description.
  final List<String> jobCategories;

  /// Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  final List<LocationResponse4> locations;

  JobDerivedInfoResponse({
    required this.jobCategories,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobCategories'] = jobCategories;
    map['locations'] =
        Input.encodeList<LocationResponse4, Map<String, dynamic>>(
            locations, (value) => value.toMap());
    return map;
  }

  factory JobDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return JobDerivedInfoResponse(
      jobCategories: (map['jobCategories'] as List).cast<String>(),
      locations: Input.decodeList<LocationResponse4>(
          map['locations'],
          (value) => LocationResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
