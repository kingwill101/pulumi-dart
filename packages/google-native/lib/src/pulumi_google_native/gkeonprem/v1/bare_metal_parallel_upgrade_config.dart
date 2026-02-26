// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalParallelUpgradeConfig defines the parallel upgrade settings for worker node pools.
class BareMetalParallelUpgradeConfig {
  /// The maximum number of nodes that can be upgraded at once.
  final int? concurrentNodes;

  /// The minimum number of nodes that should be healthy and available during an upgrade. If set to the default value of 0, it is possible that none of the nodes will be available during an upgrade.
  final int? minimumAvailableNodes;

  BareMetalParallelUpgradeConfig({
    this.concurrentNodes,
    this.minimumAvailableNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final concurrentNodesValue = concurrentNodes;
    if (concurrentNodesValue != null) {
      map['concurrentNodes'] = concurrentNodesValue;
    }
    final minimumAvailableNodesValue = minimumAvailableNodes;
    if (minimumAvailableNodesValue != null) {
      map['minimumAvailableNodes'] = minimumAvailableNodesValue;
    }
    return map;
  }

  factory BareMetalParallelUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalParallelUpgradeConfig(
      concurrentNodes:
          map['concurrentNodes'] == null ? null : map['concurrentNodes'] as int,
      minimumAvailableNodes: map['minimumAvailableNodes'] == null
          ? null
          : map['minimumAvailableNodes'] as int,
    );
  }
}
