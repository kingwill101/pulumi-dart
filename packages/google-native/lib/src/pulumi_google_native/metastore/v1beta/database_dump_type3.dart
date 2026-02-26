/// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
enum DatabaseDumpType3 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  avro("AVRO");

  const DatabaseDumpType3(this.value);
  final String value;

  static DatabaseDumpType3 fromValue(String value) {
    for (final item in DatabaseDumpType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpType3 value: $value');
  }
}
