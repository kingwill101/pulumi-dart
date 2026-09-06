import 'package:pulumi/pulumi.dart' as pulumi;

/// Tells Dapr which protocol your application is using. Valid options are http and grpc. Default is http
enum AppProtocol implements pulumi.PulumiEnum<String> {
  valueHttp("http"),
  valueGrpc("grpc");

  const AppProtocol(this.wireValue);
  @override
  final String wireValue;

  static AppProtocol fromValue(String value) {
    for (final item in AppProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppProtocol value: $value');
  }
}
