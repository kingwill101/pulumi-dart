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

  const DatastoreTypeArm(this.wireValue);
  final String wireValue;

  static DatastoreTypeArm fromValue(String value) {
    for (final item in DatastoreTypeArm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatastoreTypeArm value: $value');
  }
}

