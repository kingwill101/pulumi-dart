// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationFsxOntapFileSystemProtocolSmbMountOptions {
  final pulumi.Input<String>? version;

  /// Creates a new [LocationFsxOntapFileSystemProtocolSmbMountOptions].
  /// [version] Optional.
  LocationFsxOntapFileSystemProtocolSmbMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory LocationFsxOntapFileSystemProtocolSmbMountOptions.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolSmbMountOptions(
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

