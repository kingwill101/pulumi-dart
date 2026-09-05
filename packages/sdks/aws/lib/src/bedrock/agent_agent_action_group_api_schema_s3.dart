// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAgentActionGroupApiSchemaS3 {
  /// Name of the S3 bucket.
  final pulumi.Input<String?>? s3BucketName;
  /// S3 object key containing the resource.
  final pulumi.Input<String?>? s3ObjectKey;

  /// Creates a new [AgentAgentActionGroupApiSchemaS3].
  /// [s3BucketName] Name of the S3 bucket.
  /// [s3ObjectKey] S3 object key containing the resource.
  const AgentAgentActionGroupApiSchemaS3({
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
      s3BucketName: (() { final guardedValue = map['s3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3ObjectKey: (() { final guardedValue = map['s3ObjectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
