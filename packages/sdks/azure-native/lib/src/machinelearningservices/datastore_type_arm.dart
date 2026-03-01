/// Specifies datastore type.
enum DatastoreTypeArm {
  valueBlob("blob"),
  valueAdls("adls"),
  valueAdlsGen2("adls-gen2"),
  valueDbfs("dbfs"),
  valueFile("file"),
  valueMysqldb("mysqldb"),
  valueSqldb("sqldb"),
  valuePsqldb("psqldb");

  const DatastoreTypeArm(this.value);
  final String value;

  static DatastoreTypeArm fromValue(String value) {
    for (final item in DatastoreTypeArm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatastoreTypeArm value: $value');
  }
}

