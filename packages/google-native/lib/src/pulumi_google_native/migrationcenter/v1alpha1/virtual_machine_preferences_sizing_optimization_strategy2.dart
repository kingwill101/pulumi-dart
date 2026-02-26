/// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
enum VirtualMachinePreferencesSizingOptimizationStrategy2 {
  sizingOptimizationStrategyUnspecified(
      "SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED"),
  sizingOptimizationStrategySameAsSource(
      "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE"),
  sizingOptimizationStrategyModerate("SIZING_OPTIMIZATION_STRATEGY_MODERATE"),
  sizingOptimizationStrategyAggressive(
      "SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE"),
  sizingOptimizationStrategyCustom("SIZING_OPTIMIZATION_STRATEGY_CUSTOM");

  const VirtualMachinePreferencesSizingOptimizationStrategy2(this.value);
  final String value;

  static VirtualMachinePreferencesSizingOptimizationStrategy2 fromValue(
      String value) {
    for (final item
        in VirtualMachinePreferencesSizingOptimizationStrategy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown VirtualMachinePreferencesSizingOptimizationStrategy2 value: $value');
  }
}
