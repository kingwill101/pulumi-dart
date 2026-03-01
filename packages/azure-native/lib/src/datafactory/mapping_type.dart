/// Type of the CDC attribute mapping. Note: 'Advanced' mapping type is also saved as 'Derived'.
enum MappingType {
  valueDirect("Direct"),
  valueDerived("Derived"),
  valueAggregate("Aggregate");

  const MappingType(this.value);
  final String value;

  static MappingType fromValue(String value) {
    for (final item in MappingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MappingType value: $value');
  }
}

