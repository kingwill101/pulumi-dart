/// The response code for block actions.
enum BlockResponseCode {
  valueSERVFAIL("SERVFAIL");

  const BlockResponseCode(this.value);
  final String value;

  static BlockResponseCode fromValue(String value) {
    for (final item in BlockResponseCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlockResponseCode value: $value');
  }
}

