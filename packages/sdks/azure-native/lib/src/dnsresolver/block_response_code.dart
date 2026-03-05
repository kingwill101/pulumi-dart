/// The response code for block actions.
enum BlockResponseCode {
  valueSERVFAIL("SERVFAIL");

  const BlockResponseCode(this.wireValue);
  final String wireValue;

  static BlockResponseCode fromValue(String value) {
    for (final item in BlockResponseCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlockResponseCode value: $value');
  }
}

