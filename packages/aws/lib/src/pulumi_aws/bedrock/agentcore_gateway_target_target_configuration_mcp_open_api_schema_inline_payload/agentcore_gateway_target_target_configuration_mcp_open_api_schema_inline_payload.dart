// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload {
  /// The inline schema payload content.
  final String payload;

  AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload(
      payload: map['payload'] as String,
    );
  }
}
