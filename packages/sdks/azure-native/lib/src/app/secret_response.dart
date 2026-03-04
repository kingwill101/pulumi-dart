// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret definition.
class SecretResponse {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final pulumi.Input<String>? identity;

  /// Azure Key Vault URL pointing to the secret referenced by the container app.
  final pulumi.Input<String>? keyVaultUrl;

  /// Secret Name.
  final pulumi.Input<String>? name;

  /// Creates a new [SecretResponse].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] Azure Key Vault URL pointing to the secret referenced by the container app.
  /// [name] Secret Name.
  SecretResponse({this.identity, this.keyVaultUrl, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultUrl': ?keyVaultUrl,
      'name': ?name,
    };
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultUrl: (() {
        final guardedValue = map['keyVaultUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
