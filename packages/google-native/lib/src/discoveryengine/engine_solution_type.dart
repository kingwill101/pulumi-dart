/// Required. The solutions of the engine.
enum EngineSolutionType {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH"),
  solutionTypeChat("SOLUTION_TYPE_CHAT");

  const EngineSolutionType(this.value);
  final String value;

  static EngineSolutionType fromValue(String value) {
    for (final item in EngineSolutionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineSolutionType value: $value');
  }
}
