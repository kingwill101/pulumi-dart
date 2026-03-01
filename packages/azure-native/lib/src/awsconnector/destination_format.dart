/// Specifies the file format used when exporting data to Amazon S3.  *Allowed values*: ``CSV`` | ``ORC`` | ``Parquet``
enum DestinationFormat {
  cSV("CSV"),
  oRC("ORC"),
  parquet("Parquet");

  const DestinationFormat(this.value);
  final String value;

  static DestinationFormat fromValue(String value) {
    for (final item in DestinationFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationFormat value: $value');
  }
}

