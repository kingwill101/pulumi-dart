// ignore_for_file: unused_element, unnecessary_cast

class GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest {
  /// The encryption-at-rest mode for encrypting Data Catalog data.
  final String catalogEncryptionMode;

  /// The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  final String catalogEncryptionServiceRole;

  /// ARN of the AWS KMS key to use for encryption at rest.
  final String sseAwsKmsKeyId;

  /// Creates a new [GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest].
  /// [catalogEncryptionMode] The encryption-at-rest mode for encrypting Data Catalog data.
  /// [catalogEncryptionServiceRole] The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  /// [sseAwsKmsKeyId] ARN of the AWS KMS key to use for encryption at rest.
  GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest({
    required this.catalogEncryptionMode,
    required this.catalogEncryptionServiceRole,
    required this.sseAwsKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogEncryptionMode': catalogEncryptionMode,
      'catalogEncryptionServiceRole': catalogEncryptionServiceRole,
      'sseAwsKmsKeyId': sseAwsKmsKeyId,
    };
  }

  factory GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest(
      catalogEncryptionMode: map['catalogEncryptionMode'] as String,
      catalogEncryptionServiceRole:
          map['catalogEncryptionServiceRole'] as String,
      sseAwsKmsKeyId: map['sseAwsKmsKeyId'] as String,
    );
  }
}
