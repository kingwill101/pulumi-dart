// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_tool_config_agentcore_gateway_outbound_auth.dart';

class AgentcoreHarnessToolConfigAgentcoreGateway {
  /// ARN of the AgentCore gateway resource.
  final pulumi.Input<String> gatewayArn;
  /// Outbound authentication configuration. See `outboundAuth` Block below.
  final pulumi.Input<AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth>? outboundAuth;

  /// Creates a new [AgentcoreHarnessToolConfigAgentcoreGateway].
  /// [gatewayArn] ARN of the AgentCore gateway resource.
  /// [outboundAuth] Outbound authentication configuration. See `outboundAuth` Block below.
  const AgentcoreHarnessToolConfigAgentcoreGateway({
    required this.gatewayArn,
    this.outboundAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayArn': gatewayArn,
      'outboundAuth': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth, Map<String, dynamic>>(outboundAuth, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessToolConfigAgentcoreGateway.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfigAgentcoreGateway(
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      outboundAuth: (() { final guardedValue = map['outboundAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
