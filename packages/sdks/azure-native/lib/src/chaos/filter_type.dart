/// Enum that discriminates between filter types. Currently only `Simple` type is supported.
enum FilterType {
  valueSimple("Simple");

  const FilterType(this.wireValue);
  final String wireValue;

  static FilterType fromValue(String value) {
    for (final item in FilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterType value: $value');
  }
}
