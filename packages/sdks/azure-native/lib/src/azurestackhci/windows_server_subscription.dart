/// Desired state of Windows Server Subscription.
enum WindowsServerSubscription {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WindowsServerSubscription(this.wireValue);
  final String wireValue;

  static WindowsServerSubscription fromValue(String value) {
    for (final item in WindowsServerSubscription.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsServerSubscription value: $value');
  }
}
