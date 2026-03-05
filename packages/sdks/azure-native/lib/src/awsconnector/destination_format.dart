/// Specifies the file format used when exporting data to Amazon S3.  *Allowed values*: ``CSV`` | ``ORC`` | ``Parquet``
enum DestinationFormat {
  cSV("CSV"),
  oRC("ORC"),
  parquet("Parquet");

  const DestinationFormat(this.wireValue);
  final String wireValue;

  static DestinationFormat fromValue(String value) {
    for (final item in DestinationFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationFormat value: $value');
  }
}

