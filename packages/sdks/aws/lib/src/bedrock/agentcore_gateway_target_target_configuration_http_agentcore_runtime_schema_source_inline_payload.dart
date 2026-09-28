// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload {
  /// Inline schema payload content.
  final pulumi.Input<String> payload;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload].
  /// [payload] Inline schema payload content.
  const AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
