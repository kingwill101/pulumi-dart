// ignore_for_file: unused_element, unnecessary_cast

/// Dataproc job config.
class JobPlacementDataprocV1beta2 {
  /// Optional. Cluster labels to identify a cluster where the job will be submitted.
  final Map<String, String>? clusterLabels;

  /// The name of the cluster where the job will be submitted.
  final String clusterName;

  /// Creates a new [JobPlacementDataprocV1beta2].
  /// [clusterLabels] Optional. Cluster labels to identify a cluster where the job will be submitted.
  /// [clusterName] The name of the cluster where the job will be submitted.
  JobPlacementDataprocV1beta2({
    this.clusterLabels,
    required this.clusterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterLabelsValue = clusterLabels;
    if (clusterLabelsValue != null) {
      map['clusterLabels'] = clusterLabelsValue;
    }
    map['clusterName'] = clusterName;
    return map;
  }

  factory JobPlacementDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return JobPlacementDataprocV1beta2(
      clusterLabels: map['clusterLabels'] == null
          ? null
          : (map['clusterLabels'] as Map).cast<String, String>(),
      clusterName: map['clusterName'] as String,
    );
  }
}
