// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_agentcore_runtime.dart';
import 'agentcore_gateway_target_target_configuration_http_passthrough.dart';

class AgentcoreGatewayTargetTargetConfigurationHttp {
  /// AgentCore Runtime target configuration. See `agentcoreRuntime` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime?>? agentcoreRuntime;
  /// Passthrough target configuration that forwards requests to an external HTTPS endpoint. See `passthrough` Block below.
  ///
  /// &gt; **Note:** HTTP targets can only be attached to gateways that do not have a `protocolType` set. They are not supported on MCP-protocol gateways.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpPassthrough?>? passthrough;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttp].
  /// [agentcoreRuntime] AgentCore Runtime target configuration. See `agentcoreRuntime` Block below.
  /// [passthrough] Passthrough target configuration that forwards requests to an external HTTPS endpoint. See `passthrough` Block below.
  const AgentcoreGatewayTargetTargetConfigurationHttp({
    this.agentcoreRuntime,
    this.passthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentcoreRuntime': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime, Map<String, dynamic>>(agentcoreRuntime, (value) => value.toMap()),
      'passthrough': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpPassthrough, Map<String, dynamic>>(passthrough, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttp.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttp(
      agentcoreRuntime: (() { final guardedValue = map['agentcoreRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passthrough: (() { final guardedValue = map['passthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpPassthrough.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
