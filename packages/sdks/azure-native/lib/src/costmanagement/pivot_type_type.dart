import 'package:pulumi/pulumi.dart' as pulumi;

/// Data type to show in view.
enum PivotTypeType implements pulumi.PulumiEnum<String> {
  valueDimension("Dimension"),
  valueTagKey("TagKey");

  const PivotTypeType(this.wireValue);
  @override
  final String wireValue;

  static PivotTypeType fromValue(String value) {
    for (final item in PivotTypeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PivotTypeType value: $value');
  }
}
