import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of notification.
enum NotificationDeliveryMechanism implements pulumi.PulumiEnum<String> {
  email("Email");

  const NotificationDeliveryMechanism(this.wireValue);
  @override
  final String wireValue;

  static NotificationDeliveryMechanism fromValue(String value) {
    for (final item in NotificationDeliveryMechanism.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationDeliveryMechanism value: $value');
  }
}
