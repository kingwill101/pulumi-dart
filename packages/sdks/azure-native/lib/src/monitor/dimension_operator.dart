import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator for dimension values
enum DimensionOperator implements pulumi.PulumiEnum<String> {
  valueInclude("Include"),
  valueExclude("Exclude");

  const DimensionOperator(this.wireValue);
  @override
  final String wireValue;

  static DimensionOperator fromValue(String value) {
    for (final item in DimensionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DimensionOperator value: $value');
  }
}
