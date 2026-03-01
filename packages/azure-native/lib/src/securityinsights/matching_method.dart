/// Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
enum MatchingMethod {
  valueAllEntities("AllEntities"),
  valueAnyAlert("AnyAlert"),
  valueSelected("Selected");

  const MatchingMethod(this.value);
  final String value;

  static MatchingMethod fromValue(String value) {
    for (final item in MatchingMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchingMethod value: $value');
  }
}

