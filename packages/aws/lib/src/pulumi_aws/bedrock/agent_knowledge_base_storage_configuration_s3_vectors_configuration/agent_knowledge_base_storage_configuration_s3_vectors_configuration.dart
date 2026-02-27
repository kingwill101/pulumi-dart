// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration {
  /// ARN of the S3 Vectors index. Conflicts with `index_name` and `vector_bucket_arn`.
  final String? indexArn;

  /// Name of the S3 Vectors index. Must be specified with `vector_bucket_arn`. Conflicts with `index_arn`.
  final String? indexName;

  /// ARN of the S3 Vectors vector bucket. Must be specified with `index_name`. Conflicts with `index_arn`.
  final String? vectorBucketArn;

  AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration({
    this.indexArn,
    this.indexName,
    this.vectorBucketArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final indexArnValue = indexArn;
    if (indexArnValue != null) {
      map['indexArn'] = indexArnValue;
    }
    final indexNameValue = indexName;
    if (indexNameValue != null) {
      map['indexName'] = indexNameValue;
    }
    final vectorBucketArnValue = vectorBucketArn;
    if (vectorBucketArnValue != null) {
      map['vectorBucketArn'] = vectorBucketArnValue;
    }
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration(
      indexArn: map['indexArn'] == null ? null : map['indexArn'] as String,
      indexName: map['indexName'] == null ? null : map['indexName'] as String,
      vectorBucketArn: map['vectorBucketArn'] == null
          ? null
          : map['vectorBucketArn'] as String,
    );
  }
}
