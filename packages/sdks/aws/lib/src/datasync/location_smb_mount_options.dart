// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationSmbMountOptions {
  /// SMB version that DataSync uses to mount the SMB share. Valid values: `AUTOMATIC`, `SMB1`, `SMB2_0`, `SMB2`, and `SMB3`. Default: `AUTOMATIC`.
  final pulumi.Input<String?>? version;

  /// Creates a new [LocationSmbMountOptions].
  /// [version] SMB version that DataSync uses to mount the SMB share. Valid values: `AUTOMATIC`, `SMB1`, `SMB2_0`, `SMB2`, and `SMB3`. Default: `AUTOMATIC`.
  const LocationSmbMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory LocationSmbMountOptions.fromMap(Map<String, dynamic> map) {
    return LocationSmbMountOptions(
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
