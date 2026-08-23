// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration {
  /// ARN of the S3 Vectors index. Conflicts with `indexName` and `vectorBucketArn`.
  final pulumi.Input<String>? indexArn;
  /// Name of the S3 Vectors index. Must be specified with `vectorBucketArn`. Conflicts with `indexArn`.
  final pulumi.Input<String>? indexName;
  /// ARN of the S3 Vectors vector bucket. Must be specified with `indexName`. Conflicts with `indexArn`.
  final pulumi.Input<String>? vectorBucketArn;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration].
  /// [indexArn] ARN of the S3 Vectors index. Conflicts with `indexName` and `vectorBucketArn`.
  /// [indexName] Name of the S3 Vectors index. Must be specified with `vectorBucketArn`. Conflicts with `indexArn`.
  /// [vectorBucketArn] ARN of the S3 Vectors vector bucket. Must be specified with `indexName`. Conflicts with `indexArn`.
  const AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration({
    this.indexArn,
    this.indexName,
    this.vectorBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexArn': ?indexArn,
      'indexName': ?indexName,
      'vectorBucketArn': ?vectorBucketArn,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration(
      indexArn: (() { final guardedValue = map['indexArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorBucketArn: (() { final guardedValue = map['vectorBucketArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
