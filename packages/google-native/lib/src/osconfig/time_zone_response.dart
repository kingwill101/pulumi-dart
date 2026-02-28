// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class TimeZoneResponse {
  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final String version;

  /// Creates a new [TimeZoneResponse].
  /// [version] Optional. IANA Time Zone Database version number, e.g. "2019a".
  TimeZoneResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['version'] = version;
    return map;
  }

  factory TimeZoneResponse.fromMap(Map<String, dynamic> map) {
    return TimeZoneResponse(
      version: map['version'] as String,
    );
  }
}
