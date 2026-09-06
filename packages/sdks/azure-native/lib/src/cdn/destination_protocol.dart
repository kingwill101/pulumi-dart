import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol to use for the redirect. The default value is MatchRequest
enum DestinationProtocol implements pulumi.PulumiEnum<String> {
  matchRequest("MatchRequest"),
  http("Http"),
  https("Https");

  const DestinationProtocol(this.wireValue);
  @override
  final String wireValue;

  static DestinationProtocol fromValue(String value) {
    for (final item in DestinationProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationProtocol value: $value');
  }
}
