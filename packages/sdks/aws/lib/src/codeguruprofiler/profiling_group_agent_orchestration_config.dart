// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfilingGroupAgentOrchestrationConfig {
  /// (Required) Boolean that specifies whether the profiling agent collects profiling data or
  final pulumi.Input<bool> profilingEnabled;

  /// Creates a new [ProfilingGroupAgentOrchestrationConfig].
  /// [profilingEnabled] (Required) Boolean that specifies whether the profiling agent collects profiling data or
  ProfilingGroupAgentOrchestrationConfig({
    required this.profilingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profilingEnabled': profilingEnabled,
    };
  }

  factory ProfilingGroupAgentOrchestrationConfig.fromMap(Map<String, dynamic> map) {
    return ProfilingGroupAgentOrchestrationConfig(
      profilingEnabled: (map['profilingEnabled'] as bool).input(),
    );
  }
}

