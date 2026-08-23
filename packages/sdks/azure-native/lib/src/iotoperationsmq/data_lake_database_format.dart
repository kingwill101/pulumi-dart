/// DataLake database format to use.
enum DataLakeDatabaseFormat {
  delta("delta"),
  parquet("parquet");

  const DataLakeDatabaseFormat(this.wireValue);
  final String wireValue;

  static DataLakeDatabaseFormat fromValue(String value) {
    for (final item in DataLakeDatabaseFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataLakeDatabaseFormat value: $value');
  }
}
