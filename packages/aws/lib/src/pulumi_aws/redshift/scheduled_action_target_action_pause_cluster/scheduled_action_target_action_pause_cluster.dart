// ignore_for_file: unused_element, unnecessary_cast

class ScheduledActionTargetActionPauseCluster {
  /// The identifier of the cluster to be paused.
  final String clusterIdentifier;

  ScheduledActionTargetActionPauseCluster({
    required this.clusterIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    return map;
  }

  factory ScheduledActionTargetActionPauseCluster.fromMap(
      Map<String, dynamic> map) {
    return ScheduledActionTargetActionPauseCluster(
      clusterIdentifier: map['clusterIdentifier'] as String,
    );
  }
}
