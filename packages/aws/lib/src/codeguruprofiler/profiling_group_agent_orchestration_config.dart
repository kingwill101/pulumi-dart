// ignore_for_file: unused_element, unnecessary_cast

class ProfilingGroupAgentOrchestrationConfig {
  /// (Required) Boolean that specifies whether the profiling agent collects profiling data or
  final bool profilingEnabled;

  /// Creates a new [ProfilingGroupAgentOrchestrationConfig].
  /// [profilingEnabled] (Required) Boolean that specifies whether the profiling agent collects profiling data or
  ProfilingGroupAgentOrchestrationConfig({
    required this.profilingEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profilingEnabled'] = profilingEnabled;
    return map;
  }

  factory ProfilingGroupAgentOrchestrationConfig.fromMap(
      Map<String, dynamic> map) {
    return ProfilingGroupAgentOrchestrationConfig(
      profilingEnabled: map['profilingEnabled'] as bool,
    );
  }
}
