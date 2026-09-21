// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_passthrough_schema_source.dart';

class AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema {
  /// Configuration for API schema. See `apiSchemaConfiguration` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource> source;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema].
  /// [source] Configuration for API schema. See `apiSchemaConfiguration` Block below.
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
