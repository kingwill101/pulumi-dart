/// Enabling this field will improve VM boot time by optimizing the final customized image output.
enum VMBootOptimizationState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const VMBootOptimizationState(this.value);
  final String value;

  static VMBootOptimizationState fromValue(String value) {
    for (final item in VMBootOptimizationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMBootOptimizationState value: $value');
  }
}

