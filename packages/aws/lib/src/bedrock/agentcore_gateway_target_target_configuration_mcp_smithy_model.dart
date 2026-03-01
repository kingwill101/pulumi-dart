// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_target_target_configuration_mcp_smithy_model_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_mcp_smithy_model_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel {
  final AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload? inlinePayload;
  final AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel].
  /// [inlinePayload] Optional.
  /// [s3] Optional.
  AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel({
    this.inlinePayload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePayload': ?inlinePayload == null ? null : inlinePayload!.toMap(),
      's3': ?s3 == null ? null : s3!.toMap(),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel(
      inlinePayload: map['inlinePayload'] == null ? null : AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload.fromMap((map['inlinePayload'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null ? null : AgentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3.fromMap((map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}

