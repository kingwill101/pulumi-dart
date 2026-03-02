// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionNasConfigMountPoint {
  /// Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  final pulumi.Input<bool> enableTls;
  /// Mount Directory.
  final pulumi.Input<String> mountDir;
  /// NAS server address.
  final pulumi.Input<String> serverAddr;

  /// Creates a new [GetV3FunctionsFunctionNasConfigMountPoint].
  /// [enableTls] Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  /// [mountDir] Mount Directory.
  /// [serverAddr] NAS server address.
  GetV3FunctionsFunctionNasConfigMountPoint({
    required this.enableTls,
    required this.mountDir,
    required this.serverAddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTls': enableTls,
      'mountDir': mountDir,
      'serverAddr': serverAddr,
    };
  }

  factory GetV3FunctionsFunctionNasConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionNasConfigMountPoint(
      enableTls: (map['enableTls'] as bool).input(),
      mountDir: (map['mountDir'] as String).input(),
      serverAddr: (map['serverAddr'] as String).input(),
    );
  }
}

