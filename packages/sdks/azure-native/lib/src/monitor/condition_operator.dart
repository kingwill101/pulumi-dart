import 'package:pulumi/pulumi.dart' as pulumi;

/// The criteria operator. Relevant and required only for rules of the kind LogAlert.
enum ConditionOperator implements pulumi.PulumiEnum<String> {
  valueEquals("Equals"),
  valueGreaterThan("GreaterThan"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueLessThan("LessThan"),
  valueLessThanOrEqual("LessThanOrEqual"),
  valueGreaterOrLessThan("GreaterOrLessThan");

  const ConditionOperator(this.wireValue);
  @override
  final String wireValue;

  static ConditionOperator fromValue(String value) {
    for (final item in ConditionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOperator value: $value');
  }
}
