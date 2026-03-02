// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationFsxOntapFileSystemProtocolNfsMountOptions {
  final pulumi.Input<String>? version;

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
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

