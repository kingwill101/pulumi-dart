/// Immutable. The type of data this data collector will collect.
enum DataCollectorType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  integer("INTEGER"),
  float("FLOAT"),
  string("STRING"),
  boolean("BOOLEAN"),
  datetime("DATETIME");

  const DataCollectorType(this.value);
  final String value;

  static DataCollectorType fromValue(String value) {
    for (final item in DataCollectorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataCollectorType value: $value');
  }
}
