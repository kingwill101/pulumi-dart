/// Data source type.
enum SourceType {
  valueDelimitedFiles("delimited_files"),
  valueJsonLinesFiles("json_lines_files"),
  valueParquetFiles("parquet_files");

  const SourceType(this.wireValue);
  final String wireValue;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}
