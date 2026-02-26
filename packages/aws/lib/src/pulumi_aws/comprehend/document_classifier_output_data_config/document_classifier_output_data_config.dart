// ignore_for_file: unused_element, unnecessary_cast

class DocumentClassifierOutputDataConfig {
  /// KMS Key used to encrypt the output documents.
  /// Can be a KMS Key ID, a KMS Key ARN, a KMS Alias name, or a KMS Alias ARN.
  final String? kmsKeyId;

  /// Full path for the output documents.
  final String? outputS3Uri;

  /// Destination path for the output documents.
  /// The full path to the output file will be returned in <span pulumi-lang-nodejs="`outputS3Uri`" pulumi-lang-dotnet="`OutputS3Uri`" pulumi-lang-go="`outputS3Uri`" pulumi-lang-python="`output_s3_uri`" pulumi-lang-yaml="`outputS3Uri`" pulumi-lang-java="`outputS3Uri`">`output_s3_uri`</span>.
  final String s3Uri;

  DocumentClassifierOutputDataConfig({
    this.kmsKeyId,
    this.outputS3Uri,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final outputS3UriValue = outputS3Uri;
    if (outputS3UriValue != null) {
      map['outputS3Uri'] = outputS3UriValue;
    }
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory DocumentClassifierOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierOutputDataConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      outputS3Uri:
          map['outputS3Uri'] == null ? null : map['outputS3Uri'] as String,
      s3Uri: map['s3Uri'] as String,
    );
  }
}
