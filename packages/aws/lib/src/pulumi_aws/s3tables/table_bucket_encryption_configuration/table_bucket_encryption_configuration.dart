// ignore_for_file: unused_element, unnecessary_cast

class TableBucketEncryptionConfiguration {
  /// The ARN of a KMS Key to be used with `aws:kms` <span pulumi-lang-nodejs="`sseAlgorithm`" pulumi-lang-dotnet="`SseAlgorithm`" pulumi-lang-go="`sseAlgorithm`" pulumi-lang-python="`sse_algorithm`" pulumi-lang-yaml="`sseAlgorithm`" pulumi-lang-java="`sseAlgorithm`">`sse_algorithm`</span>
  final String kmsKeyArn;

  /// One of `aws:kms` or `AES256`
  final String sseAlgorithm;

  TableBucketEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    map['sseAlgorithm'] = sseAlgorithm;
    return map;
  }

  factory TableBucketEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return TableBucketEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}
