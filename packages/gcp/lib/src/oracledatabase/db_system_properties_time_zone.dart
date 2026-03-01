// ignore_for_file: unused_element, unnecessary_cast

class DbSystemPropertiesTimeZone {
  /// IANA Time Zone Database time zone. For example "America/New_York".
  final String? id;

  /// Creates a new [DbSystemPropertiesTimeZone].
  /// [id] IANA Time Zone Database time zone. For example "America/New_York".
  DbSystemPropertiesTimeZone({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory DbSystemPropertiesTimeZone.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesTimeZone(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
