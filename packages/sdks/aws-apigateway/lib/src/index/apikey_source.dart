enum APIKeySource {
  valueHEADER("HEADER"),
  valueAUTHORIZER("AUTHORIZER");

  const APIKeySource(this.value);
  final String value;

  static APIKeySource fromValue(String value) {
    for (final item in APIKeySource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown APIKeySource value: $value');
  }
}

