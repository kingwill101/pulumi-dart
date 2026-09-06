import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum RequestSchemeMatchConditionParametersOperator implements pulumi.PulumiEnum<String> {
  equal("Equal");

  const RequestSchemeMatchConditionParametersOperator(this.wireValue);
  @override
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
