// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for a secret stored in a Key Vault.
class SecretKeyVaultProperties {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final pulumi.Input<String>? identity;

  /// URL pointing to the Azure Key Vault secret.
  final pulumi.Input<String>? keyVaultUrl;

  /// Creates a new [SecretKeyVaultProperties].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] URL pointing to the Azure Key Vault secret.
  SecretKeyVaultProperties({this.identity, this.keyVaultUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultUrl': ?keyVaultUrl,
    };
  }

  factory SecretKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return SecretKeyVaultProperties(
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
    );
  }
}
