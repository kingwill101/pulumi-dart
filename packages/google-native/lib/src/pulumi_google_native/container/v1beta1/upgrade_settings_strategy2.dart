/// Update strategy of the node pool.
enum UpgradeSettingsStrategy2 {
  nodePoolUpdateStrategyUnspecified("NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED"),
  blueGreen("BLUE_GREEN"),
  surge("SURGE");

  const UpgradeSettingsStrategy2(this.value);
  final String value;

  static UpgradeSettingsStrategy2 fromValue(String value) {
    for (final item in UpgradeSettingsStrategy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeSettingsStrategy2 value: $value');
  }
}
