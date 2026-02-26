// ignore_for_file: unused_element, unnecessary_cast

class ScheduledActionTargetActionResumeCluster {
  /// The identifier of the cluster to be resumed.
  final String clusterIdentifier;

  ScheduledActionTargetActionResumeCluster({
    required this.clusterIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    return map;
  }

  factory ScheduledActionTargetActionResumeCluster.fromMap(
      Map<String, dynamic> map) {
    return ScheduledActionTargetActionResumeCluster(
      clusterIdentifier: map['clusterIdentifier'] as String,
    );
  }
}
