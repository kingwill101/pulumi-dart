/// Status of the current flow
enum FlowStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FlowStatus(this.wireValue);
  final String wireValue;

  static FlowStatus fromValue(String value) {
    for (final item in FlowStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowStatus value: $value');
  }
}
