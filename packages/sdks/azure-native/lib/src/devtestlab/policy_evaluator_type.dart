import 'package:pulumi/pulumi.dart' as pulumi;

/// The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
enum PolicyEvaluatorType implements pulumi.PulumiEnum<String> {
  allowedValuesPolicy("AllowedValuesPolicy"),
  maxValuePolicy("MaxValuePolicy");

  const PolicyEvaluatorType(this.wireValue);
  @override
  final String wireValue;

  static PolicyEvaluatorType fromValue(String value) {
    for (final item in PolicyEvaluatorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyEvaluatorType value: $value');
  }
}
