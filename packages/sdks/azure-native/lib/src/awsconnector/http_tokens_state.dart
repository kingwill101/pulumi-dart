/// Property value
enum HttpTokensState {
  optional("optional"),
  required("required");

  const HttpTokensState(this.wireValue);
  final String wireValue;

  static HttpTokensState fromValue(String value) {
    for (final item in HttpTokensState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTokensState value: $value');
  }
}
