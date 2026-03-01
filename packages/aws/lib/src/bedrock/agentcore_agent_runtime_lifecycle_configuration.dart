// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreAgentRuntimeLifecycleConfiguration {
  /// Timeout in seconds for idle runtime sessions.
  final int idleRuntimeSessionTimeout;
  /// Maximum lifetime for the instance in seconds.
  final int maxLifetime;

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
      idleRuntimeSessionTimeout: map['idleRuntimeSessionTimeout'] as int,
      maxLifetime: map['maxLifetime'] as int,
    );
  }
}

