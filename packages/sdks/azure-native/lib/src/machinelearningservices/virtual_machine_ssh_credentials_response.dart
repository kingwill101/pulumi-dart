// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Admin credentials for virtual machine
class VirtualMachineSshCredentialsResponse {
  /// Password of admin account
  final pulumi.Input<String>? password;
  /// Private key data
  final pulumi.Input<String>? privateKeyData;
  /// Public key data
  final pulumi.Input<String>? publicKeyData;
  /// Username of admin account
  final pulumi.Input<String>? username;

  /// Creates a new [VirtualMachineSshCredentialsResponse].
  /// [password] Password of admin account
  /// [privateKeyData] Private key data
  /// [publicKeyData] Public key data
  /// [username] Username of admin account
  VirtualMachineSshCredentialsResponse({
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

  factory VirtualMachineSshCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineSshCredentialsResponse(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      privateKeyData: map['privateKeyData'] == null ? null : (map['privateKeyData'] as String).input(),
      publicKeyData: map['publicKeyData'] == null ? null : (map['publicKeyData'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

