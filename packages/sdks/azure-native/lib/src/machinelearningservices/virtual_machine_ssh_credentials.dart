// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Admin credentials for virtual machine
class VirtualMachineSshCredentials {
  /// Password of admin account
  final pulumi.Input<String>? password;
  /// Private key data
  final pulumi.Input<String>? privateKeyData;
  /// Public key data
  final pulumi.Input<String>? publicKeyData;
  /// Username of admin account
  final pulumi.Input<String>? username;

  /// Creates a new [VirtualMachineSshCredentials].
  /// [password] Password of admin account
  /// [privateKeyData] Private key data
  /// [publicKeyData] Public key data
  /// [username] Username of admin account
  const VirtualMachineSshCredentials({
    this.password,
    this.privateKeyData,
    this.publicKeyData,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'privateKeyData': ?privateKeyData,
      'publicKeyData': ?publicKeyData,
      'username': ?username,
    };
  }

  factory VirtualMachineSshCredentials.fromMap(Map<String, dynamic> map) {
    return VirtualMachineSshCredentials(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyData: (() { final guardedValue = map['privateKeyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyData: (() { final guardedValue = map['publicKeyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
