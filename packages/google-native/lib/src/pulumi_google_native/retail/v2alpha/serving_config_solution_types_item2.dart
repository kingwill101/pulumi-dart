enum ServingConfigSolutionTypesItem2 {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ServingConfigSolutionTypesItem2(this.value);
  final String value;

  static ServingConfigSolutionTypesItem2 fromValue(String value) {
    for (final item in ServingConfigSolutionTypesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServingConfigSolutionTypesItem2 value: $value');
  }
}
