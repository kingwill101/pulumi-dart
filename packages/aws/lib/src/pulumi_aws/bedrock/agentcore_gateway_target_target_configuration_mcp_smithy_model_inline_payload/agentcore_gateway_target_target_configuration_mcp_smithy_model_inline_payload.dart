// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload {
  /// The inline schema payload content.
  final String payload;

  AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload(
      payload: map['payload'] as String,
    );
  }
}
