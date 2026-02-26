// ignore_for_file: unused_element, unnecessary_cast

/// The user preferences relating to target regions.
class RegionPreferences2 {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final List<String>? preferredRegions;

  RegionPreferences2({
    this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferredRegionsValue = preferredRegions;
    if (preferredRegionsValue != null) {
      map['preferredRegions'] = preferredRegionsValue;
    }
    return map;
  }

  factory RegionPreferences2.fromMap(Map<String, dynamic> map) {
    return RegionPreferences2(
      preferredRegions: map['preferredRegions'] == null
          ? null
          : (map['preferredRegions'] as List).cast<String>(),
    );
  }
}
