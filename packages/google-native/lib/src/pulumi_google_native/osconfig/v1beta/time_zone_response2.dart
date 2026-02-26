// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class TimeZoneResponse2 {
  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final String version;

  TimeZoneResponse2({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['version'] = version;
    return map;
  }

  factory TimeZoneResponse2.fromMap(Map<String, dynamic> map) {
    return TimeZoneResponse2(
      version: map['version'] as String,
    );
  }
}
