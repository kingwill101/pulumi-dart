import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of API.
enum ApiType implements pulumi.PulumiEnum<String> {
  valueHttp("http"),
  valueSoap("soap"),
  valueWebsocket("websocket"),
  valueGraphql("graphql"),
  valueOdata("odata"),
  valueGrpc("grpc");

  const ApiType(this.wireValue);
  @override
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
