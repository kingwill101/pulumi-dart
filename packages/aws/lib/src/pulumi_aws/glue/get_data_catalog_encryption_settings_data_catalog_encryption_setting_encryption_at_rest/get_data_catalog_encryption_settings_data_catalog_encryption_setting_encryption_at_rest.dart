// ignore_for_file: unused_element, unnecessary_cast

class GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest {
  /// The encryption-at-rest mode for encrypting Data Catalog data.
  final String catalogEncryptionMode;

  /// The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  final String catalogEncryptionServiceRole;

  /// ARN of the AWS KMS key to use for encryption at rest.
  final String sseAwsKmsKeyId;

  GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest({
    required this.catalogEncryptionMode,
    required this.catalogEncryptionServiceRole,
    required this.sseAwsKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogEncryptionMode'] = catalogEncryptionMode;
    map['catalogEncryptionServiceRole'] = catalogEncryptionServiceRole;
    map['sseAwsKmsKeyId'] = sseAwsKmsKeyId;
    return map;
  }

  factory GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest.fromMap(
      Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest(
      catalogEncryptionMode: map['catalogEncryptionMode'] as String,
      catalogEncryptionServiceRole:
          map['catalogEncryptionServiceRole'] as String,
      sseAwsKmsKeyId: map['sseAwsKmsKeyId'] as String,
    );
  }
}
