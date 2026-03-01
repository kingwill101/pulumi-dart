/// AuthenticationType to be used for connection. It is mutually exclusive with connectionString property.
enum Db2AuthenticationType {
  valueBasic("Basic");

  const Db2AuthenticationType(this.value);
  final String value;

  static Db2AuthenticationType fromValue(String value) {
    for (final item in Db2AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Db2AuthenticationType value: $value');
  }
}

