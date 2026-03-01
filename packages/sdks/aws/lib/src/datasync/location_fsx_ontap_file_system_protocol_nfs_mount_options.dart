// ignore_for_file: unused_element, unnecessary_cast


class LocationFsxOntapFileSystemProtocolNfsMountOptions {
  final String? version;

  /// Creates a new [LocationFsxOntapFileSystemProtocolNfsMountOptions].
  /// [version] Optional.
  LocationFsxOntapFileSystemProtocolNfsMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory LocationFsxOntapFileSystemProtocolNfsMountOptions.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolNfsMountOptions(
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

