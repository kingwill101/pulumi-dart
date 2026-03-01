/// The type of this network, either Client or Private.
enum NetworkConfigType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  client("CLIENT"),
  private("PRIVATE");

  const NetworkConfigType(this.value);
  final String value;

  static NetworkConfigType fromValue(String value) {
    for (final item in NetworkConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigType value: $value');
  }
}
