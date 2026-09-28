// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_agentcore_runtime_schema_source.dart';

class AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema {
  /// Configuration for the API schema. Supports exactly one of `inlinePayload` or `s3` (see `s3` Block). For HTTP targets, the `inlinePayload` block is documented under its full path (for example, `target_configuration.http.agentcore_runtime.schema.source.inline_payload` Block).
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource> source;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema].
  /// [source] Configuration for the API schema. Supports exactly one of `inlinePayload` or `s3` (see `s3` Block). For HTTP targets, the `inlinePayload` block is documented under its full path (for example, `target_configuration.http.agentcore_runtime.schema.source.inline_payload` Block).
  const AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': pulumi.Input.mapInputValue<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema(
      source: pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
