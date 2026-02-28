// ignore_for_file: unused_element, unnecessary_cast

class GetCloudVmClustersCloudVmClusterPropertyTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  final String version;

  /// Creates a new [GetCloudVmClustersCloudVmClusterPropertyTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] IANA Time Zone Database version number, e.g. "2019a".
  GetCloudVmClustersCloudVmClusterPropertyTimeZone({
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['version'] = version;
    return map;
  }

  factory GetCloudVmClustersCloudVmClusterPropertyTimeZone.fromMap(
      Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmClusterPropertyTimeZone(
      id: map['id'] as String,
      version: map['version'] as String,
    );
  }
}
