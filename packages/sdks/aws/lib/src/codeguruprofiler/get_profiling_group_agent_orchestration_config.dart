// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProfilingGroupAgentOrchestrationConfig {
  final pulumi.Input<bool> profilingEnabled;

  /// Creates a new [GetProfilingGroupAgentOrchestrationConfig].
  /// [profilingEnabled] Required.
  GetProfilingGroupAgentOrchestrationConfig({
    required this.profilingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profilingEnabled': profilingEnabled,
    };
  }

  factory GetProfilingGroupAgentOrchestrationConfig.fromMap(Map<String, dynamic> map) {
    return GetProfilingGroupAgentOrchestrationConfig(
      profilingEnabled: (map['profilingEnabled'] as bool).input(),
    );
  }
}

