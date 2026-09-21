// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_passthrough_schema.dart';
import 'agentcore_gateway_target_target_configuration_http_passthrough_stickiness_configuration.dart';

class AgentcoreGatewayTargetTargetConfigurationHttpPassthrough {
  /// HTTPS endpoint that the gateway forwards requests to for this passthrough target. Must start with `https://`.
  final pulumi.Input<String> endpoint;
  /// Application protocol the passthrough target implements. Valid values: `MCP`, `A2A`, `INFERENCE`, `CUSTOM`.
  final pulumi.Input<String> protocolType;
  /// API schema configuration that defines the structure of the passthrough target's API. Supports the same `inlinePayload` and `s3` blocks as `apiSchemaConfiguration`.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema?>? schema;
  /// Controls precedence when a client request supplies a query parameter whose name matches a configured static query parameter. Valid values: `CLIENT_OVERRIDE`, `STATIC_OVERRIDE`.
  final pulumi.Input<String?>? staticQueryParameterConflictResolution;
  /// Map of static query parameters that the gateway always appends to the outbound URL when forwarding requests to the target.
  final pulumi.Input<Map<String, String>?>? staticQueryParameters;
  /// Session stickiness configuration routing requests within the same session to the same target. See `stickinessConfiguration` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration?>? stickinessConfiguration;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpPassthrough].
  /// [endpoint] HTTPS endpoint that the gateway forwards requests to for this passthrough target. Must start with `https://`.
  /// [protocolType] Application protocol the passthrough target implements. Valid values: `MCP`, `A2A`, `INFERENCE`, `CUSTOM`.
  /// [schema] API schema configuration that defines the structure of the passthrough target's API. Supports the same `inlinePayload` and `s3` blocks as `apiSchemaConfiguration`.
  /// [staticQueryParameterConflictResolution] Controls precedence when a client request supplies a query parameter whose name matches a configured static query parameter. Valid values: `CLIENT_OVERRIDE`, `STATIC_OVERRIDE`.
  /// [staticQueryParameters] Map of static query parameters that the gateway always appends to the outbound URL when forwarding requests to the target.
  /// [stickinessConfiguration] Session stickiness configuration routing requests within the same session to the same target. See `stickinessConfiguration` below.
  const AgentcoreGatewayTargetTargetConfigurationHttpPassthrough({
    required this.endpoint,
    required this.protocolType,
    this.schema,
    this.staticQueryParameterConflictResolution,
    this.staticQueryParameters,
    this.stickinessConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'protocolType': protocolType,
      'schema': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'staticQueryParameterConflictResolution': ?staticQueryParameterConflictResolution,
      'staticQueryParameters': ?staticQueryParameters,
      'stickinessConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration, Map<String, dynamic>>(stickinessConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpPassthrough.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpPassthrough(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      staticQueryParameterConflictResolution: (() { final guardedValue = map['staticQueryParameterConflictResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticQueryParameters: (() { final guardedValue = map['staticQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stickinessConfiguration: (() { final guardedValue = map['stickinessConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
