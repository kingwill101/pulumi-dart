// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_actual_agentcore_runtime_environment.dart';

class AgentcoreHarnessEnvironmentActual {
  /// AgentCore runtime environment configuration. See `agentcoreRuntimeEnvironment` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment>> agentcoreRuntimeEnvironments;

  /// Creates a new [AgentcoreHarnessEnvironmentActual].
  /// [agentcoreRuntimeEnvironments] AgentCore runtime environment configuration. See `agentcoreRuntimeEnvironment` Block below.
  const AgentcoreHarnessEnvironmentActual({
    required this.agentcoreRuntimeEnvironments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentcoreRuntimeEnvironments': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment>, List<Map<String, dynamic>>>(agentcoreRuntimeEnvironments, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironmentActual.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentActual(
      agentcoreRuntimeEnvironments: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment>(map['agentcoreRuntimeEnvironments']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
