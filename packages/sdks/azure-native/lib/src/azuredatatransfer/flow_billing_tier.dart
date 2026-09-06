import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing tier for this messaging flow
enum FlowBillingTier implements pulumi.PulumiEnum<String> {
  valueBlobTransport("BlobTransport"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const FlowBillingTier(this.wireValue);
  @override
  final String wireValue;

  static FlowBillingTier fromValue(String value) {
    for (final item in FlowBillingTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowBillingTier value: $value');
  }
}
