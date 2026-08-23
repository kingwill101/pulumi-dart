/// Describes the types of schema for analytical storage.
enum AnalyticalStorageSchemaType {
  valueWellDefined("WellDefined"),
  valueFullFidelity("FullFidelity");

  const AnalyticalStorageSchemaType(this.wireValue);
  final String wireValue;

  static AnalyticalStorageSchemaType fromValue(String value) {
    for (final item in AnalyticalStorageSchemaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticalStorageSchemaType value: $value');
  }
}
