/// The type of Hive server.
enum HiveServerType {
  hiveServer1("HiveServer1"),
  hiveServer2("HiveServer2"),
  hiveThriftServer("HiveThriftServer");

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
