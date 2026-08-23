/// Data type to show in view.
enum PivotTypeType {
  valueDimension("Dimension"),
  valueTagKey("TagKey");

  const PivotTypeType(this.wireValue);
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
