/// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
enum DatabaseDumpType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  avro("AVRO");

  const DatabaseDumpType2(this.value);
  final String value;

  static DatabaseDumpType2 fromValue(String value) {
    for (final item in DatabaseDumpType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpType2 value: $value');
  }
}
