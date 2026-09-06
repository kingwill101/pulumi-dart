import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Rack SKU name.
enum NetworkRackType implements pulumi.PulumiEnum<String> {
  valueAggregate("Aggregate"),
  valueCompute("Compute"),
  valueCombined("Combined");

  const NetworkRackType(this.wireValue);
  @override
  final String wireValue;

  static NetworkRackType fromValue(String value) {
    for (final item in NetworkRackType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRackType value: $value');
  }
}
