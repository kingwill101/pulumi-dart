// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload {
  /// The inline schema payload content.
  final pulumi.Input<String> payload;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload].
  /// [payload] The inline schema payload content.
  const AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
