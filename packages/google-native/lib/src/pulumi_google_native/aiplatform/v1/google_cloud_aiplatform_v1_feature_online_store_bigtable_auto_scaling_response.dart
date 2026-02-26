// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse {
  /// Optional. A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%.
  final int cpuUtilizationTarget;

  /// The maximum number of nodes to scale up to. Must be greater than or equal to min_node_count, and less than or equal to 10 times of 'min_node_count'.
  final int maxNodeCount;

  /// The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  final int minNodeCount;

  GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse({
    required this.cpuUtilizationTarget,
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuUtilizationTarget'] = cpuUtilizationTarget;
    map['maxNodeCount'] = maxNodeCount;
    map['minNodeCount'] = minNodeCount;
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse(
      cpuUtilizationTarget: map['cpuUtilizationTarget'] as int,
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}
