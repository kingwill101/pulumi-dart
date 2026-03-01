/// Host cloud the public cloud connector.
enum HostType {
  aWS("AWS");

  const HostType(this.value);
  final String value;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}

