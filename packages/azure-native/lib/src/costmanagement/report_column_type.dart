/// Has type of the column to group.
enum ReportColumnType {
  valueTag("Tag"),
  valueDimension("Dimension");

  const ReportColumnType(this.value);
  final String value;

  static ReportColumnType fromValue(String value) {
    for (final item in ReportColumnType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportColumnType value: $value');
  }
}

