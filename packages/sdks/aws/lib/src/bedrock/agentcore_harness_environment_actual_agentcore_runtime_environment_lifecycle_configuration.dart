// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration {
  /// Timeout in seconds for idle sessions.
  final pulumi.Input<int> idleRuntimeSessionTimeout;
  /// Maximum lifetime of the instance in seconds.
  final pulumi.Input<int> maxLifetime;

  /// Creates a new [AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration].
  /// [idleRuntimeSessionTimeout] Timeout in seconds for idle sessions.
  /// [maxLifetime] Maximum lifetime of the instance in seconds.
  const AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration({
    required this.idleRuntimeSessionTimeout,
    required this.maxLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleRuntimeSessionTimeout': idleRuntimeSessionTimeout,
      'maxLifetime': maxLifetime,
    };
  }

  factory AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration(
      idleRuntimeSessionTimeout: pulumi.Input.fromValue(map['idleRuntimeSessionTimeout'] as int),
      maxLifetime: pulumi.Input.fromValue(map['maxLifetime'] as int),
    );
  }
}
