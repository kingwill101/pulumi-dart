/// Type of API to create.
/// * `http` creates a REST API
/// * `soap` creates a SOAP pass-through API
/// * `websocket` creates websocket API
/// * `graphql` creates GraphQL API.
enum SoapApiType {
  soapToRest("http"),
  soapPassThrough("soap"),
  webSocket("websocket"),
  graphQL("graphql");

  const SoapApiType(this.value);
  final String value;

  static SoapApiType fromValue(String value) {
    for (final item in SoapApiType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoapApiType value: $value');
  }
}

