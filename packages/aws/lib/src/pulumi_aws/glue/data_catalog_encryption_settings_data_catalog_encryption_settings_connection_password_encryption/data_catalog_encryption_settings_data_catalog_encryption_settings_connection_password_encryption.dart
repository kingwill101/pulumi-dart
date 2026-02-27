// ignore_for_file: unused_element, unnecessary_cast

class DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption {
  /// A KMS key ARN that is used to encrypt the connection password. If connection password protection is enabled, the caller of CreateConnection and UpdateConnection needs at least `kms:Encrypt` permission on the specified AWS KMS key, to encrypt passwords before storing them in the Data Catalog.
  final String? awsKmsKeyId;

  /// When set to `true`, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  final bool returnConnectionPasswordEncrypted;

  DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption({
    this.awsKmsKeyId,
    required this.returnConnectionPasswordEncrypted,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsKmsKeyIdValue = awsKmsKeyId;
    if (awsKmsKeyIdValue != null) {
      map['awsKmsKeyId'] = awsKmsKeyIdValue;
    }
    map['returnConnectionPasswordEncrypted'] =
        returnConnectionPasswordEncrypted;
    return map;
  }

  factory DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption.fromMap(
      Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption(
      awsKmsKeyId:
          map['awsKmsKeyId'] == null ? null : map['awsKmsKeyId'] as String,
      returnConnectionPasswordEncrypted:
          map['returnConnectionPasswordEncrypted'] as bool,
    );
  }
}
