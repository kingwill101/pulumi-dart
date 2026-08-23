// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_agentcore_runtime_environment.dart';

class AgentcoreHarnessEnvironment {
  /// AgentCore runtime environment configuration. See `agentcoreRuntimeEnvironment` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment>>? agentcoreRuntimeEnvironments;

  /// Creates a new [AgentcoreHarnessEnvironment].
  /// [agentcoreRuntimeEnvironments] AgentCore runtime environment configuration. See `agentcoreRuntimeEnvironment` Block below.
  const AgentcoreHarnessEnvironment({
    this.agentcoreRuntimeEnvironments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentcoreRuntimeEnvironments': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment>, List<Map<String, dynamic>>>(agentcoreRuntimeEnvironments, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironment.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironment(
      agentcoreRuntimeEnvironments: (() { final guardedValue = map['agentcoreRuntimeEnvironments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
