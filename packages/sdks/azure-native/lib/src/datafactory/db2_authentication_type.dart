/// AuthenticationType to be used for connection. It is mutually exclusive with connectionString property.
enum Db2AuthenticationType {
  valueBasic("Basic");

  const Db2AuthenticationType(this.wireValue);
  final String wireValue;

  static Db2AuthenticationType fromValue(String value) {
    for (final item in Db2AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Db2AuthenticationType value: $value');
  }
}
