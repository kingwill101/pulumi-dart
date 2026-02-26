enum ServingConfigSolutionTypesItem3 {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ServingConfigSolutionTypesItem3(this.value);
  final String value;

  static ServingConfigSolutionTypesItem3 fromValue(String value) {
    for (final item in ServingConfigSolutionTypesItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServingConfigSolutionTypesItem3 value: $value');
  }
}
