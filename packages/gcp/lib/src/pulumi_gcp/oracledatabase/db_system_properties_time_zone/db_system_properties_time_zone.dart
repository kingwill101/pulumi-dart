// ignore_for_file: unused_element, unnecessary_cast

class DbSystemPropertiesTimeZone {
  /// IANA Time Zone Database time zone. For example "America/New_York".
  final String? id;

  DbSystemPropertiesTimeZone({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory DbSystemPropertiesTimeZone.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesTimeZone(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
