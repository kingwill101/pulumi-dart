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
  KeyVaultSecretObjectResponse({required this.name, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'version': ?version};
  }

  factory KeyVaultSecretObjectResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretObjectResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
