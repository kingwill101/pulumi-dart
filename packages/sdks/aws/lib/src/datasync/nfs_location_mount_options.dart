// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NfsLocationMountOptions {
  /// NFS version that DataSync uses to mount the NFS share. Valid values: `AUTOMATIC`, `NFS3`, `NFS4_0`, `NFS4_1`, and `NFS4_2`. `NFS4_2` requires an Enhanced mode task. Default: `AUTOMATIC`.
  final pulumi.Input<String?>? version;

  /// Creates a new [NfsLocationMountOptions].
  /// [version] NFS version that DataSync uses to mount the NFS share. Valid values: `AUTOMATIC`, `NFS3`, `NFS4_0`, `NFS4_1`, and `NFS4_2`. `NFS4_2` requires an Enhanced mode task. Default: `AUTOMATIC`.
  const NfsLocationMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory NfsLocationMountOptions.fromMap(Map<String, dynamic> map) {
    return NfsLocationMountOptions(
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
