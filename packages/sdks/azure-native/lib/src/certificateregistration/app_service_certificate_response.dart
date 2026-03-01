// ignore_for_file: unused_element, unnecessary_cast


/// Key Vault container for a certificate that is purchased through Azure.
class AppServiceCertificateResponse {
  /// Key Vault resource Id.
  final String? keyVaultId;
  /// Key Vault secret name.
  final String? keyVaultSecretName;
  /// Status of the Key Vault secret.
  final String provisioningState;

  /// Creates a new [AppServiceCertificateResponse].
  /// [keyVaultId] Key Vault resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  /// [provisioningState] Status of the Key Vault secret.
  AppServiceCertificateResponse({
    this.keyVaultId,
    this.keyVaultSecretName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'provisioningState': provisioningState,
    };
  }

  factory AppServiceCertificateResponse.fromMap(Map<String, dynamic> map) {
    return AppServiceCertificateResponse(
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : map['keyVaultSecretName'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

