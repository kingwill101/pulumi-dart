// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterControlPlaneDatabaseEncryption {
  /// The ARM ID of the Azure Key Vault key to encrypt / decrypt data. For example: `/subscriptions/<subscription-id>/resourceGroups/<resource-group-id>/providers/Microsoft.KeyVault/vaults/<key-vault-id>/keys/<key-name>` Encryption will always take the latest version of the key and hence specific version is not supported.
  final String keyId;

  AzureClusterControlPlaneDatabaseEncryption({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    return map;
  }

  factory AzureClusterControlPlaneDatabaseEncryption.fromMap(
      Map<String, dynamic> map) {
    return AzureClusterControlPlaneDatabaseEncryption(
      keyId: map['keyId'] as String,
    );
  }
}
