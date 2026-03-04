/// Describes operator to be matched
enum SocketAddrOperator {
  any("Any"),
  iPMatch("IPMatch");

  const SocketAddrOperator(this.wireValue);
  final String wireValue;

  static SocketAddrOperator fromValue(String value) {
    for (final item in SocketAddrOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SocketAddrOperator value: $value');
  }
}
