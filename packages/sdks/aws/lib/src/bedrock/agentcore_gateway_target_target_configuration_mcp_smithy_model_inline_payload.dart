// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload {
  /// The inline schema payload content.
  final pulumi.Input<String> payload;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload].
  /// [payload] The inline schema payload content.
  const AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
