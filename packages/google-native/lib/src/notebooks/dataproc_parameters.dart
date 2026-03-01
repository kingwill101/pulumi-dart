// ignore_for_file: unused_element, unnecessary_cast

/// Parameters used in Dataproc JobType executions.
class DataprocParameters {
  /// URI for cluster used to run Dataproc execution. Format: `projects/{PROJECT_ID}/regions/{REGION}/clusters/{CLUSTER_NAME}`
  final String? cluster;

  /// Creates a new [DataprocParameters].
  /// [cluster] URI for cluster used to run Dataproc execution. Format: `projects/{PROJECT_ID}/regions/{REGION}/clusters/{CLUSTER_NAME}`
  DataprocParameters({this.cluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cluster': ?cluster};
  }

  factory DataprocParameters.fromMap(Map<String, dynamic> map) {
    return DataprocParameters(
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
    );
  }
}
