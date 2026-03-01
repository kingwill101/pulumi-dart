// ignore_for_file: unused_element, unnecessary_cast


/// Base type for destination rules.
class CommunityEndpointDestinationRule {
  /// Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  final String? destination;
  /// Destination Type.
  final String? destinationType;
  /// Endpoint Rule Name.
  final String? endpointRuleName;
  /// Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  final String? ports;
  /// Protocols. Options specified by Endpoint Protocol Enum.
  final List<String>? protocols;
  /// Transit Hub Resource Id.
  final String? transitHubResourceId;

  /// Creates a new [CommunityEndpointDestinationRule].
  /// [destination] Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  /// [destinationType] Destination Type.
  /// [endpointRuleName] Endpoint Rule Name.
  /// [ports] Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  /// [protocols] Protocols. Options specified by Endpoint Protocol Enum.
  /// [transitHubResourceId] Transit Hub Resource Id.
  CommunityEndpointDestinationRule({
    this.destination,
    this.destinationType,
    this.endpointRuleName,
    this.ports,
    this.protocols,
    this.transitHubResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'destinationType': ?destinationType,
      'endpointRuleName': ?endpointRuleName,
      'ports': ?ports,
      'protocols': ?protocols,
      'transitHubResourceId': ?transitHubResourceId,
    };
  }

  factory CommunityEndpointDestinationRule.fromMap(Map<String, dynamic> map) {
    return CommunityEndpointDestinationRule(
      destination: map['destination'] == null ? null : map['destination'] as String,
      destinationType: map['destinationType'] == null ? null : map['destinationType'] as String,
      endpointRuleName: map['endpointRuleName'] == null ? null : map['endpointRuleName'] as String,
      ports: map['ports'] == null ? null : map['ports'] as String,
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<String>(),
      transitHubResourceId: map['transitHubResourceId'] == null ? null : map['transitHubResourceId'] as String,
    );
  }
}

