// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource {
  /// KMS key required to decrypt the contents of the grammar, if any.
  final String kmsKeyArn;

  /// Name of the Amazon S3 bucket that contains the grammar source.
  final String s3BucketName;

  /// Path to the grammar in the Amazon S3 bucket.
  final String s3ObjectKey;

  /// Creates a new [V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource].
  /// [kmsKeyArn] KMS key required to decrypt the contents of the grammar, if any.
  /// [s3BucketName] Name of the Amazon S3 bucket that contains the grammar source.
  /// [s3ObjectKey] Path to the grammar in the Amazon S3 bucket.
  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource({
    required this.kmsKeyArn,
    required this.s3BucketName,
    required this.s3ObjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
      's3BucketName': s3BucketName,
      's3ObjectKey': s3ObjectKey,
    };
  }

  factory V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource(
      kmsKeyArn: map['kmsKeyArn'] as String,
      s3BucketName: map['s3BucketName'] as String,
      s3ObjectKey: map['s3ObjectKey'] as String,
    );
  }
}
