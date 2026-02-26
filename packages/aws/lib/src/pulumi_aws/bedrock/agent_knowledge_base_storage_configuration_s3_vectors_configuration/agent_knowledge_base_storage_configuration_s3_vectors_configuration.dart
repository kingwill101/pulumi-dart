// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration {
  /// ARN of the S3 Vectors index. Conflicts with <span pulumi-lang-nodejs="`indexName`" pulumi-lang-dotnet="`IndexName`" pulumi-lang-go="`indexName`" pulumi-lang-python="`index_name`" pulumi-lang-yaml="`indexName`" pulumi-lang-java="`indexName`">`index_name`</span> and <span pulumi-lang-nodejs="`vectorBucketArn`" pulumi-lang-dotnet="`VectorBucketArn`" pulumi-lang-go="`vectorBucketArn`" pulumi-lang-python="`vector_bucket_arn`" pulumi-lang-yaml="`vectorBucketArn`" pulumi-lang-java="`vectorBucketArn`">`vector_bucket_arn`</span>.
  final String? indexArn;

  /// Name of the S3 Vectors index. Must be specified with <span pulumi-lang-nodejs="`vectorBucketArn`" pulumi-lang-dotnet="`VectorBucketArn`" pulumi-lang-go="`vectorBucketArn`" pulumi-lang-python="`vector_bucket_arn`" pulumi-lang-yaml="`vectorBucketArn`" pulumi-lang-java="`vectorBucketArn`">`vector_bucket_arn`</span>. Conflicts with <span pulumi-lang-nodejs="`indexArn`" pulumi-lang-dotnet="`IndexArn`" pulumi-lang-go="`indexArn`" pulumi-lang-python="`index_arn`" pulumi-lang-yaml="`indexArn`" pulumi-lang-java="`indexArn`">`index_arn`</span>.
  final String? indexName;

  /// ARN of the S3 Vectors vector bucket. Must be specified with <span pulumi-lang-nodejs="`indexName`" pulumi-lang-dotnet="`IndexName`" pulumi-lang-go="`indexName`" pulumi-lang-python="`index_name`" pulumi-lang-yaml="`indexName`" pulumi-lang-java="`indexName`">`index_name`</span>. Conflicts with <span pulumi-lang-nodejs="`indexArn`" pulumi-lang-dotnet="`IndexArn`" pulumi-lang-go="`indexArn`" pulumi-lang-python="`index_arn`" pulumi-lang-yaml="`indexArn`" pulumi-lang-java="`indexArn`">`index_arn`</span>.
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
