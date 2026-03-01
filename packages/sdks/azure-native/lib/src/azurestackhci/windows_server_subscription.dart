/// Desired state of Windows Server Subscription.
enum WindowsServerSubscription {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WindowsServerSubscription(this.value);
  final String value;

  static WindowsServerSubscription fromValue(String value) {
    for (final item in WindowsServerSubscription.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsServerSubscription value: $value');
  }
}

