/// The status of the token example enabled or disabled.
enum TokenStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const TokenStatus(this.wireValue);
  final String wireValue;

  static TokenStatus fromValue(String value) {
    for (final item in TokenStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenStatus value: $value');
  }
}
