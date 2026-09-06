// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the network rule.
class AzureFirewallNetworkRuleResponse {
  /// Description of the rule.
  final pulumi.Input<String?>? description;
  /// List of destination IP addresses.
  final pulumi.Input<List<String>?>? destinationAddresses;
  /// List of destination FQDNs.
  final pulumi.Input<List<String>?>? destinationFqdns;
  /// List of destination IpGroups for this rule.
  final pulumi.Input<List<String>?>? destinationIpGroups;
  /// List of destination ports.
  final pulumi.Input<List<String>?>? destinationPorts;
  /// Name of the network rule.
  final pulumi.Input<String?>? name;
  /// Array of AzureFirewallNetworkRuleProtocols.
  final pulumi.Input<List<String>?>? protocols;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>?>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>?>? sourceIpGroups;

  /// Creates a new [AzureFirewallNetworkRuleResponse].
  /// [description] Description of the rule.
  /// [destinationAddresses] List of destination IP addresses.
  /// [destinationFqdns] List of destination FQDNs.
  /// [destinationIpGroups] List of destination IpGroups for this rule.
  /// [destinationPorts] List of destination ports.
  /// [name] Name of the network rule.
  /// [protocols] Array of AzureFirewallNetworkRuleProtocols.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  const AzureFirewallNetworkRuleResponse({
    this.description,
    this.destinationAddresses,
    this.destinationFqdns,
    this.destinationIpGroups,
    this.destinationPorts,
    this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationFqdns': ?destinationFqdns,
      'destinationIpGroups': ?destinationIpGroups,
      'destinationPorts': ?destinationPorts,
      'name': ?name,
      'protocols': ?protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
    };
  }

  factory AzureFirewallNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNetworkRuleResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationFqdns: (() { final guardedValue = map['destinationFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationIpGroups: (() { final guardedValue = map['destinationIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
