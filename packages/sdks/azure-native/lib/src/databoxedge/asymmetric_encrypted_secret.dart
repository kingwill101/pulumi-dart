// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent the secrets intended for encryption with asymmetric key pair.
class AsymmetricEncryptedSecret {
  /// The algorithm used to encrypt "Value".
  final pulumi.Input<String> encryptionAlgorithm;
  /// Thumbprint certificate used to encrypt \"Value\". If the value is unencrypted, it will be null.
  final pulumi.Input<String>? encryptionCertThumbprint;
  /// The value of the secret.
  final pulumi.Input<String> value;

  /// Creates a new [AsymmetricEncryptedSecret].
  /// [encryptionAlgorithm] The algorithm used to encrypt "Value".
  /// [encryptionCertThumbprint] Thumbprint certificate used to encrypt \"Value\". If the value is unencrypted, it will be null.
  /// [value] The value of the secret.
  AsymmetricEncryptedSecret({
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

  factory AsymmetricEncryptedSecret.fromMap(Map<String, dynamic> map) {
    return AsymmetricEncryptedSecret(
      encryptionAlgorithm: (map['encryptionAlgorithm'] as String).input(),
      encryptionCertThumbprint: map['encryptionCertThumbprint'] == null ? null : (map['encryptionCertThumbprint'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

