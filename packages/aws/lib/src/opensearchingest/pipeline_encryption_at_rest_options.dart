// ignore_for_file: unused_element, unnecessary_cast

class PipelineEncryptionAtRestOptions {
  /// The ARN of the KMS key used to encrypt data-at-rest in OpenSearch Ingestion. By default, data is encrypted using an AWS owned key.
  final String kmsKeyArn;

  /// Creates a new [PipelineEncryptionAtRestOptions].
  /// [kmsKeyArn] The ARN of the KMS key used to encrypt data-at-rest in OpenSearch Ingestion. By default, data is encrypted using an AWS owned key.
  PipelineEncryptionAtRestOptions({required this.kmsKeyArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyArn': kmsKeyArn};
  }

  factory PipelineEncryptionAtRestOptions.fromMap(Map<String, dynamic> map) {
    return PipelineEncryptionAtRestOptions(
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}
