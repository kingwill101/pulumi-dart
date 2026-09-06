import 'package:pulumi/pulumi.dart' as pulumi;

/// Supported values: Protected, Locked
enum PricingPolicy implements pulumi.PulumiEnum<String> {
  protected("Protected"),
  locked("Locked");

  const PricingPolicy(this.wireValue);
  @override
  final String wireValue;

  static PricingPolicy fromValue(String value) {
    for (final item in PricingPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingPolicy value: $value');
  }
}
