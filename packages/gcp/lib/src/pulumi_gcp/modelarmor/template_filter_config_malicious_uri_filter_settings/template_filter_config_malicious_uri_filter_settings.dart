// ignore_for_file: unused_element, unnecessary_cast

class TemplateFilterConfigMaliciousUriFilterSettings {
  /// Tells whether the Malicious URI filter is enabled or disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final String? filterEnforcement;

  TemplateFilterConfigMaliciousUriFilterSettings({
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

  factory TemplateFilterConfigMaliciousUriFilterSettings.fromMap(
      Map<String, dynamic> map) {
    return TemplateFilterConfigMaliciousUriFilterSettings(
      filterEnforcement: map['filterEnforcement'] == null
          ? null
          : map['filterEnforcement'] as String,
    );
  }
}
