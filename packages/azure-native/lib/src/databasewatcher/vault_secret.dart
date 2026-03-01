// ignore_for_file: unused_element, unnecessary_cast


/// The vault specific details required if using SQL authentication to connect to a target.
class VaultSecret {
  /// The Azure resource ID of the Key Vault instance storing database authentication secrets.
  final String? akvResourceId;
  /// The path to the Key Vault secret storing the password for authentication to a target.
  final String? akvTargetPassword;
  /// The path to the Key Vault secret storing the login name (aka user name, aka account name) for authentication to a target.
  final String? akvTargetUser;

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
      akvResourceId: map['akvResourceId'] == null ? null : map['akvResourceId'] as String,
      akvTargetPassword: map['akvTargetPassword'] == null ? null : map['akvTargetPassword'] as String,
      akvTargetUser: map['akvTargetUser'] == null ? null : map['akvTargetUser'] as String,
    );
  }
}

