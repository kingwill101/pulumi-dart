import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of API. For example, REST or GraphQL.
enum ApiKind implements pulumi.PulumiEnum<String> {
  rest("rest"),
  graphql("graphql"),
  grpc("grpc"),
  soap("soap"),
  webhook("webhook"),
  websocket("websocket");

  const ApiKind(this.wireValue);
  @override
  final String wireValue;

  static ApiKind fromValue(String value) {
    for (final item in ApiKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiKind value: $value');
  }
}
