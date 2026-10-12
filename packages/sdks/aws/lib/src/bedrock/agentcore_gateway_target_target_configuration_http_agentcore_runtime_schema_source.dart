// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_agentcore_runtime_schema_source_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_http_agentcore_runtime_schema_source_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource {
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload?>? inlinePayload;
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3?>? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource].
  /// [inlinePayload] Optional.
  /// [s3] Optional.
  const AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource({
    this.inlinePayload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePayload': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload, Map<String, dynamic>>(inlinePayload, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource(
      inlinePayload: (() { final guardedValue = map['inlinePayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
