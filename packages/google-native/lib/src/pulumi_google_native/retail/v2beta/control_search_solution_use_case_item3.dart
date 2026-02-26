enum ControlSearchSolutionUseCaseItem3 {
  searchSolutionUseCaseUnspecified("SEARCH_SOLUTION_USE_CASE_UNSPECIFIED"),
  searchSolutionUseCaseSearch("SEARCH_SOLUTION_USE_CASE_SEARCH"),
  searchSolutionUseCaseBrowse("SEARCH_SOLUTION_USE_CASE_BROWSE");

  const ControlSearchSolutionUseCaseItem3(this.value);
  final String value;

  static ControlSearchSolutionUseCaseItem3 fromValue(String value) {
    for (final item in ControlSearchSolutionUseCaseItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ControlSearchSolutionUseCaseItem3 value: $value');
  }
}
