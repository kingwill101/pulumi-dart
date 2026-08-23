// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration {
  /// KMS key ARN when `sseAlgorithm` is `aws:kms`.
  final pulumi.Input<String>? kmsKeyArn;
  /// Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration].
  /// [kmsKeyArn] KMS key ARN when `sseAlgorithm` is `aws:kms`.
  /// [sseAlgorithm] Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  const BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration(
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseAlgorithm: pulumi.Input.fromValue(map['sseAlgorithm'] as String),
    );
  }
}
