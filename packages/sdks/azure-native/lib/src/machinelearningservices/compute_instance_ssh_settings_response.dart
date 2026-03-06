// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies policy and settings for SSH access.
class ComputeInstanceSshSettingsResponse {
  /// Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  final pulumi.Input<String>? adminPublicKey;
  /// Describes the admin user name.
  final pulumi.Input<String> adminUserName;
  /// Describes the port for connecting through SSH.
  final pulumi.Input<int> sshPort;
  /// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on this instance. Enabled - Indicates that the public ssh port is open and accessible according to the VNet/subnet policy if applicable.
  final pulumi.Input<String>? sshPublicAccess;

  /// Creates a new [ComputeInstanceSshSettingsResponse].
  /// [adminPublicKey] Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  /// [adminUserName] Describes the admin user name.
  /// [sshPort] Describes the port for connecting through SSH.
  /// [sshPublicAccess] State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on this instance. Enabled - Indicates that the public ssh port is open and accessible according to the VNet/subnet policy if applicable.
  const ComputeInstanceSshSettingsResponse({
    this.adminPublicKey,
    required this.adminUserName,
    required this.sshPort,
    this.sshPublicAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPublicKey': ?adminPublicKey,
      'adminUserName': adminUserName,
      'sshPort': sshPort,
      'sshPublicAccess': ?sshPublicAccess,
    };
  }

  factory ComputeInstanceSshSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceSshSettingsResponse(
      adminPublicKey: (() { final guardedValue = map['adminPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUserName: pulumi.Input.fromValue(map['adminUserName'] as String),
      sshPort: pulumi.Input.fromValue(map['sshPort'] as int),
      sshPublicAccess: (() { final guardedValue = map['sshPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

