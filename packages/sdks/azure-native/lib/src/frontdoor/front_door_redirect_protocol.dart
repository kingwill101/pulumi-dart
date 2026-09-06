import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol of the destination to where the traffic is redirected
enum FrontDoorRedirectProtocol implements pulumi.PulumiEnum<String> {
  httpOnly("HttpOnly"),
  httpsOnly("HttpsOnly"),
  matchRequest("MatchRequest");

  const FrontDoorRedirectProtocol(this.wireValue);
  @override
  final String wireValue;

  static FrontDoorRedirectProtocol fromValue(String value) {
    for (final item in FrontDoorRedirectProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorRedirectProtocol value: $value');
  }
}
