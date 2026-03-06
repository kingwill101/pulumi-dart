// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest {
  /// The encryption-at-rest mode for encrypting Data Catalog data.
  final pulumi.Input<String> catalogEncryptionMode;
  /// The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  final pulumi.Input<String> catalogEncryptionServiceRole;
  /// ARN of the AWS KMS key to use for encryption at rest.
  final pulumi.Input<String> sseAwsKmsKeyId;

  /// Creates a new [GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest].
  /// [catalogEncryptionMode] The encryption-at-rest mode for encrypting Data Catalog data.
  /// [catalogEncryptionServiceRole] The ARN of the AWS IAM role used for accessing encrypted Data Catalog data.
  /// [sseAwsKmsKeyId] ARN of the AWS KMS key to use for encryption at rest.
  const GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest({
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

  factory GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest.fromMap(Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest(
      catalogEncryptionMode: pulumi.Input.fromValue(map['catalogEncryptionMode'] as String),
      catalogEncryptionServiceRole: pulumi.Input.fromValue(map['catalogEncryptionServiceRole'] as String),
      sseAwsKmsKeyId: pulumi.Input.fromValue(map['sseAwsKmsKeyId'] as String),
    );
  }
}

