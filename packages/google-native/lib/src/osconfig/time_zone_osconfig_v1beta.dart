// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class TimeZoneOsconfigV1beta {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String? id;

  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final String? version;

  /// Creates a new [TimeZoneOsconfigV1beta].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] Optional. IANA Time Zone Database version number, e.g. "2019a".
  TimeZoneOsconfigV1beta({this.id, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'version': ?version};
  }

  factory TimeZoneOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return TimeZoneOsconfigV1beta(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
