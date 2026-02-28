/// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
enum OrganizationBillingType {
  billingTypeUnspecified("BILLING_TYPE_UNSPECIFIED"),
  subscription("SUBSCRIPTION"),
  evaluation("EVALUATION"),
  payg("PAYG");

  const OrganizationBillingType(this.value);
  final String value;

  static OrganizationBillingType fromValue(String value) {
    for (final item in OrganizationBillingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationBillingType value: $value');
  }
}
