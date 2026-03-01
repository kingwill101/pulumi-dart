// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores the Service Principal key.
  final String secretName;

  /// Creates a new [LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores the Service Principal key.
  LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

