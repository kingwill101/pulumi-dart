// ignore_for_file: unused_element, unnecessary_cast


class GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption {
  /// KMS key ARN that is used to encrypt the connection password.
  final String awsKmsKeyId;
  /// When set to `true`, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  final bool returnConnectionPasswordEncrypted;

  /// Creates a new [GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption].
  /// [awsKmsKeyId] KMS key ARN that is used to encrypt the connection password.
  /// [returnConnectionPasswordEncrypted] When set to `true`, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption({
    required this.awsKmsKeyId,
    required this.returnConnectionPasswordEncrypted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsKmsKeyId': awsKmsKeyId,
      'returnConnectionPasswordEncrypted': returnConnectionPasswordEncrypted,
    };
  }

  factory GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption.fromMap(Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption(
      awsKmsKeyId: map['awsKmsKeyId'] as String,
      returnConnectionPasswordEncrypted: map['returnConnectionPasswordEncrypted'] as bool,
    );
  }
}

