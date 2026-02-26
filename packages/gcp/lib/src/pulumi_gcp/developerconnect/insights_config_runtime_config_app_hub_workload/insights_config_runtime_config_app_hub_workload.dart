// ignore_for_file: unused_element, unnecessary_cast

class InsightsConfigRuntimeConfigAppHubWorkload {
  /// (Output)
  /// The criticality of the App Hub Workload.
  final String? criticality;

  /// (Output)
  /// The environment of the App Hub Workload.
  final String? environment;

  /// (Output)
  /// Output only. The name of the App Hub Workload.
  /// Format:
  /// `projects/{project}/locations/{location}/applications/{application}/workloads/{workload}`.
  final String? workload;

  InsightsConfigRuntimeConfigAppHubWorkload({
    this.criticality,
    this.environment,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final criticalityValue = criticality;
    if (criticalityValue != null) {
      map['criticality'] = criticalityValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    final workloadValue = workload;
    if (workloadValue != null) {
      map['workload'] = workloadValue;
    }
    return map;
  }

  factory InsightsConfigRuntimeConfigAppHubWorkload.fromMap(
      Map<String, dynamic> map) {
    return InsightsConfigRuntimeConfigAppHubWorkload(
      criticality:
          map['criticality'] == null ? null : map['criticality'] as String,
      environment:
          map['environment'] == null ? null : map['environment'] as String,
      workload: map['workload'] == null ? null : map['workload'] as String,
    );
  }
}
