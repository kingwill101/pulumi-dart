/// Property value
enum HttpTokensState {
  optional("optional"),
  required("required");

  const HttpTokensState(this.value);
  final String value;

  static HttpTokensState fromValue(String value) {
    for (final item in HttpTokensState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTokensState value: $value');
  }
}

