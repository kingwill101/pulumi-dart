// ignore_for_file: unused_element, unnecessary_cast

class BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration {
  /// KMS key ARN when <span pulumi-lang-nodejs="`sseAlgorithm`" pulumi-lang-dotnet="`SseAlgorithm`" pulumi-lang-go="`sseAlgorithm`" pulumi-lang-python="`sse_algorithm`" pulumi-lang-yaml="`sseAlgorithm`" pulumi-lang-java="`sseAlgorithm`">`sse_algorithm`</span> is `aws:kms`.
  final String? kmsKeyArn;

  /// Encryption type for the metadata table. Valid values: `aws:kms`, `AES256`.
  final String sseAlgorithm;

  BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration({
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

  factory BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}
