/// The function to be used to aggregate the time series target column to conform to a user specified frequency.
/// If the TargetAggregateFunction is set i.e. not 'None', but the freq parameter is not set, the error is raised. The possible target aggregation functions are: "sum", "max", "min" and "mean".
enum TargetAggregationFunction {
  valueNone("None"),
  valueSum("Sum"),
  valueMax("Max"),
  valueMin("Min"),
  valueMean("Mean");

  const TargetAggregationFunction(this.wireValue);
  final String wireValue;

  static TargetAggregationFunction fromValue(String value) {
    for (final item in TargetAggregationFunction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetAggregationFunction value: $value');
  }
}
