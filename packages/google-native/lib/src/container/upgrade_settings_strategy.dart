/// Update strategy of the node pool.
enum UpgradeSettingsStrategy {
  nodePoolUpdateStrategyUnspecified("NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED"),
  blueGreen("BLUE_GREEN"),
  surge("SURGE");

  const UpgradeSettingsStrategy(this.value);
  final String value;

  static UpgradeSettingsStrategy fromValue(String value) {
    for (final item in UpgradeSettingsStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeSettingsStrategy value: $value');
  }
}

