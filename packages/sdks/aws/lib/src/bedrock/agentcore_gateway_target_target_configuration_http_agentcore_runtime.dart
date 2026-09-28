// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_agentcore_runtime_schema.dart';

class AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime {
  /// ARN of the AgentCore Runtime agent that the gateway routes requests to.
  final pulumi.Input<String> arn;
  /// Runtime qualifier identifying a specific endpoint version. Defaults to `DEFAULT` when not set.
  final pulumi.Input<String?>? qualifier;
  /// API schema configuration that defines the structure of the runtime target's API. See `schema` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema?>? schema;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime].
  /// [arn] ARN of the AgentCore Runtime agent that the gateway routes requests to.
  /// [qualifier] Runtime qualifier identifying a specific endpoint version. Defaults to `DEFAULT` when not set.
  /// [schema] API schema configuration that defines the structure of the runtime target's API. See `schema` Block below.
  const AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime({
    required this.arn,
    this.qualifier,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'qualifier': ?qualifier,
      'schema': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
