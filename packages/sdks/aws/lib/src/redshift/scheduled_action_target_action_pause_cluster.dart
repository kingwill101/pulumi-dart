// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledActionTargetActionPauseCluster {
  /// The identifier of the cluster to be paused.
  final pulumi.Input<String> clusterIdentifier;

  /// Creates a new [ScheduledActionTargetActionPauseCluster].
  /// [clusterIdentifier] The identifier of the cluster to be paused.
  const ScheduledActionTargetActionPauseCluster({
    required this.clusterIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
    };
  }

  factory ScheduledActionTargetActionPauseCluster.fromMap(Map<String, dynamic> map) {
    return ScheduledActionTargetActionPauseCluster(
      clusterIdentifier: pulumi.Input.fromValue(map['clusterIdentifier'] as String),
    );
  }
}

