import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the mode of the Order item.
enum OrderMode implements pulumi.PulumiEnum<String> {
  default_("Default"),
  doNotFulfill("DoNotFulfill");

  const OrderMode(this.wireValue);
  @override
  final String wireValue;

  static OrderMode fromValue(String value) {
    for (final item in OrderMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrderMode value: $value');
  }
}
