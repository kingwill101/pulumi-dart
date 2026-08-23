// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationFsxOntapFileSystemProtocolNfsMountOptions {
  final pulumi.Input<String>? version;

  /// Creates a new [LocationFsxOntapFileSystemProtocolNfsMountOptions].
  /// [version] Optional.
  const LocationFsxOntapFileSystemProtocolNfsMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory LocationFsxOntapFileSystemProtocolNfsMountOptions.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolNfsMountOptions(
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
