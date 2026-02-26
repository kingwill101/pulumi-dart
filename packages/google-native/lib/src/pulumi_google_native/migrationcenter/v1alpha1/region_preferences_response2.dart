// ignore_for_file: unused_element, unnecessary_cast

/// The user preferences relating to target regions.
class RegionPreferencesResponse2 {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final List<String> preferredRegions;

  RegionPreferencesResponse2({
    required this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preferredRegions'] = preferredRegions;
    return map;
  }

  factory RegionPreferencesResponse2.fromMap(Map<String, dynamic> map) {
    return RegionPreferencesResponse2(
      preferredRegions: (map['preferredRegions'] as List).cast<String>(),
    );
  }
}
