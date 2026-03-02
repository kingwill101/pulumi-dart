// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The vault specific details required if using SQL authentication to connect to a target.
class VaultSecret {
  /// The Azure resource ID of the Key Vault instance storing database authentication secrets.
  final pulumi.Input<String>? akvResourceId;
  /// The path to the Key Vault secret storing the password for authentication to a target.
  final pulumi.Input<String>? akvTargetPassword;
  /// The path to the Key Vault secret storing the login name (aka user name, aka account name) for authentication to a target.
  final pulumi.Input<String>? akvTargetUser;

  /// Creates a new [VaultSecret].
  /// [akvResourceId] The Azure resource ID of the Key Vault instance storing database authentication secrets.
  /// [akvTargetPassword] The path to the Key Vault secret storing the password for authentication to a target.
  /// [akvTargetUser] The path to the Key Vault secret storing the login name (aka user name, aka account name) for authentication to a target.
  VaultSecret({
    this.akvResourceId,
    this.akvTargetPassword,
    this.akvTargetUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'akvResourceId': ?akvResourceId,
      'akvTargetPassword': ?akvTargetPassword,
      'akvTargetUser': ?akvTargetUser,
    };
  }

  factory VaultSecret.fromMap(Map<String, dynamic> map) {
    return VaultSecret(
      akvResourceId: map['akvResourceId'] == null ? null : (map['akvResourceId']! as String).input(),
      akvTargetPassword: map['akvTargetPassword'] == null ? null : (map['akvTargetPassword']! as String).input(),
      akvTargetUser: map['akvTargetUser'] == null ? null : (map['akvTargetUser']! as String).input(),
    );
  }
}

