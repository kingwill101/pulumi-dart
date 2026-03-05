/// Type of the CDC attribute mapping. Note: 'Advanced' mapping type is also saved as 'Derived'.
enum MappingType {
  valueDirect("Direct"),
  valueDerived("Derived"),
  valueAggregate("Aggregate");

  const MappingType(this.wireValue);
  final String wireValue;

  static MappingType fromValue(String value) {
    for (final item in MappingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MappingType value: $value');
  }
}

