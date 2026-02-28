// ignore_for_file: unused_element, unnecessary_cast


class InsightsConfigRuntimeConfigGkeWorkload {
  /// The name of the GKE cluster.
  /// Format:
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  final String cluster;
  /// (Output)
  /// The name of the GKE deployment.
  /// Format:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/namespaces/{namespace}/deployments/{deployment}`.
  final String? deployment;

  /// Creates a new [InsightsConfigRuntimeConfigGkeWorkload].
  /// [cluster] The name of the GKE cluster.
  /// [deployment] (Output)
  InsightsConfigRuntimeConfigGkeWorkload({
    required this.cluster,
    this.deployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'deployment': ?deployment,
    };
  }

  factory InsightsConfigRuntimeConfigGkeWorkload.fromMap(Map<String, dynamic> map) {
    return InsightsConfigRuntimeConfigGkeWorkload(
      cluster: map['cluster'] as String,
      deployment: map['deployment'] == null ? null : map['deployment'] as String,
    );
  }
}

