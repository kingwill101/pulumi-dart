// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3 {
  /// Account ID of the S3 bucket owner.
  final String? bucketOwnerAccountId;

  /// S3 URI where the schema is stored.
  final String? uri;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3].
  /// [bucketOwnerAccountId] Account ID of the S3 bucket owner.
  /// [uri] S3 URI where the schema is stored.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwnerAccountId': ?bucketOwnerAccountId,
      'uri': ?uri,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3(
      bucketOwnerAccountId: map['bucketOwnerAccountId'] == null
          ? null
          : map['bucketOwnerAccountId'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
