// ignore_for_file: unused_element, unnecessary_cast

/// Parameters used in Dataproc JobType executions.
class DataprocParametersResponse {
  /// URI for cluster used to run Dataproc execution. Format: `projects/{PROJECT_ID}/regions/{REGION}/clusters/{CLUSTER_NAME}`
  final String cluster;

  DataprocParametersResponse({
    required this.cluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    return map;
  }

  factory DataprocParametersResponse.fromMap(Map<String, dynamic> map) {
    return DataprocParametersResponse(
      cluster: map['cluster'] as String,
    );
  }
}
