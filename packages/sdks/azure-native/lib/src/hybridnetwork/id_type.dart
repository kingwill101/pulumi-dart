/// The resource reference arm id type.
enum IdType {
  valueUnknown("Unknown"),
  valueOpen("Open"),
  valueSecret("Secret");

  const IdType(this.wireValue);
  final String wireValue;

  static IdType fromValue(String value) {
    for (final item in IdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdType value: $value');
  }
}
