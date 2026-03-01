/// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
enum SettingsPricingPlanSqladminV1beta4 {
  sqlPricingPlanUnspecified("SQL_PRICING_PLAN_UNSPECIFIED"),
  package("PACKAGE"),
  perUse("PER_USE");

  const SettingsPricingPlanSqladminV1beta4(this.value);
  final String value;

  static SettingsPricingPlanSqladminV1beta4 fromValue(String value) {
    for (final item in SettingsPricingPlanSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SettingsPricingPlanSqladminV1beta4 value: $value',
    );
  }
}
