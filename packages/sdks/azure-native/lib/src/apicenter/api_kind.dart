/// Kind of API. For example, REST or GraphQL.
enum ApiKind {
  rest("rest"),
  graphql("graphql"),
  grpc("grpc"),
  soap("soap"),
  webhook("webhook"),
  websocket("websocket");

  const ApiKind(this.value);
  final String value;

  static ApiKind fromValue(String value) {
    for (final item in ApiKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiKind value: $value');
  }
}

