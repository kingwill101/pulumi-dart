// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest {
  /// The encryption-at-rest mode for encrypting Data Catalog data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-KMS-WITH-SERVICE-ROLE`.
  final pulumi.Input<String> catalogEncryptionMode;
  /// The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  final pulumi.Input<String>? catalogEncryptionServiceRole;
  /// The ARN of the AWS KMS key to use for encryption at rest.
  final pulumi.Input<String>? sseAwsKmsKeyId;

  /// Creates a new [DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest].
  /// [catalogEncryptionMode] The encryption-at-rest mode for encrypting Data Catalog data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-KMS-WITH-SERVICE-ROLE`.
  /// [catalogEncryptionServiceRole] The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  /// [sseAwsKmsKeyId] The ARN of the AWS KMS key to use for encryption at rest.
  const DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest({
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
      catalogEncryptionMode: pulumi.Input.fromValue(map['catalogEncryptionMode'] as String),
      catalogEncryptionServiceRole: (() { final guardedValue = map['catalogEncryptionServiceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseAwsKmsKeyId: (() { final guardedValue = map['sseAwsKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
