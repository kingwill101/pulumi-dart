// ignore_for_file: unused_element, unnecessary_cast

class ScheduledActionTargetActionResumeCluster {
  /// The identifier of the cluster to be resumed.
  final String clusterIdentifier;

  /// Creates a new [ScheduledActionTargetActionResumeCluster].
  /// [clusterIdentifier] The identifier of the cluster to be resumed.
  ScheduledActionTargetActionResumeCluster({required this.clusterIdentifier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clusterIdentifier': clusterIdentifier};
  }

  factory ScheduledActionTargetActionResumeCluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledActionTargetActionResumeCluster(
      clusterIdentifier: map['clusterIdentifier'] as String,
    );
  }
}
