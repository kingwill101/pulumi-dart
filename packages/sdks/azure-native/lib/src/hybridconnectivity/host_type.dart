/// Host cloud the public cloud connector.
enum HostType {
  aWS("AWS");

  const HostType(this.wireValue);
  final String wireValue;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}

