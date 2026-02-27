// ignore_for_file: unused_element, unnecessary_cast

/// The user preferences relating to target regions.
class RegionPreferencesResponseMigrationcenterV1alpha1 {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final List<String> preferredRegions;

  RegionPreferencesResponseMigrationcenterV1alpha1({
    required this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preferredRegions'] = preferredRegions;
    return map;
  }

  factory RegionPreferencesResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return RegionPreferencesResponseMigrationcenterV1alpha1(
      preferredRegions: (map['preferredRegions'] as List).cast<String>(),
    );
  }
}
