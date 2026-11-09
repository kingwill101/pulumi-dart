import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator used in the filtering condition.
enum SliConditionOperator implements pulumi.PulumiEnum<String> {
  equal("eq"),
  notEqual("ne"),
  lessThan("lt"),
  lessThanOrEqual("lte"),
  greaterThan("gt"),
  greaterThanOrEqual("gte"),
  in_("in"),
  notIn("notin"),
  startsWith("startswith"),
  notStartsWith("notstartswith"),
  contains("contains"),
  notContains("notcontains");

  const SliConditionOperator(this.wireValue);
  @override
  final String wireValue;

  static SliConditionOperator fromValue(String value) {
    for (final item in SliConditionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SliConditionOperator value: $value');
  }
}
