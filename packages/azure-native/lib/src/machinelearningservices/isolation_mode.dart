/// Isolation mode for the managed network of a machine learning workspace.
enum IsolationMode {
  valueDisabled("Disabled"),
  valueAllowInternetOutbound("AllowInternetOutbound"),
  valueAllowOnlyApprovedOutbound("AllowOnlyApprovedOutbound");

  const IsolationMode(this.value);
  final String value;

  static IsolationMode fromValue(String value) {
    for (final item in IsolationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsolationMode value: $value');
  }
}

