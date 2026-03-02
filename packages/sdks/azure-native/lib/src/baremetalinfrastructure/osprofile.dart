// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the operating system settings for the Azure Bare Metal instance.
class OSProfile {
  /// Specifies the host OS name of the Azure Bare Metal instance.
  final pulumi.Input<String>? computerName;
  /// This property allows you to specify the type of the OS.
  final pulumi.Input<String>? osType;
  /// Specifies the SSH public key used to access the operating system.
  final pulumi.Input<String>? sshPublicKey;
  /// Specifies version of operating system.
  final pulumi.Input<String>? version;

  /// Creates a new [OSProfile].
  /// [computerName] Specifies the host OS name of the Azure Bare Metal instance.
  /// [osType] This property allows you to specify the type of the OS.
  /// [sshPublicKey] Specifies the SSH public key used to access the operating system.
  /// [version] Specifies version of operating system.
  OSProfile({
    this.computerName,
    this.osType,
    this.sshPublicKey,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': ?computerName,
      'osType': ?osType,
      'sshPublicKey': ?sshPublicKey,
      'version': ?version,
    };
  }

  factory OSProfile.fromMap(Map<String, dynamic> map) {
    return OSProfile(
      computerName: map['computerName'] == null ? null : (map['computerName']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      sshPublicKey: map['sshPublicKey'] == null ? null : (map['sshPublicKey']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

