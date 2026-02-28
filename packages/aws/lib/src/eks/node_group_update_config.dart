// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupUpdateConfig {
  /// Desired max number of unavailable worker nodes during node group update.
  final int? maxUnavailable;

  /// Desired max percentage of unavailable worker nodes during node group update.
  final int? maxUnavailablePercentage;

  /// Strategy to use for updating the node group. Valid values: `MINIMAL` and `DEFAULT`.
  final String? updateStrategy;

  /// Creates a new [NodeGroupUpdateConfig].
  /// [maxUnavailable] Desired max number of unavailable worker nodes during node group update.
  /// [maxUnavailablePercentage] Desired max percentage of unavailable worker nodes during node group update.
  /// [updateStrategy] Strategy to use for updating the node group. Valid values: `MINIMAL` and `DEFAULT`.
  NodeGroupUpdateConfig({
    this.maxUnavailable,
    this.maxUnavailablePercentage,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxUnavailableValue = maxUnavailable;
    if (maxUnavailableValue != null) {
      map['maxUnavailable'] = maxUnavailableValue;
    }
    final maxUnavailablePercentageValue = maxUnavailablePercentage;
    if (maxUnavailablePercentageValue != null) {
      map['maxUnavailablePercentage'] = maxUnavailablePercentageValue;
    }
    final updateStrategyValue = updateStrategy;
    if (updateStrategyValue != null) {
      map['updateStrategy'] = updateStrategyValue;
    }
    return map;
  }

  factory NodeGroupUpdateConfig.fromMap(Map<String, dynamic> map) {
    return NodeGroupUpdateConfig(
      maxUnavailable:
          map['maxUnavailable'] == null ? null : map['maxUnavailable'] as int,
      maxUnavailablePercentage: map['maxUnavailablePercentage'] == null
          ? null
          : map['maxUnavailablePercentage'] as int,
      updateStrategy: map['updateStrategy'] == null
          ? null
          : map['updateStrategy'] as String,
    );
  }
}
