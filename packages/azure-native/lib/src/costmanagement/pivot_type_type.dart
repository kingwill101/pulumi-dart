/// Data type to show in view.
enum PivotTypeType {
  valueDimension("Dimension"),
  valueTagKey("TagKey");

  const PivotTypeType(this.value);
  final String value;

  static PivotTypeType fromValue(String value) {
    for (final item in PivotTypeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PivotTypeType value: $value');
  }
}

