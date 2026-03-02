// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enclave Endpoint Rule Properties
class EnclaveEndpointDestinationRule {
  /// Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  final pulumi.Input<String>? destination;
  /// Endpoint Rule Name.
  final pulumi.Input<String>? endpointRuleName;
  /// Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  final pulumi.Input<String>? ports;
  /// Protocols. Options specified by Endpoint Protocol Enum.
  final pulumi.Input<List<String>>? protocols;

  /// Creates a new [EnclaveEndpointDestinationRule].
  /// [destination] Destination address. Can include multiple CIDR/IP Addresses or fqdn tags or fqdns (for community endpoint) separated by commas.
  /// [endpointRuleName] Endpoint Rule Name.
  /// [ports] Port. Can include multiple ports separated by commas or a range indicated by a hyphen.
  /// [protocols] Protocols. Options specified by Endpoint Protocol Enum.
  EnclaveEndpointDestinationRule({
    this.destination,
    this.endpointRuleName,
    this.ports,
    this.protocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'endpointRuleName': ?endpointRuleName,
      'ports': ?ports,
      'protocols': ?protocols,
    };
  }

  factory EnclaveEndpointDestinationRule.fromMap(Map<String, dynamic> map) {
    return EnclaveEndpointDestinationRule(
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      endpointRuleName: map['endpointRuleName'] == null ? null : (map['endpointRuleName']! as String).input(),
      ports: map['ports'] == null ? null : (map['ports']! as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols']! as List).cast<String>()).input(),
    );
  }
}

