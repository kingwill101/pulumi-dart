// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledActionTargetActionResumeCluster {
  /// The identifier of the cluster to be resumed.
  final pulumi.Input<String> clusterIdentifier;

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
      clusterIdentifier: pulumi.Input.fromValue(
        map['clusterIdentifier'] as String,
      ),
    );
  }
}
