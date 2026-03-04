/// Has type of the column to group.
enum ReportColumnType {
  valueTag("Tag"),
  valueDimension("Dimension");

  const ReportColumnType(this.wireValue);
  final String wireValue;

  static ReportColumnType fromValue(String value) {
    for (final item in ReportColumnType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportColumnType value: $value');
  }
}
