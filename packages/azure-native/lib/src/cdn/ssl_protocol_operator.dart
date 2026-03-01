/// Describes operator to be matched
enum SslProtocolOperator {
  equal("Equal");

  const SslProtocolOperator(this.value);
  final String value;

  static SslProtocolOperator fromValue(String value) {
    for (final item in SslProtocolOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslProtocolOperator value: $value');
  }
}

