// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationFsxOntapFileSystemProtocolSmbMountOptions {
  final pulumi.Input<String>? version;

  /// Creates a new [LocationFsxOntapFileSystemProtocolSmbMountOptions].
  /// [version] Optional.
  LocationFsxOntapFileSystemProtocolSmbMountOptions({this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'version': ?version};
  }

  factory LocationFsxOntapFileSystemProtocolSmbMountOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return LocationFsxOntapFileSystemProtocolSmbMountOptions(
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
