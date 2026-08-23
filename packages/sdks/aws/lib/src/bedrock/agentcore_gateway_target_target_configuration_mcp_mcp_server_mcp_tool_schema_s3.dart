// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3 {
  /// Account ID of the S3 bucket owner.
  final pulumi.Input<String>? bucketOwnerAccountId;
  /// S3 URI where the schema is stored.
  final pulumi.Input<String> uri;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3].
  /// [bucketOwnerAccountId] Account ID of the S3 bucket owner.
  /// [uri] S3 URI where the schema is stored.
  const AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3({
    this.bucketOwnerAccountId,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwnerAccountId': ?bucketOwnerAccountId,
      'uri': uri,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3(
      bucketOwnerAccountId: (() { final guardedValue = map['bucketOwnerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
