enum ControlSolutionTypesItem2 {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ControlSolutionTypesItem2(this.value);
  final String value;

  static ControlSolutionTypesItem2 fromValue(String value) {
    for (final item in ControlSolutionTypesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSolutionTypesItem2 value: $value');
  }
}
