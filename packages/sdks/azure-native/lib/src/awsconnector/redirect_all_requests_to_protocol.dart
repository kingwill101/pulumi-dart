import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
enum RedirectAllRequestsToProtocol implements pulumi.PulumiEnum<String> {
  http("http"),
  https("https");

  const RedirectAllRequestsToProtocol(this.wireValue);
  @override
  final String wireValue;

  static RedirectAllRequestsToProtocol fromValue(String value) {
    for (final item in RedirectAllRequestsToProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedirectAllRequestsToProtocol value: $value');
  }
}
