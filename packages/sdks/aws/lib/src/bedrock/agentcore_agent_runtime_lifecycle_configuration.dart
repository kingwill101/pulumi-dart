// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreAgentRuntimeLifecycleConfiguration {
  /// Timeout in seconds for idle runtime sessions.
  final pulumi.Input<int> idleRuntimeSessionTimeout;
  /// Maximum lifetime for the instance in seconds.
  final pulumi.Input<int> maxLifetime;

  /// Creates a new [AgentcoreAgentRuntimeLifecycleConfiguration].
  /// [idleRuntimeSessionTimeout] Timeout in seconds for idle runtime sessions.
  /// [maxLifetime] Maximum lifetime for the instance in seconds.
  AgentcoreAgentRuntimeLifecycleConfiguration({
    required this.idleRuntimeSessionTimeout,
    required this.maxLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleRuntimeSessionTimeout': idleRuntimeSessionTimeout,
      'maxLifetime': maxLifetime,
    };
  }

  factory AgentcoreAgentRuntimeLifecycleConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeLifecycleConfiguration(
      idleRuntimeSessionTimeout: (map['idleRuntimeSessionTimeout'] as int).input(),
      maxLifetime: (map['maxLifetime'] as int).input(),
    );
  }
}

