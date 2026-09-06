import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku name.
enum IotDpsSku implements pulumi.PulumiEnum<String> {
  valueS1("S1");

  const IotDpsSku(this.wireValue);
  @override
  final String wireValue;

  static IotDpsSku fromValue(String value) {
    for (final item in IotDpsSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IotDpsSku value: $value');
  }
}
