/// Type of API.
enum ApiType {
  valueHttp("http"),
  valueSoap("soap"),
  valueWebsocket("websocket"),
  valueGraphql("graphql");

  const ApiType(this.wireValue);
  final String wireValue;

  static ApiType fromValue(String value) {
    for (final item in ApiType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiType value: $value');
  }
}

