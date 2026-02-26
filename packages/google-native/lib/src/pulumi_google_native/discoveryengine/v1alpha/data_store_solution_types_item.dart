enum DataStoreSolutionTypesItem {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH"),
  solutionTypeChat("SOLUTION_TYPE_CHAT");

  const DataStoreSolutionTypesItem(this.value);
  final String value;

  static DataStoreSolutionTypesItem fromValue(String value) {
    for (final item in DataStoreSolutionTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStoreSolutionTypesItem value: $value');
  }
}
