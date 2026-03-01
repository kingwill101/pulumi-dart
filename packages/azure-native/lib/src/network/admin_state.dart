/// Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
enum AdminState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AdminState(this.value);
  final String value;

  static AdminState fromValue(String value) {
    for (final item in AdminState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdminState value: $value');
  }
}

