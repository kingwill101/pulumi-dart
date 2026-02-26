/// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
enum MultiClusterIngressFeatureSpecBilling2 {
  billingUnspecified("BILLING_UNSPECIFIED"),
  payAsYouGo("PAY_AS_YOU_GO"),
  anthosLicense("ANTHOS_LICENSE");

  const MultiClusterIngressFeatureSpecBilling2(this.value);
  final String value;

  static MultiClusterIngressFeatureSpecBilling2 fromValue(String value) {
    for (final item in MultiClusterIngressFeatureSpecBilling2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MultiClusterIngressFeatureSpecBilling2 value: $value');
  }
}
