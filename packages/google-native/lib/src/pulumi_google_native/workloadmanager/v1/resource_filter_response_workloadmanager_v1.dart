// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance_filter_response.dart';

/// Message describing resource filters
class ResourceFilterResponseWorkloadmanagerV1 {
  /// Filter compute engine resource
  final GceInstanceFilterResponse gceInstanceFilter;

  /// The label used for filter resource
  final Map<String, String> inclusionLabels;

  /// The id pattern for filter resource
  final List<String> resourceIdPatterns;

  /// The scopes of evaluation resource
  final List<String> scopes;

  ResourceFilterResponseWorkloadmanagerV1({
    required this.gceInstanceFilter,
    required this.inclusionLabels,
    required this.resourceIdPatterns,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gceInstanceFilter'] = gceInstanceFilter.toMap();
    map['inclusionLabels'] = inclusionLabels;
    map['resourceIdPatterns'] = resourceIdPatterns;
    map['scopes'] = scopes;
    return map;
  }

  factory ResourceFilterResponseWorkloadmanagerV1.fromMap(
      Map<String, dynamic> map) {
    return ResourceFilterResponseWorkloadmanagerV1(
      gceInstanceFilter: GceInstanceFilterResponse.fromMap(
          (map['gceInstanceFilter'] as Map).cast<String, dynamic>()),
      inclusionLabels: (map['inclusionLabels'] as Map).cast<String, String>(),
      resourceIdPatterns: (map['resourceIdPatterns'] as List).cast<String>(),
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
