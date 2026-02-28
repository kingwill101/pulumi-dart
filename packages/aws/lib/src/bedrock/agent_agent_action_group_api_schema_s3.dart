// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentActionGroupApiSchemaS3 {
  /// Name of the S3 bucket.
  final String? s3BucketName;

  /// S3 object key containing the resource.
  final String? s3ObjectKey;

  /// Creates a new [AgentAgentActionGroupApiSchemaS3].
  /// [s3BucketName] Name of the S3 bucket.
  /// [s3ObjectKey] S3 object key containing the resource.
  AgentAgentActionGroupApiSchemaS3({
    this.s3BucketName,
    this.s3ObjectKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3BucketNameValue = s3BucketName;
    if (s3BucketNameValue != null) {
      map['s3BucketName'] = s3BucketNameValue;
    }
    final s3ObjectKeyValue = s3ObjectKey;
    if (s3ObjectKeyValue != null) {
      map['s3ObjectKey'] = s3ObjectKeyValue;
    }
    return map;
  }

  factory AgentAgentActionGroupApiSchemaS3.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupApiSchemaS3(
      s3BucketName:
          map['s3BucketName'] == null ? null : map['s3BucketName'] as String,
      s3ObjectKey:
          map['s3ObjectKey'] == null ? null : map['s3ObjectKey'] as String,
    );
  }
}
