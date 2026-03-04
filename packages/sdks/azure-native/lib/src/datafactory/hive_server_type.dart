/// The type of Hive server.
enum HiveServerType {
  valueHiveServer1("HiveServer1"),
  valueHiveServer2("HiveServer2"),
  valueHiveThriftServer("HiveThriftServer");

  const HiveServerType(this.wireValue);
  final String wireValue;

  static HiveServerType fromValue(String value) {
    for (final item in HiveServerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveServerType value: $value');
  }
}
