// ignore_for_file: unused_element, unnecessary_cast

import 'get_release_labels_filters.dart';

/// Result data returned by getReleaseLabels.
class GetReleaseLabelsResult {
  final GetReleaseLabelsFilters? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Returned release labels.
  final List<String>? releaseLabels;

  /// Creates a new [GetReleaseLabelsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [releaseLabels] Returned release labels.
  const GetReleaseLabelsResult({
    this.filters,
    this.id,
    this.region,
    this.releaseLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters?.toMap(),
      'id': ?id,
      'region': ?region,
      'releaseLabels': ?releaseLabels,
    };
  }

  factory GetReleaseLabelsResult.fromMap(Map<String, dynamic> map) {
    return GetReleaseLabelsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return GetReleaseLabelsFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseLabels: (() { final guardedValue = map['releaseLabels']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
