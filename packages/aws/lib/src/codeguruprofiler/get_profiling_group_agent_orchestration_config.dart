// ignore_for_file: unused_element, unnecessary_cast

class GetProfilingGroupAgentOrchestrationConfig {
  final bool profilingEnabled;

  /// Creates a new [GetProfilingGroupAgentOrchestrationConfig].
  /// [profilingEnabled] Required.
  GetProfilingGroupAgentOrchestrationConfig({
    required this.profilingEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profilingEnabled'] = profilingEnabled;
    return map;
  }

  factory GetProfilingGroupAgentOrchestrationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetProfilingGroupAgentOrchestrationConfig(
      profilingEnabled: map['profilingEnabled'] as bool,
    );
  }
}
