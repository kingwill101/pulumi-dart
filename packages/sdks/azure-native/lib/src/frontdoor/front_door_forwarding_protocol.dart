import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol this rule will use when forwarding traffic to backends.
enum FrontDoorForwardingProtocol implements pulumi.PulumiEnum<String> {
  httpOnly("HttpOnly"),
  httpsOnly("HttpsOnly"),
  matchRequest("MatchRequest");

  const FrontDoorForwardingProtocol(this.wireValue);
  @override
  final String wireValue;

  static FrontDoorForwardingProtocol fromValue(String value) {
    for (final item in FrontDoorForwardingProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorForwardingProtocol value: $value');
  }
}
