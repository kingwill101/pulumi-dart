/// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
enum SettingsPricingPlan2 {
  sqlPricingPlanUnspecified("SQL_PRICING_PLAN_UNSPECIFIED"),
  package("PACKAGE"),
  perUse("PER_USE");

  const SettingsPricingPlan2(this.value);
  final String value;

  static SettingsPricingPlan2 fromValue(String value) {
    for (final item in SettingsPricingPlan2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsPricingPlan2 value: $value');
  }
}
