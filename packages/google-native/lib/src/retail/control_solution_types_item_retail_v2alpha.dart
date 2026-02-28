enum ControlSolutionTypesItemRetailV2alpha {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ControlSolutionTypesItemRetailV2alpha(this.value);
  final String value;

  static ControlSolutionTypesItemRetailV2alpha fromValue(String value) {
    for (final item in ControlSolutionTypesItemRetailV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSolutionTypesItemRetailV2alpha value: $value');
  }
}

