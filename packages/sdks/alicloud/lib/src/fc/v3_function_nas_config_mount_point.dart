// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionNasConfigMountPoint {
  /// Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  final pulumi.Input<bool>? enableTls;
  final pulumi.Input<String>? mountDir;
  /// NAS server address
  final pulumi.Input<String>? serverAddr;

  /// Creates a new [V3FunctionNasConfigMountPoint].
  /// [enableTls] Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  /// [mountDir] Optional.
  /// [serverAddr] NAS server address
  V3FunctionNasConfigMountPoint({
    this.enableTls,
    this.mountDir,
    this.serverAddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTls': ?enableTls,
      'mountDir': ?mountDir,
      'serverAddr': ?serverAddr,
    };
  }

  factory V3FunctionNasConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return V3FunctionNasConfigMountPoint(
      enableTls: map['enableTls'] == null ? null : (map['enableTls']! as bool).input(),
      mountDir: map['mountDir'] == null ? null : (map['mountDir']! as String).input(),
      serverAddr: map['serverAddr'] == null ? null : (map['serverAddr']! as String).input(),
    );
  }
}

