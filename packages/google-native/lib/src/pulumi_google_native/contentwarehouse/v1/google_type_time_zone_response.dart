// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class GoogleTypeTimeZoneResponse {
  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final String version;

  GoogleTypeTimeZoneResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['version'] = version;
    return map;
  }

  factory GoogleTypeTimeZoneResponse.fromMap(Map<String, dynamic> map) {
    return GoogleTypeTimeZoneResponse(
      version: map['version'] as String,
    );
  }
}
