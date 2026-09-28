// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_passthrough_schema_source.dart';

class AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema {
  /// Configuration for the API schema. Supports exactly one of `inlinePayload` or `s3` (see `s3` Block). For HTTP targets, the `inlinePayload` block is documented under its full path (for example, `target_configuration.http.agentcore_runtime.schema.source.inline_payload` Block).
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource> source;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema].
  /// [source] Configuration for the API schema. Supports exactly one of `inlinePayload` or `s3` (see `s3` Block). For HTTP targets, the `inlinePayload` block is documented under its full path (for example, `target_configuration.http.agentcore_runtime.schema.source.inline_payload` Block).
  const AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': pulumi.Input.mapInputValue<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema(
      source: pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
