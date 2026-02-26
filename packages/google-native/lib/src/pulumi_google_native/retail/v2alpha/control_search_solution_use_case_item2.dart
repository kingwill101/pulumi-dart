enum ControlSearchSolutionUseCaseItem2 {
  searchSolutionUseCaseUnspecified("SEARCH_SOLUTION_USE_CASE_UNSPECIFIED"),
  searchSolutionUseCaseSearch("SEARCH_SOLUTION_USE_CASE_SEARCH"),
  searchSolutionUseCaseBrowse("SEARCH_SOLUTION_USE_CASE_BROWSE");

  const ControlSearchSolutionUseCaseItem2(this.value);
  final String value;

  static ControlSearchSolutionUseCaseItem2 fromValue(String value) {
    for (final item in ControlSearchSolutionUseCaseItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ControlSearchSolutionUseCaseItem2 value: $value');
  }
}
