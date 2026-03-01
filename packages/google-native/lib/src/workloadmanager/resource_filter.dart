// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance_filter.dart';

/// Message describing resource filters
class ResourceFilter {
  /// Filter compute engine resource
  final GceInstanceFilter? gceInstanceFilter;

  /// The label used for filter resource
  final Map<String, String>? inclusionLabels;

  /// The id pattern for filter resource
  final List<String>? resourceIdPatterns;

  /// The scopes of evaluation resource
  final List<String>? scopes;

  /// Creates a new [ResourceFilter].
  /// [gceInstanceFilter] Filter compute engine resource
  /// [inclusionLabels] The label used for filter resource
  /// [resourceIdPatterns] The id pattern for filter resource
  /// [scopes] The scopes of evaluation resource
  ResourceFilter({
    this.gceInstanceFilter,
    this.inclusionLabels,
    this.resourceIdPatterns,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstanceFilter': ?gceInstanceFilter == null
          ? null
          : gceInstanceFilter!.toMap(),
      'inclusionLabels': ?inclusionLabels,
      'resourceIdPatterns': ?resourceIdPatterns,
      'scopes': ?scopes,
    };
  }

  factory ResourceFilter.fromMap(Map<String, dynamic> map) {
    return ResourceFilter(
      gceInstanceFilter: map['gceInstanceFilter'] == null
          ? null
          : GceInstanceFilter.fromMap(
              (map['gceInstanceFilter'] as Map).cast<String, dynamic>(),
            ),
      inclusionLabels: map['inclusionLabels'] == null
          ? null
          : (map['inclusionLabels'] as Map).cast<String, String>(),
      resourceIdPatterns: map['resourceIdPatterns'] == null
          ? null
          : (map['resourceIdPatterns'] as List).cast<String>(),
      scopes: map['scopes'] == null
          ? null
          : (map['scopes'] as List).cast<String>(),
    );
  }
}
