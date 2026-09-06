import 'package:pulumi/pulumi.dart' as pulumi;

/// The variable to be evaluated for excluding the request.
enum ExceptionMatchVariable implements pulumi.PulumiEnum<String> {
  requestUri("RequestUri"),
  socketAddr("SocketAddr"),
  requestHeaderNames("RequestHeaderNames");

  const ExceptionMatchVariable(this.wireValue);
  @override
  final String wireValue;

  static ExceptionMatchVariable fromValue(String value) {
    for (final item in ExceptionMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionMatchVariable value: $value');
  }
}
