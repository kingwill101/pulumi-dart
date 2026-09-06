import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator specifies the relationship between a cluster's observed value of the specified property and the values given in the requirement.
enum PropertySelectorOperator implements pulumi.PulumiEnum<String> {
  gt("Gt"),
  ge("Ge"),
  eq("Eq"),
  ne("Ne"),
  lt("Lt"),
  le("Le");

  const PropertySelectorOperator(this.wireValue);
  @override
  final String wireValue;

  static PropertySelectorOperator fromValue(String value) {
    for (final item in PropertySelectorOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertySelectorOperator value: $value');
  }
}
