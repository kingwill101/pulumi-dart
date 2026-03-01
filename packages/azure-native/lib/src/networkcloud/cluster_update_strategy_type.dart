/// The mode of operation for runtime protection.
enum ClusterUpdateStrategyType {
  valueRack("Rack"),
  valuePauseAfterRack("PauseAfterRack");

  const ClusterUpdateStrategyType(this.value);
  final String value;

  static ClusterUpdateStrategyType fromValue(String value) {
    for (final item in ClusterUpdateStrategyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateStrategyType value: $value');
  }
}

