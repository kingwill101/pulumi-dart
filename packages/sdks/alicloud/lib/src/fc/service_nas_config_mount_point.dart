// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNasConfigMountPoint {
  /// The local address where to mount your remote NAS directory.
  final pulumi.Input<String> mountDir;

  /// The address of the remote NAS directory.
  final pulumi.Input<String> serverAddr;

  /// Creates a new [ServiceNasConfigMountPoint].
  /// [mountDir] The local address where to mount your remote NAS directory.
  /// [serverAddr] The address of the remote NAS directory.
  ServiceNasConfigMountPoint({
    required this.mountDir,
    required this.serverAddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mountDir': mountDir, 'serverAddr': serverAddr};
  }

  factory ServiceNasConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return ServiceNasConfigMountPoint(
      mountDir: pulumi.Input.fromValue(map['mountDir'] as String),
      serverAddr: pulumi.Input.fromValue(map['serverAddr'] as String),
    );
  }
}
