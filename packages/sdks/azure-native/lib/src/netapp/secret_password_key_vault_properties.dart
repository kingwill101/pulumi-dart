// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of key vault to get the secrets for password.
class SecretPasswordKeyVaultProperties {
  /// The Uri of KeyVault.
  final pulumi.Input<String> keyVaultUri;
  /// The name of KeyVault password secret.
  final pulumi.Input<String> secretName;

  /// Creates a new [SecretPasswordKeyVaultProperties].
  /// [keyVaultUri] The Uri of KeyVault.
  /// [secretName] The name of KeyVault password secret.
  SecretPasswordKeyVaultProperties({
    required this.keyVaultUri,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUri': keyVaultUri,
      'secretName': secretName,
    };
  }

  factory SecretPasswordKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return SecretPasswordKeyVaultProperties(
      keyVaultUri: (map['keyVaultUri'] as String).input(),
      secretName: (map['secretName'] as String).input(),
    );
  }
}

