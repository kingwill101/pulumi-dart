// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3 {
  /// Account ID of the S3 bucket owner.
  final pulumi.Input<String?>? bucketOwnerAccountId;
  /// S3 URI where the schema is stored.
  final pulumi.Input<String?>? uri;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3].
  /// [bucketOwnerAccountId] Account ID of the S3 bucket owner.
  /// [uri] S3 URI where the schema is stored.
  const AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwnerAccountId': ?bucketOwnerAccountId,
      'uri': ?uri,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3(
      bucketOwnerAccountId: (() { final guardedValue = map['bucketOwnerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
