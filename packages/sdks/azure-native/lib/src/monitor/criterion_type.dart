/// Specifies the type of threshold criteria
enum CriterionType {
  staticThresholdCriterion("StaticThresholdCriterion"),
  dynamicThresholdCriterion("DynamicThresholdCriterion");

  const CriterionType(this.wireValue);
  final String wireValue;

  static CriterionType fromValue(String value) {
    for (final item in CriterionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CriterionType value: $value');
  }
}
