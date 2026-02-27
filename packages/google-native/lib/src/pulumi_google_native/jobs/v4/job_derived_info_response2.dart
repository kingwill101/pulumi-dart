// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'location_response5.dart';

/// Derived details about the job posting.
class JobDerivedInfoResponse2 {
  /// Job categories derived from Job.title and Job.description.
  final List<String> jobCategories;

  /// Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  final List<LocationResponse5> locations;

  JobDerivedInfoResponse2({
    required this.jobCategories,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobCategories'] = jobCategories;
    map['locations'] =
        Input.encodeList<LocationResponse5, Map<String, dynamic>>(
            locations, (value) => value.toMap());
    return map;
  }

  factory JobDerivedInfoResponse2.fromMap(Map<String, dynamic> map) {
    return JobDerivedInfoResponse2(
      jobCategories: (map['jobCategories'] as List).cast<String>(),
      locations: Input.decodeList<LocationResponse5>(
          map['locations'],
          (value) => LocationResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
