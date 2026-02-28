/// Describes how a reseller will be billed.
enum GoogleCloudChannelV1RenewalSettingsPaymentPlan {
  paymentPlanUnspecified("PAYMENT_PLAN_UNSPECIFIED"),
  commitment("COMMITMENT"),
  flexible("FLEXIBLE"),
  free("FREE"),
  trial("TRIAL"),
  offline("OFFLINE");

  const GoogleCloudChannelV1RenewalSettingsPaymentPlan(this.value);
  final String value;

  static GoogleCloudChannelV1RenewalSettingsPaymentPlan fromValue(String value) {
    for (final item in GoogleCloudChannelV1RenewalSettingsPaymentPlan.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudChannelV1RenewalSettingsPaymentPlan value: $value');
  }
}

