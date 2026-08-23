/// The type of dataflow operation.
enum FilterType {
  filter("Filter");

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
