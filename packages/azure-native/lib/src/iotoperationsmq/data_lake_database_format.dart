/// DataLake database format to use.
enum DataLakeDatabaseFormat {
  delta("delta"),
  parquet("parquet");

  const DataLakeDatabaseFormat(this.value);
  final String value;

  static DataLakeDatabaseFormat fromValue(String value) {
    for (final item in DataLakeDatabaseFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataLakeDatabaseFormat value: $value');
  }
}

