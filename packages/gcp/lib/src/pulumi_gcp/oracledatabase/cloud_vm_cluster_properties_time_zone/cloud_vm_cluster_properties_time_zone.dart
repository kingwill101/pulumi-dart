// ignore_for_file: unused_element, unnecessary_cast

class CloudVmClusterPropertiesTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String? id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  final String? version;

  CloudVmClusterPropertiesTimeZone({
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

  factory CloudVmClusterPropertiesTimeZone.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterPropertiesTimeZone(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
