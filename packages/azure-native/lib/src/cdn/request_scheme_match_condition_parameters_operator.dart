/// Describes operator to be matched
enum RequestSchemeMatchConditionParametersOperator {
  equal("Equal");

  const RequestSchemeMatchConditionParametersOperator(this.value);
  final String value;

  static RequestSchemeMatchConditionParametersOperator fromValue(String value) {
    for (final item in RequestSchemeMatchConditionParametersOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestSchemeMatchConditionParametersOperator value: $value');
  }
}

