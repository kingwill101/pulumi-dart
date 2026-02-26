enum ControlSolutionTypesItem {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ControlSolutionTypesItem(this.value);
  final String value;

  static ControlSolutionTypesItem fromValue(String value) {
    for (final item in ControlSolutionTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSolutionTypesItem value: $value');
  }
}
