import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol this rule will use when forwarding traffic to backends.
enum ForwardingProtocol implements pulumi.PulumiEnum<String> {
  httpOnly("HttpOnly"),
  httpsOnly("HttpsOnly"),
  matchRequest("MatchRequest");

  const ForwardingProtocol(this.wireValue);
  @override
  final String wireValue;

  static ForwardingProtocol fromValue(String value) {
    for (final item in ForwardingProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingProtocol value: $value');
  }
}
