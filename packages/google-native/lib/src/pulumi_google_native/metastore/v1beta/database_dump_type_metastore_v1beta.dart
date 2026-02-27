/// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
enum DatabaseDumpTypeMetastoreV1beta {
  typeUnspecified("TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  avro("AVRO");

  const DatabaseDumpTypeMetastoreV1beta(this.value);
  final String value;

  static DatabaseDumpTypeMetastoreV1beta fromValue(String value) {
    for (final item in DatabaseDumpTypeMetastoreV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DatabaseDumpTypeMetastoreV1beta value: $value');
  }
}
