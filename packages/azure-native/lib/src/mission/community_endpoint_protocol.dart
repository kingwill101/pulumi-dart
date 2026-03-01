/// Community Endpoint Protocol Enum
enum CommunityEndpointProtocol {
  aNY("ANY"),
  tCP("TCP"),
  uDP("UDP"),
  iCMP("ICMP"),
  eSP("ESP"),
  aH("AH"),
  hTTPS("HTTPS"),
  hTTP("HTTP");

  const CommunityEndpointProtocol(this.value);
  final String value;

  static CommunityEndpointProtocol fromValue(String value) {
    for (final item in CommunityEndpointProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommunityEndpointProtocol value: $value');
  }
}

