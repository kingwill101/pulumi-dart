// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class TimeZoneOsconfigV1beta {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String? id;

  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final String? version;

  TimeZoneOsconfigV1beta({
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory TimeZoneOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return TimeZoneOsconfigV1beta(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
