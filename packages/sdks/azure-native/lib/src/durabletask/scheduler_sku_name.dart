import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU
enum SchedulerSkuName implements pulumi.PulumiEnum<String> {
  dedicated("Dedicated"),
  consumption("Consumption");

  const SchedulerSkuName(this.wireValue);
  @override
  final String wireValue;

  static SchedulerSkuName fromValue(String value) {
    for (final item in SchedulerSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulerSkuName value: $value');
  }
}
