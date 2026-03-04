/// Describes operator to be matched
enum SslProtocolOperator {
  equal("Equal");

  const SslProtocolOperator(this.wireValue);
  final String wireValue;

  static SslProtocolOperator fromValue(String value) {
    for (final item in SslProtocolOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslProtocolOperator value: $value');
  }
}
