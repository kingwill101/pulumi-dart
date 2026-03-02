// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3 {
  /// Account ID of the S3 bucket owner.
  final pulumi.Input<String>? bucketOwnerAccountId;
  /// S3 URI where the schema is stored.
  final pulumi.Input<String>? uri;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3].
  /// [bucketOwnerAccountId] Account ID of the S3 bucket owner.
  /// [uri] S3 URI where the schema is stored.
  AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwnerAccountId': ?bucketOwnerAccountId,
      'uri': ?uri,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3(
      bucketOwnerAccountId: map['bucketOwnerAccountId'] == null ? null : ((map['bucketOwnerAccountId'] as String).input()).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
    );
  }
}

