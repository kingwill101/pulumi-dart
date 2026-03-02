// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key Vault container for a certificate that is purchased through Azure.
class AppServiceCertificate {
  /// Key Vault resource Id.
  final pulumi.Input<String>? keyVaultId;
  /// Key Vault secret name.
  final pulumi.Input<String>? keyVaultSecretName;

  /// Creates a new [AppServiceCertificate].
  /// [keyVaultId] Key Vault resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  AppServiceCertificate({
    this.keyVaultId,
    this.keyVaultSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
    };
  }

  factory AppServiceCertificate.fromMap(Map<String, dynamic> map) {
    return AppServiceCertificate(
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId'] as String).input(),
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : (map['keyVaultSecretName'] as String).input(),
    );
  }
}

