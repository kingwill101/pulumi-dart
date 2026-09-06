import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ProductCodeValues implements pulumi.PulumiEnum<String> {
  devpay("devpay"),
  marketplace("marketplace");

  const ProductCodeValues(this.wireValue);
  @override
  final String wireValue;

  static ProductCodeValues fromValue(String value) {
    for (final item in ProductCodeValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductCodeValues value: $value');
  }
}
