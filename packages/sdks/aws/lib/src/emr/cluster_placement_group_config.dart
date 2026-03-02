// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPlacementGroupConfig {
  /// Role of the instance in the cluster. Valid Values: `MASTER`, `CORE`, `TASK`.
  final pulumi.Input<String> instanceRole;
  /// EC2 Placement Group strategy associated with instance role. Valid Values: `SPREAD`, `PARTITION`, `CLUSTER`, `NONE`.
  final pulumi.Input<String>? placementStrategy;

  /// Creates a new [ClusterPlacementGroupConfig].
  /// [instanceRole] Role of the instance in the cluster. Valid Values: `MASTER`, `CORE`, `TASK`.
  /// [placementStrategy] EC2 Placement Group strategy associated with instance role. Valid Values: `SPREAD`, `PARTITION`, `CLUSTER`, `NONE`.
  ClusterPlacementGroupConfig({
    required this.instanceRole,
    this.placementStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRole': instanceRole,
      'placementStrategy': ?placementStrategy,
    };
  }

  factory ClusterPlacementGroupConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPlacementGroupConfig(
      instanceRole: (map['instanceRole'] as String).input(),
      placementStrategy: map['placementStrategy'] == null ? null : (map['placementStrategy'] as String).input(),
    );
  }
}

