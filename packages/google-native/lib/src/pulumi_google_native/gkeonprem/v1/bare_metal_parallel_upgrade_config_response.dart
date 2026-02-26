// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalParallelUpgradeConfig defines the parallel upgrade settings for worker node pools.
class BareMetalParallelUpgradeConfigResponse {
  /// The maximum number of nodes that can be upgraded at once.
  final int concurrentNodes;

  /// The minimum number of nodes that should be healthy and available during an upgrade. If set to the default value of 0, it is possible that none of the nodes will be available during an upgrade.
  final int minimumAvailableNodes;

  BareMetalParallelUpgradeConfigResponse({
    required this.concurrentNodes,
    required this.minimumAvailableNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['concurrentNodes'] = concurrentNodes;
    map['minimumAvailableNodes'] = minimumAvailableNodes;
    return map;
  }

  factory BareMetalParallelUpgradeConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalParallelUpgradeConfigResponse(
      concurrentNodes: map['concurrentNodes'] as int,
      minimumAvailableNodes: map['minimumAvailableNodes'] as int,
    );
  }
}
