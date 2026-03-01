// ignore_for_file: unused_element, unnecessary_cast


class ClusterPlacementGroupConfig {
  /// Role of the instance in the cluster. Valid Values: `MASTER`, `CORE`, `TASK`.
  final String instanceRole;
  /// EC2 Placement Group strategy associated with instance role. Valid Values: `SPREAD`, `PARTITION`, `CLUSTER`, `NONE`.
  final String? placementStrategy;

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
      instanceRole: map['instanceRole'] as String,
      placementStrategy: map['placementStrategy'] == null ? null : map['placementStrategy'] as String,
    );
  }
}

