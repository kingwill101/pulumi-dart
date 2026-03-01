/// The enabled access level for Web Access over SSH.
enum ConnectionType {
  valuePublic("Public"),
  valuePrivate("Private"),
  valueNone("None");

  const ConnectionType(this.value);
  final String value;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}

