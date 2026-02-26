// ignore_for_file: unused_element, unnecessary_cast

class LocationFsxOntapFileSystemProtocolNfsMountOptions {
  final String? version;

  LocationFsxOntapFileSystemProtocolNfsMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory LocationFsxOntapFileSystemProtocolNfsMountOptions.fromMap(
      Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolNfsMountOptions(
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
