// ignore_for_file: unused_element, unnecessary_cast

/// The Autoscaling targets for a Cluster. These determine the recommended nodes.
class AutoscalingTargetsResponse {
  /// The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80, otherwise it will return INVALID_ARGUMENT error.
  final int cpuUtilizationPercent;

  /// The storage utilization that the Autoscaler should be trying to achieve. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster, otherwise it will return INVALID_ARGUMENT error. If this value is set to 0, it will be treated as if it were set to the default value: 2560 for SSD, 8192 for HDD.
  final int storageUtilizationGibPerNode;

  AutoscalingTargetsResponse({
    required this.cpuUtilizationPercent,
    required this.storageUtilizationGibPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuUtilizationPercent'] = cpuUtilizationPercent;
    map['storageUtilizationGibPerNode'] = storageUtilizationGibPerNode;
    return map;
  }

  factory AutoscalingTargetsResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingTargetsResponse(
      cpuUtilizationPercent: map['cpuUtilizationPercent'] as int,
      storageUtilizationGibPerNode: map['storageUtilizationGibPerNode'] as int,
    );
  }
}
