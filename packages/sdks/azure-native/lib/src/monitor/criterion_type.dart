/// Specifies the type of threshold criteria
enum CriterionType {
  valueStaticThresholdCriterion("StaticThresholdCriterion"),
  valueDynamicThresholdCriterion("DynamicThresholdCriterion");

  const CriterionType(this.value);
  final String value;

  static CriterionType fromValue(String value) {
    for (final item in CriterionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CriterionType value: $value');
  }
}

