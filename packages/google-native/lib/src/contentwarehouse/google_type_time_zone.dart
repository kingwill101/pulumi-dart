// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class GoogleTypeTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String? id;

  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final String? version;

  /// Creates a new [GoogleTypeTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] Optional. IANA Time Zone Database version number, e.g. "2019a".
  GoogleTypeTimeZone({this.id, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'version': ?version};
  }

  factory GoogleTypeTimeZone.fromMap(Map<String, dynamic> map) {
    return GoogleTypeTimeZone(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
