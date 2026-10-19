// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_passthrough_schema_source_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_http_passthrough_schema_source_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource {
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload?>? inlinePayload;
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceS3?>? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource].
  /// [inlinePayload] Optional.
  /// [s3] Optional.
  const AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource({
    this.inlinePayload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePayload': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload, Map<String, dynamic>>(inlinePayload, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource(
      inlinePayload: (() { final guardedValue = map['inlinePayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
