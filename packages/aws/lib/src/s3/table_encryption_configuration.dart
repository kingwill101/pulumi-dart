// ignore_for_file: unused_element, unnecessary_cast

class TableEncryptionConfiguration {
  /// The ARN of a KMS Key to be used with `aws:kms` `sse_algorithm`
  final String kmsKeyArn;

  /// One of `aws:kms` or `AES256`
  final String sseAlgorithm;

  /// Creates a new [TableEncryptionConfiguration].
  /// [kmsKeyArn] The ARN of a KMS Key to be used with `aws:kms` `sse_algorithm`
  /// [sseAlgorithm] One of `aws:kms` or `AES256`
  TableEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    map['sseAlgorithm'] = sseAlgorithm;
    return map;
  }

  factory TableEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return TableEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}
