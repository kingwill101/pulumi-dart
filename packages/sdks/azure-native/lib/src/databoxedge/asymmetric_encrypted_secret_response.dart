// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent the secrets intended for encryption with asymmetric key pair.
class AsymmetricEncryptedSecretResponse {
  /// The algorithm used to encrypt "Value".
  final pulumi.Input<String> encryptionAlgorithm;
  /// Thumbprint certificate used to encrypt \"Value\". If the value is unencrypted, it will be null.
  final pulumi.Input<String>? encryptionCertThumbprint;
  /// The value of the secret.
  final pulumi.Input<String> value;

  /// Creates a new [AsymmetricEncryptedSecretResponse].
  /// [encryptionAlgorithm] The algorithm used to encrypt "Value".
  /// [encryptionCertThumbprint] Thumbprint certificate used to encrypt \"Value\". If the value is unencrypted, it will be null.
  /// [value] The value of the secret.
  AsymmetricEncryptedSecretResponse({
    required this.encryptionAlgorithm,
    this.encryptionCertThumbprint,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': encryptionAlgorithm,
      'encryptionCertThumbprint': ?encryptionCertThumbprint,
      'value': value,
    };
  }

  factory AsymmetricEncryptedSecretResponse.fromMap(Map<String, dynamic> map) {
    return AsymmetricEncryptedSecretResponse(
      encryptionAlgorithm: pulumi.Input.fromValue(map['encryptionAlgorithm'] as String),
      encryptionCertThumbprint: (() { final guardedValue = map['encryptionCertThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

