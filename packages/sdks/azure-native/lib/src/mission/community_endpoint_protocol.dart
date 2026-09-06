import 'package:pulumi/pulumi.dart' as pulumi;

/// Community Endpoint Protocol Enum
enum CommunityEndpointProtocol implements pulumi.PulumiEnum<String> {
  aNY("ANY"),
  tCP("TCP"),
  uDP("UDP"),
  iCMP("ICMP"),
  eSP("ESP"),
  aH("AH"),
  hTTPS("HTTPS"),
  hTTP("HTTP");

  const CommunityEndpointProtocol(this.wireValue);
  @override
  final String wireValue;

  static CommunityEndpointProtocol fromValue(String value) {
    for (final item in CommunityEndpointProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommunityEndpointProtocol value: $value');
  }
}
