// ignore_for_file: unused_element, unnecessary_cast


class DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest {
  /// The encryption-at-rest mode for encrypting Data Catalog data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-KMS-WITH-SERVICE-ROLE`.
  final String catalogEncryptionMode;
  /// The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  final String? catalogEncryptionServiceRole;
  /// The ARN of the AWS KMS key to use for encryption at rest.
  final String? sseAwsKmsKeyId;

  /// Creates a new [DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest].
  /// [catalogEncryptionMode] The encryption-at-rest mode for encrypting Data Catalog data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-KMS-WITH-SERVICE-ROLE`.
  /// [catalogEncryptionServiceRole] The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  /// [sseAwsKmsKeyId] The ARN of the AWS KMS key to use for encryption at rest.
  DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest({
    required this.catalogEncryptionMode,
    this.catalogEncryptionServiceRole,
    this.sseAwsKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogEncryptionMode': catalogEncryptionMode,
      'catalogEncryptionServiceRole': ?catalogEncryptionServiceRole,
      'sseAwsKmsKeyId': ?sseAwsKmsKeyId,
    };
  }

  factory DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest.fromMap(Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest(
      catalogEncryptionMode: map['catalogEncryptionMode'] as String,
      catalogEncryptionServiceRole: map['catalogEncryptionServiceRole'] == null ? null : map['catalogEncryptionServiceRole'] as String,
      sseAwsKmsKeyId: map['sseAwsKmsKeyId'] == null ? null : map['sseAwsKmsKeyId'] as String,
    );
  }
}

