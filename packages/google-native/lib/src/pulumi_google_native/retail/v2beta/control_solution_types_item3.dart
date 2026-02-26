enum ControlSolutionTypesItem3 {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ControlSolutionTypesItem3(this.value);
  final String value;

  static ControlSolutionTypesItem3 fromValue(String value) {
    for (final item in ControlSolutionTypesItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSolutionTypesItem3 value: $value');
  }
}
