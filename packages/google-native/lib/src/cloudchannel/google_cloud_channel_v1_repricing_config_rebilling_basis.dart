/// Required. The RebillingBasis to use for this bill. Specifies the relative cost based on repricing costs you will apply.
enum GoogleCloudChannelV1RepricingConfigRebillingBasis {
  rebillingBasisUnspecified("REBILLING_BASIS_UNSPECIFIED"),
  costAtList("COST_AT_LIST"),
  directCustomerCost("DIRECT_CUSTOMER_COST");

  const GoogleCloudChannelV1RepricingConfigRebillingBasis(this.value);
  final String value;

  static GoogleCloudChannelV1RepricingConfigRebillingBasis fromValue(
      String value) {
    for (final item
        in GoogleCloudChannelV1RepricingConfigRebillingBasis.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudChannelV1RepricingConfigRebillingBasis value: $value');
  }
}
