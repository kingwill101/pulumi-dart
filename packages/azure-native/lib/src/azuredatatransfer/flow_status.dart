/// Status of the current flow
enum FlowStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FlowStatus(this.value);
  final String value;

  static FlowStatus fromValue(String value) {
    for (final item in FlowStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowStatus value: $value');
  }
}

