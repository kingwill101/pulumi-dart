enum ServingConfigSolutionTypesItem {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ServingConfigSolutionTypesItem(this.value);
  final String value;

  static ServingConfigSolutionTypesItem fromValue(String value) {
    for (final item in ServingConfigSolutionTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigSolutionTypesItem value: $value');
  }
}
