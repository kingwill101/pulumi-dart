// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base type for destination rules.
class CommunityEndpointDestinationRule {
  /// Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  final pulumi.Input<String?>? destination;
  /// Destination Type.
  final pulumi.Input<dynamic>? destinationType;
  /// Endpoint Rule Name.
  final pulumi.Input<String?>? endpointRuleName;
  /// Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  final pulumi.Input<String?>? ports;
  /// Protocols. Options specified by Endpoint Protocol Enum.
  final pulumi.Input<List<dynamic>?>? protocols;
  /// Transit Hub Resource Id.
  final pulumi.Input<String?>? transitHubResourceId;

  /// Creates a new [CommunityEndpointDestinationRule].
  /// [destination] Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  /// [destinationType] Destination Type.
  /// [endpointRuleName] Endpoint Rule Name.
  /// [ports] Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  /// [protocols] Protocols. Options specified by Endpoint Protocol Enum.
  /// [transitHubResourceId] Transit Hub Resource Id.
  const CommunityEndpointDestinationRule({
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
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      endpointRuleName: (() { final guardedValue = map['endpointRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      transitHubResourceId: (() { final guardedValue = map['transitHubResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
