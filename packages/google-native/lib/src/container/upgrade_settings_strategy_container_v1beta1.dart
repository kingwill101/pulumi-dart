/// Update strategy of the node pool.
enum UpgradeSettingsStrategyContainerV1beta1 {
  nodePoolUpdateStrategyUnspecified("NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED"),
  blueGreen("BLUE_GREEN"),
  surge("SURGE");

  const UpgradeSettingsStrategyContainerV1beta1(this.value);
  final String value;

  static UpgradeSettingsStrategyContainerV1beta1 fromValue(String value) {
    for (final item in UpgradeSettingsStrategyContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeSettingsStrategyContainerV1beta1 value: $value');
  }
}

