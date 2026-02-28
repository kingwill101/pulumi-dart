// ignore_for_file: unused_element, unnecessary_cast

class LocationFsxOntapFileSystemProtocolSmbMountOptions {
  final String? version;

  /// Creates a new [LocationFsxOntapFileSystemProtocolSmbMountOptions].
  /// [version] Optional.
  LocationFsxOntapFileSystemProtocolSmbMountOptions({
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

  factory LocationFsxOntapFileSystemProtocolSmbMountOptions.fromMap(
      Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolSmbMountOptions(
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
