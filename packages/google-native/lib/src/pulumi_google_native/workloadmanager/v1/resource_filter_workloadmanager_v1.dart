// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance_filter.dart';

/// Message describing resource filters
class ResourceFilterWorkloadmanagerV1 {
  /// Filter compute engine resource
  final GceInstanceFilter? gceInstanceFilter;

  /// The label used for filter resource
  final Map<String, String>? inclusionLabels;

  /// The id pattern for filter resource
  final List<String>? resourceIdPatterns;

  /// The scopes of evaluation resource
  final List<String>? scopes;

  ResourceFilterWorkloadmanagerV1({
    this.gceInstanceFilter,
    this.inclusionLabels,
    this.resourceIdPatterns,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gceInstanceFilterValue = gceInstanceFilter;
    if (gceInstanceFilterValue != null) {
      map['gceInstanceFilter'] = gceInstanceFilterValue.toMap();
    }
    final inclusionLabelsValue = inclusionLabels;
    if (inclusionLabelsValue != null) {
      map['inclusionLabels'] = inclusionLabelsValue;
    }
    final resourceIdPatternsValue = resourceIdPatterns;
    if (resourceIdPatternsValue != null) {
      map['resourceIdPatterns'] = resourceIdPatternsValue;
    }
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    return map;
  }

  factory ResourceFilterWorkloadmanagerV1.fromMap(Map<String, dynamic> map) {
    return ResourceFilterWorkloadmanagerV1(
      gceInstanceFilter: map['gceInstanceFilter'] == null
          ? null
          : GceInstanceFilter.fromMap(
              (map['gceInstanceFilter'] as Map).cast<String, dynamic>()),
      inclusionLabels: map['inclusionLabels'] == null
          ? null
          : (map['inclusionLabels'] as Map).cast<String, String>(),
      resourceIdPatterns: map['resourceIdPatterns'] == null
          ? null
          : (map['resourceIdPatterns'] as List).cast<String>(),
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}
