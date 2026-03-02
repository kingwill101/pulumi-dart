// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicesServiceNasConfigMountPoint {
  /// The local address where to mount your remote NAS directory.
  final pulumi.Input<String> mountDir;
  /// The address of the remote NAS directory.
  final pulumi.Input<String> serverAddr;

  /// Creates a new [GetServicesServiceNasConfigMountPoint].
  /// [mountDir] The local address where to mount your remote NAS directory.
  /// [serverAddr] The address of the remote NAS directory.
  GetServicesServiceNasConfigMountPoint({
    required this.mountDir,
    required this.serverAddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountDir': mountDir,
      'serverAddr': serverAddr,
    };
  }

  factory GetServicesServiceNasConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return GetServicesServiceNasConfigMountPoint(
      mountDir: (map['mountDir'] as String).input(),
      serverAddr: (map['serverAddr'] as String).input(),
    );
  }
}

