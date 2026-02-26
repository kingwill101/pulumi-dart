/// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
enum ServingConfigDiversityType3 {
  diversityTypeUnspecified("DIVERSITY_TYPE_UNSPECIFIED"),
  ruleBasedDiversity("RULE_BASED_DIVERSITY"),
  dataDrivenDiversity("DATA_DRIVEN_DIVERSITY");

  const ServingConfigDiversityType3(this.value);
  final String value;

  static ServingConfigDiversityType3 fromValue(String value) {
    for (final item in ServingConfigDiversityType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigDiversityType3 value: $value');
  }
}
