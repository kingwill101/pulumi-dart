// ignore_for_file: unused_element, unnecessary_cast

class TemplateFilterConfigPiAndJailbreakFilterSettings {
  /// Possible values:
  /// LOW_AND_ABOVE
  /// MEDIUM_AND_ABOVE
  /// HIGH
  final String? confidenceLevel;

  /// Tells whether Prompt injection and Jailbreak filter is enabled or
  /// disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final String? filterEnforcement;

  /// Creates a new [TemplateFilterConfigPiAndJailbreakFilterSettings].
  /// [confidenceLevel] Possible values:
  /// [filterEnforcement] Tells whether Prompt injection and Jailbreak filter is enabled or
  TemplateFilterConfigPiAndJailbreakFilterSettings({
    this.confidenceLevel,
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceLevelValue = confidenceLevel;
    if (confidenceLevelValue != null) {
      map['confidenceLevel'] = confidenceLevelValue;
    }
    final filterEnforcementValue = filterEnforcement;
    if (filterEnforcementValue != null) {
      map['filterEnforcement'] = filterEnforcementValue;
    }
    return map;
  }

  factory TemplateFilterConfigPiAndJailbreakFilterSettings.fromMap(
      Map<String, dynamic> map) {
    return TemplateFilterConfigPiAndJailbreakFilterSettings(
      confidenceLevel: map['confidenceLevel'] == null
          ? null
          : map['confidenceLevel'] as String,
      filterEnforcement: map['filterEnforcement'] == null
          ? null
          : map['filterEnforcement'] as String,
    );
  }
}
