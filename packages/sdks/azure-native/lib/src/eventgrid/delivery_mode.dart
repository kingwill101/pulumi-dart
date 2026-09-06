import 'package:pulumi/pulumi.dart' as pulumi;

/// Delivery mode of the event subscription.
enum DeliveryMode implements pulumi.PulumiEnum<String> {
  valueQueue("Queue"),
  valuePush("Push");

  const DeliveryMode(this.wireValue);
  @override
  final String wireValue;

  static DeliveryMode fromValue(String value) {
    for (final item in DeliveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliveryMode value: $value');
  }
}
