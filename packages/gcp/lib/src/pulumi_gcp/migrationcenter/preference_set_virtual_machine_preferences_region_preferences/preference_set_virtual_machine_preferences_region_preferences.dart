// ignore_for_file: unused_element, unnecessary_cast

class PreferenceSetVirtualMachinePreferencesRegionPreferences {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final List<String>? preferredRegions;

  PreferenceSetVirtualMachinePreferencesRegionPreferences({
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

  factory PreferenceSetVirtualMachinePreferencesRegionPreferences.fromMap(
      Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferencesRegionPreferences(
      preferredRegions: map['preferredRegions'] == null
          ? null
          : (map['preferredRegions'] as List).cast<String>(),
    );
  }
}
