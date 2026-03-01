// ignore_for_file: unused_element, unnecessary_cast

class FloorsettingFilterConfigMaliciousUriFilterSettings {
  /// Tells whether the Malicious URI filter is enabled or disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final String? filterEnforcement;

  /// Creates a new [FloorsettingFilterConfigMaliciousUriFilterSettings].
  /// [filterEnforcement] Tells whether the Malicious URI filter is enabled or disabled.
  FloorsettingFilterConfigMaliciousUriFilterSettings({this.filterEnforcement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filterEnforcement': ?filterEnforcement};
  }

  factory FloorsettingFilterConfigMaliciousUriFilterSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return FloorsettingFilterConfigMaliciousUriFilterSettings(
      filterEnforcement: map['filterEnforcement'] == null
          ? null
          : map['filterEnforcement'] as String,
    );
  }
}
