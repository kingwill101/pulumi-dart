// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http_agentcore_runtime.dart';

class AgentcoreGatewayTargetTargetConfigurationHttp {
  /// AgentCore Runtime target configuration. See `agentcoreRuntime` below.
  ///
  /// &gt; **Note:** HTTP targets can only be attached to gateways that do not have a `protocolType` set. They are not supported on MCP-protocol gateways.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime?>? agentcoreRuntime;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttp].
  /// [agentcoreRuntime] AgentCore Runtime target configuration. See `agentcoreRuntime` below.
  const AgentcoreGatewayTargetTargetConfigurationHttp({
    this.agentcoreRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentcoreRuntime': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime, Map<String, dynamic>>(agentcoreRuntime, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttp.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttp(
      agentcoreRuntime: (() { final guardedValue = map['agentcoreRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
