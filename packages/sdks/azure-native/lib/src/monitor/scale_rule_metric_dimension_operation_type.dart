/// the dimension operator. Only 'Equals' and 'NotEquals' are supported. 'Equals' being equal to any of the values. 'NotEquals' being not equal to all of the values
enum ScaleRuleMetricDimensionOperationType {
  valueEquals("Equals"),
  valueNotEquals("NotEquals");

  const ScaleRuleMetricDimensionOperationType(this.wireValue);
  final String wireValue;

  static ScaleRuleMetricDimensionOperationType fromValue(String value) {
    for (final item in ScaleRuleMetricDimensionOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ScaleRuleMetricDimensionOperationType value: $value',
    );
  }
}
