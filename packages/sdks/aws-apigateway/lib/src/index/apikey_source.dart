enum APIKeySource {
  valueHEADER("HEADER"),
  valueAUTHORIZER("AUTHORIZER");

  const APIKeySource(this.wireValue);
  final String wireValue;

  static APIKeySource fromValue(String value) {
    for (final item in APIKeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown APIKeySource value: $value');
  }
}

