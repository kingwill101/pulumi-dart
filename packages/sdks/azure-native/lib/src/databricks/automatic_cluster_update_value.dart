enum AutomaticClusterUpdateValue {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AutomaticClusterUpdateValue(this.wireValue);
  final String wireValue;

  static AutomaticClusterUpdateValue fromValue(String value) {
    for (final item in AutomaticClusterUpdateValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomaticClusterUpdateValue value: $value');
  }
}
