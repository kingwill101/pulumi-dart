/// Type of API.
enum ApiType {
  valueHttp("http"),
  valueSoap("soap"),
  valueWebsocket("websocket"),
  valueGraphql("graphql");

  const ApiType(this.value);
  final String value;

  static ApiType fromValue(String value) {
    for (final item in ApiType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiType value: $value');
  }
}

