/// Describes the types of schema for analytical storage.
enum AnalyticalStorageSchemaType {
  valueWellDefined("WellDefined"),
  valueFullFidelity("FullFidelity");

  const AnalyticalStorageSchemaType(this.value);
  final String value;

  static AnalyticalStorageSchemaType fromValue(String value) {
    for (final item in AnalyticalStorageSchemaType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticalStorageSchemaType value: $value');
  }
}

