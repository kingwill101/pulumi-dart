// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload {
  /// The inline schema payload content.
  final String payload;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload].
  /// [payload] The inline schema payload content.
  AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'payload': payload};
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload(
      payload: map['payload'] as String,
    );
  }
}
