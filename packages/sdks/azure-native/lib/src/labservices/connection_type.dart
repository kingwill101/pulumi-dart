/// The enabled access level for Web Access over SSH.
enum ConnectionType {
  valuePublic("Public"),
  valuePrivate("Private"),
  valueNone("None");

  const ConnectionType(this.wireValue);
  final String wireValue;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}

