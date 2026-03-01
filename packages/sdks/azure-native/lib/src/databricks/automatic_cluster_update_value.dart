enum AutomaticClusterUpdateValue {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AutomaticClusterUpdateValue(this.value);
  final String value;

  static AutomaticClusterUpdateValue fromValue(String value) {
    for (final item in AutomaticClusterUpdateValue.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomaticClusterUpdateValue value: $value');
  }
}

