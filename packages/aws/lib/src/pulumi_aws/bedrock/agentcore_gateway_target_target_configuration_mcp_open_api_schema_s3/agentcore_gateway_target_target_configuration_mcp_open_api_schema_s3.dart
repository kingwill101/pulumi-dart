// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3 {
  /// Account ID of the S3 bucket owner.
  final String? bucketOwnerAccountId;

  /// S3 URI where the schema is stored.
  final String? uri;

  AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketOwnerAccountIdValue = bucketOwnerAccountId;
    if (bucketOwnerAccountIdValue != null) {
      map['bucketOwnerAccountId'] = bucketOwnerAccountIdValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3(
      bucketOwnerAccountId: map['bucketOwnerAccountId'] == null
          ? null
          : map['bucketOwnerAccountId'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
