import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU.
enum SqlManagedInstanceSkuName implements pulumi.PulumiEnum<String> {
  valueVCore("vCore");

  const SqlManagedInstanceSkuName(this.wireValue);
  @override
  final String wireValue;

  static SqlManagedInstanceSkuName fromValue(String value) {
    for (final item in SqlManagedInstanceSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlManagedInstanceSkuName value: $value');
  }
}
