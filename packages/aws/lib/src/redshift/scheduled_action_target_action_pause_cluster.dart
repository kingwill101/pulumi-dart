// ignore_for_file: unused_element, unnecessary_cast


class ScheduledActionTargetActionPauseCluster {
  /// The identifier of the cluster to be paused.
  final String clusterIdentifier;

  /// Creates a new [ScheduledActionTargetActionPauseCluster].
  /// [clusterIdentifier] The identifier of the cluster to be paused.
  ScheduledActionTargetActionPauseCluster({
    required this.clusterIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
    };
  }

  factory ScheduledActionTargetActionPauseCluster.fromMap(Map<String, dynamic> map) {
    return ScheduledActionTargetActionPauseCluster(
      clusterIdentifier: map['clusterIdentifier'] as String,
    );
  }
}

