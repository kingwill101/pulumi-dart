// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyVault secret object properties
class KeyVaultSecretObjectResponse {
  /// KeyVault secret name.
  final pulumi.Input<String> name;
  /// KeyVault secret version.
  final pulumi.Input<String>? version;

  /// Creates a new [KeyVaultSecretObjectResponse].
  /// [name] KeyVault secret name.
  /// [version] KeyVault secret version.
  KeyVaultSecretObjectResponse({
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': ?version,
    };
  }

  factory KeyVaultSecretObjectResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretObjectResponse(
      name: (map['name'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

