// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateOrderCertificate {
  /// The name of the App Service Certificate.
  final String certificateName;
  /// Key Vault resource Id.
  final String keyVaultId;
  /// Key Vault secret name.
  final String keyVaultSecretName;
  /// Status of the Key Vault secret.
  final String provisioningState;

  /// Creates a new [GetCertificateOrderCertificate].
  /// [certificateName] The name of the App Service Certificate.
  /// [keyVaultId] Key Vault resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  /// [provisioningState] Status of the Key Vault secret.
  GetCertificateOrderCertificate({
    required this.certificateName,
    required this.keyVaultId,
    required this.keyVaultSecretName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'keyVaultId': keyVaultId,
      'keyVaultSecretName': keyVaultSecretName,
      'provisioningState': provisioningState,
    };
  }

  factory GetCertificateOrderCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificateOrderCertificate(
      certificateName: map['certificateName'] as String,
      keyVaultId: map['keyVaultId'] as String,
      keyVaultSecretName: map['keyVaultSecretName'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

