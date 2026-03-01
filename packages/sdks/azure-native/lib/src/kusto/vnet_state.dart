/// When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
enum VnetState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const VnetState(this.value);
  final String value;

  static VnetState fromValue(String value) {
    for (final item in VnetState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VnetState value: $value');
  }
}

