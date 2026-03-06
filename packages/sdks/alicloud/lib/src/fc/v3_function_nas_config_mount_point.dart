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
  const V3FunctionNasConfigMountPoint({
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
      enableTls: (() { final guardedValue = map['enableTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mountDir: (() { final guardedValue = map['mountDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverAddr: (() { final guardedValue = map['serverAddr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

