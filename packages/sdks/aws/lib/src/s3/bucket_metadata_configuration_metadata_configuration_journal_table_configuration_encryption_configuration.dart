// ignore_for_file: unused_element, unnecessary_cast


class BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration {
  /// KMS key ARN when `sse_algorithm` is `aws:kms`.
  final String? kmsKeyArn;
  /// Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  final String sseAlgorithm;

  /// Creates a new [BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration].
  /// [kmsKeyArn] KMS key ARN when `sse_algorithm` is `aws:kms`.
  /// [sseAlgorithm] Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}

