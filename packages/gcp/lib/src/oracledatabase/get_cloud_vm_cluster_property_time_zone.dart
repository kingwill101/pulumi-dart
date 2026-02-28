// ignore_for_file: unused_element, unnecessary_cast

class GetCloudVmClusterPropertyTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  final String version;

  /// Creates a new [GetCloudVmClusterPropertyTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] IANA Time Zone Database version number, e.g. "2019a".
  GetCloudVmClusterPropertyTimeZone({
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['version'] = version;
    return map;
  }

  factory GetCloudVmClusterPropertyTimeZone.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterPropertyTimeZone(
      id: map['id'] as String,
      version: map['version'] as String,
    );
  }
}
