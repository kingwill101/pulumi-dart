// ignore_for_file: unused_element, unnecessary_cast

class FloorsettingFilterConfigPiAndJailbreakFilterSettings {
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

  /// Creates a new [FloorsettingFilterConfigPiAndJailbreakFilterSettings].
  /// [confidenceLevel] Possible values:
  /// [filterEnforcement] Tells whether Prompt injection and Jailbreak filter is enabled or
  FloorsettingFilterConfigPiAndJailbreakFilterSettings({
    this.confidenceLevel,
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': ?confidenceLevel,
      'filterEnforcement': ?filterEnforcement,
    };
  }

  factory FloorsettingFilterConfigPiAndJailbreakFilterSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return FloorsettingFilterConfigPiAndJailbreakFilterSettings(
      confidenceLevel: map['confidenceLevel'] == null
          ? null
          : map['confidenceLevel'] as String,
      filterEnforcement: map['filterEnforcement'] == null
          ? null
          : map['filterEnforcement'] as String,
    );
  }
}
