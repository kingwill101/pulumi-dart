/// Describes operator to be matched
enum RequestSchemeMatchConditionParametersOperator {
  equal("Equal");

  const RequestSchemeMatchConditionParametersOperator(this.wireValue);
  final String wireValue;

  static RequestSchemeMatchConditionParametersOperator fromValue(String value) {
    for (final item in RequestSchemeMatchConditionParametersOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestSchemeMatchConditionParametersOperator value: $value');
  }
}
