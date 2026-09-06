import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
enum RedirectRuleProtocol implements pulumi.PulumiEnum<String> {
  http("http"),
  https("https");

  const RedirectRuleProtocol(this.wireValue);
  @override
  final String wireValue;

  static RedirectRuleProtocol fromValue(String value) {
    for (final item in RedirectRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedirectRuleProtocol value: $value');
  }
}
