import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired state of Windows Server Subscription.
enum WindowsServerSubscription implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WindowsServerSubscription(this.wireValue);
  @override
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
