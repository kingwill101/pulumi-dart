// ignore_for_file: unused_element, unnecessary_cast

/// Parameters used in Dataproc JobType executions.
class DataprocParametersResponse {
  /// URI for cluster used to run Dataproc execution. Format: `projects/{PROJECT_ID}/regions/{REGION}/clusters/{CLUSTER_NAME}`
  final String cluster;

  /// Creates a new [DataprocParametersResponse].
  /// [cluster] URI for cluster used to run Dataproc execution. Format: `projects/{PROJECT_ID}/regions/{REGION}/clusters/{CLUSTER_NAME}`
  DataprocParametersResponse({required this.cluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cluster': cluster};
  }

  factory DataprocParametersResponse.fromMap(Map<String, dynamic> map) {
    return DataprocParametersResponse(cluster: map['cluster'] as String);
  }
}
