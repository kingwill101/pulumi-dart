/// Describes operator to be matched
enum SocketAddrOperator {
  any("Any"),
  iPMatch("IPMatch");

  const SocketAddrOperator(this.value);
  final String value;

  static SocketAddrOperator fromValue(String value) {
    for (final item in SocketAddrOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SocketAddrOperator value: $value');
  }
}

