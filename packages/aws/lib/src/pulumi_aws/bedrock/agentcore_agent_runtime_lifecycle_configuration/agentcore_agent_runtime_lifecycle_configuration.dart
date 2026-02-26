// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreAgentRuntimeLifecycleConfiguration {
  /// Timeout in seconds for idle runtime sessions.
  final int idleRuntimeSessionTimeout;

  /// Maximum lifetime for the instance in seconds.
  final int maxLifetime;

  AgentcoreAgentRuntimeLifecycleConfiguration({
    required this.idleRuntimeSessionTimeout,
    required this.maxLifetime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idleRuntimeSessionTimeout'] = idleRuntimeSessionTimeout;
    map['maxLifetime'] = maxLifetime;
    return map;
  }

  factory AgentcoreAgentRuntimeLifecycleConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeLifecycleConfiguration(
      idleRuntimeSessionTimeout: map['idleRuntimeSessionTimeout'] as int,
      maxLifetime: map['maxLifetime'] as int,
    );
  }
}
