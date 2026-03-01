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

  /// Creates a new [InsightsConfigRuntimeConfigAppHubWorkload].
  /// [criticality] (Output)
  /// [environment] (Output)
  /// [workload] (Output)
  InsightsConfigRuntimeConfigAppHubWorkload({
    this.criticality,
    this.environment,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticality': ?criticality,
      'environment': ?environment,
      'workload': ?workload,
    };
  }

  factory InsightsConfigRuntimeConfigAppHubWorkload.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsConfigRuntimeConfigAppHubWorkload(
      criticality: map['criticality'] == null
          ? null
          : map['criticality'] as String,
      environment: map['environment'] == null
          ? null
          : map['environment'] as String,
      workload: map['workload'] == null ? null : map['workload'] as String,
    );
  }
}
