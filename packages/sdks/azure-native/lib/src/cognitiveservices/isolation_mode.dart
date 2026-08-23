/// Isolation mode for the managed network of a cognitive services account.
enum IsolationMode {
  disabled("Disabled"),
  allowInternetOutbound("AllowInternetOutbound"),
  allowOnlyApprovedOutbound("AllowOnlyApprovedOutbound");

  const IsolationMode(this.wireValue);
  final String wireValue;

  static IsolationMode fromValue(String value) {
    for (final item in IsolationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsolationMode value: $value');
  }
}
