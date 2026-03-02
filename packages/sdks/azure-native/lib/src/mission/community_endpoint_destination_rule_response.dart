// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base type for destination rules.
class CommunityEndpointDestinationRuleResponse {
  /// Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  final pulumi.Input<String>? destination;
  /// Destination Type.
  final pulumi.Input<String>? destinationType;
  /// Endpoint Rule Name.
  final pulumi.Input<String>? endpointRuleName;
  /// Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  final pulumi.Input<String>? ports;
  /// Protocols. Options specified by Endpoint Protocol Enum.
  final pulumi.Input<List<String>>? protocols;
  /// Transit Hub Resource Id.
  final pulumi.Input<String>? transitHubResourceId;

  /// Creates a new [CommunityEndpointDestinationRuleResponse].
  /// [destination] Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  /// [destinationType] Destination Type.
  /// [endpointRuleName] Endpoint Rule Name.
  /// [ports] Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  /// [protocols] Protocols. Options specified by Endpoint Protocol Enum.
  /// [transitHubResourceId] Transit Hub Resource Id.
  CommunityEndpointDestinationRuleResponse({
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

  factory CommunityEndpointDestinationRuleResponse.fromMap(Map<String, dynamic> map) {
    return CommunityEndpointDestinationRuleResponse(
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      destinationType: map['destinationType'] == null ? null : (map['destinationType']! as String).input(),
      endpointRuleName: map['endpointRuleName'] == null ? null : (map['endpointRuleName']! as String).input(),
      ports: map['ports'] == null ? null : (map['ports']! as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols']! as List).cast<String>()).input(),
      transitHubResourceId: map['transitHubResourceId'] == null ? null : (map['transitHubResourceId']! as String).input(),
    );
  }
}

