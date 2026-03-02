// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration {
  /// KMS key ARN when `sse_algorithm` is `aws:kms`.
  final pulumi.Input<String>? kmsKeyArn;
  /// Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration].
  /// [kmsKeyArn] KMS key ARN when `sse_algorithm` is `aws:kms`.
  /// [sseAlgorithm] Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration({
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
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      sseAlgorithm: (map['sseAlgorithm'] as String).input(),
    );
  }
}

