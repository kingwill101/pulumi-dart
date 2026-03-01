// ignore_for_file: unused_element, unnecessary_cast

class DocumentClassifierOutputDataConfig {
  /// KMS Key used to encrypt the output documents.
  /// Can be a KMS Key ID, a KMS Key ARN, a KMS Alias name, or a KMS Alias ARN.
  final String? kmsKeyId;

  /// Full path for the output documents.
  final String? outputS3Uri;

  /// Destination path for the output documents.
  /// The full path to the output file will be returned in `output_s3_uri`.
  final String s3Uri;

  /// Creates a new [DocumentClassifierOutputDataConfig].
  /// [kmsKeyId] KMS Key used to encrypt the output documents.
  /// [outputS3Uri] Full path for the output documents.
  /// [s3Uri] Destination path for the output documents.
  DocumentClassifierOutputDataConfig({
    this.kmsKeyId,
    this.outputS3Uri,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'outputS3Uri': ?outputS3Uri,
      's3Uri': s3Uri,
    };
  }

  factory DocumentClassifierOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierOutputDataConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      outputS3Uri: map['outputS3Uri'] == null
          ? null
          : map['outputS3Uri'] as String,
      s3Uri: map['s3Uri'] as String,
    );
  }
}
