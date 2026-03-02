// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAgentActionGroupApiSchemaS3 {
  /// Name of the S3 bucket.
  final pulumi.Input<String>? s3BucketName;
  /// S3 object key containing the resource.
  final pulumi.Input<String>? s3ObjectKey;

  /// Creates a new [AgentAgentActionGroupApiSchemaS3].
  /// [s3BucketName] Name of the S3 bucket.
  /// [s3ObjectKey] S3 object key containing the resource.
  AgentAgentActionGroupApiSchemaS3({
    this.s3BucketName,
    this.s3ObjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketName': ?s3BucketName,
      's3ObjectKey': ?s3ObjectKey,
    };
  }

  factory AgentAgentActionGroupApiSchemaS3.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupApiSchemaS3(
      s3BucketName: map['s3BucketName'] == null ? null : (map['s3BucketName'] as String).input(),
      s3ObjectKey: map['s3ObjectKey'] == null ? null : (map['s3ObjectKey'] as String).input(),
    );
  }
}

