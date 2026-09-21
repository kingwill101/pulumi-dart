// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload {
  /// Inline schema payload content.
  final pulumi.Input<String> payload;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload].
  /// [payload] Inline schema payload content.
  const AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
