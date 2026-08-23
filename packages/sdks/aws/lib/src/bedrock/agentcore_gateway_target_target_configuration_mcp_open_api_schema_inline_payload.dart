// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload {
  /// The inline schema payload content.
  final pulumi.Input<String> payload;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload].
  /// [payload] The inline schema payload content.
  const AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
