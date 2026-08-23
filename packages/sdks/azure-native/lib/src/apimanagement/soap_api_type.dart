/// Type of API to create.
/// * `http` creates a REST API
/// * `soap` creates a SOAP pass-through API
/// * `websocket` creates websocket API
/// * `graphql` creates GraphQL API.
/// New types can be added in the future.
enum SoapApiType {
  soapToRest("http"),
  soapPassThrough("soap"),
  webSocket("websocket"),
  graphQL("graphql"),
  oData("odata"),
  gRPC("grpc");

  const SoapApiType(this.wireValue);
  final String wireValue;

  static SoapApiType fromValue(String value) {
    for (final item in SoapApiType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoapApiType value: $value');
  }
}
