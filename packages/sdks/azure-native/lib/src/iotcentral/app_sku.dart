import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU.
enum AppSku implements pulumi.PulumiEnum<String> {
  valueST0("ST0"),
  valueST1("ST1"),
  valueST2("ST2");

  const AppSku(this.wireValue);
  @override
  final String wireValue;

  static AppSku fromValue(String value) {
    for (final item in AppSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppSku value: $value');
  }
}
