// ignore_for_file: unused_element, unnecessary_cast

class BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration {
  /// KMS key ARN when `sse_algorithm` is `aws:kms`.
  final String? kmsKeyArn;

  /// Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  final String sseAlgorithm;

  BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    map['sseAlgorithm'] = sseAlgorithm;
    return map;
  }

  factory BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}
