// ignore_for_file: unused_element, unnecessary_cast

class FloorsettingFilterConfigSdpSettingsBasicConfig {
  /// Tells whether the Sensitive Data Protection basic config is enabled or
  /// disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final String? filterEnforcement;

  /// Creates a new [FloorsettingFilterConfigSdpSettingsBasicConfig].
  /// [filterEnforcement] Tells whether the Sensitive Data Protection basic config is enabled or
  FloorsettingFilterConfigSdpSettingsBasicConfig({
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterEnforcementValue = filterEnforcement;
    if (filterEnforcementValue != null) {
      map['filterEnforcement'] = filterEnforcementValue;
    }
    return map;
  }

  factory FloorsettingFilterConfigSdpSettingsBasicConfig.fromMap(
      Map<String, dynamic> map) {
    return FloorsettingFilterConfigSdpSettingsBasicConfig(
      filterEnforcement: map['filterEnforcement'] == null
          ? null
          : map['filterEnforcement'] as String,
    );
  }
}
