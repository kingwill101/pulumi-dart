// ignore_for_file: unused_element, unnecessary_cast

import 'get_release_labels_filters.dart';

/// Result data returned by getReleaseLabels.
class GetReleaseLabelsResult {
  final GetReleaseLabelsFilters? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// Returned release labels.
  final List<String> releaseLabels;

  /// Creates a new [GetReleaseLabelsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [releaseLabels] Returned release labels.
  const GetReleaseLabelsResult({
    this.filters,
    required this.id,
    required this.region,
    required this.releaseLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters?.toMap(),
      'id': id,
      'region': region,
      'releaseLabels': releaseLabels,
    };
  }

  factory GetReleaseLabelsResult.fromMap(Map<String, dynamic> map) {
    return GetReleaseLabelsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return GetReleaseLabelsFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      region: map['region'] as String,
      releaseLabels: (map['releaseLabels'] as List).cast<String>(),
    );
  }
}
