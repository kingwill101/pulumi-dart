// ignore_for_file: unused_element, unnecessary_cast

class CloudVmClusterPropertiesTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String? id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  final String? version;

  /// Creates a new [CloudVmClusterPropertiesTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] IANA Time Zone Database version number, e.g. "2019a".
  CloudVmClusterPropertiesTimeZone({this.id, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'version': ?version};
  }

  factory CloudVmClusterPropertiesTimeZone.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterPropertiesTimeZone(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
