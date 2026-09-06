import 'package:pulumi/pulumi.dart' as pulumi;

/// the dimension operator. Only 'Equals' and 'NotEquals' are supported. 'Equals' being equal to any of the values. 'NotEquals' being not equal to all of the values
enum ScaleRuleMetricDimensionOperationType implements pulumi.PulumiEnum<String> {
  valueEquals("Equals"),
  valueNotEquals("NotEquals");

  const ScaleRuleMetricDimensionOperationType(this.wireValue);
  @override
  final String wireValue;

  static ScaleRuleMetricDimensionOperationType fromValue(String value) {
    for (final item in ScaleRuleMetricDimensionOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleRuleMetricDimensionOperationType value: $value');
  }
}
