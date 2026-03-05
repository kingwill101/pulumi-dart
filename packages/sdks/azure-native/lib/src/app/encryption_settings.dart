// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
class EncryptionSettings {
  /// The secret name which is referenced for EncryptionKey.
  final pulumi.Input<String>? containerAppAuthEncryptionSecretName;
  /// The secret name which is referenced for SigningKey.
  final pulumi.Input<String>? containerAppAuthSigningSecretName;

  /// Creates a new [EncryptionSettings].
  /// [containerAppAuthEncryptionSecretName] The secret name which is referenced for EncryptionKey.
  /// [containerAppAuthSigningSecretName] The secret name which is referenced for SigningKey.
  EncryptionSettings({
    this.containerAppAuthEncryptionSecretName,
    this.containerAppAuthSigningSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppAuthEncryptionSecretName': ?containerAppAuthEncryptionSecretName,
      'containerAppAuthSigningSecretName': ?containerAppAuthSigningSecretName,
    };
  }

  factory EncryptionSettings.fromMap(Map<String, dynamic> map) {
    return EncryptionSettings(
      containerAppAuthEncryptionSecretName: (() { final guardedValue = map['containerAppAuthEncryptionSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppAuthSigningSecretName: (() { final guardedValue = map['containerAppAuthSigningSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

