// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_smithy_model_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_mcp_smithy_model_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel {
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload>? inlinePayload;
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3>? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel].
  /// [inlinePayload] Optional.
  /// [s3] Optional.
  AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel({
    this.inlinePayload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePayload': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload, Map<String, dynamic>>(inlinePayload, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel(
      inlinePayload: (() { final guardedValue = map['inlinePayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

