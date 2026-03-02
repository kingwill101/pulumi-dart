// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the network rule.
class AzureFirewallNetworkRule {
  /// Description of the rule.
  final pulumi.Input<String>? description;
  /// List of destination IP addresses.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// List of destination FQDNs.
  final pulumi.Input<List<String>>? destinationFqdns;
  /// List of destination IpGroups for this rule.
  final pulumi.Input<List<String>>? destinationIpGroups;
  /// List of destination ports.
  final pulumi.Input<List<String>>? destinationPorts;
  /// Name of the network rule.
  final pulumi.Input<String>? name;
  /// Array of AzureFirewallNetworkRuleProtocols.
  final pulumi.Input<List<String>>? protocols;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>>? sourceIpGroups;

  /// Creates a new [AzureFirewallNetworkRule].
  /// [description] Description of the rule.
  /// [destinationAddresses] List of destination IP addresses.
  /// [destinationFqdns] List of destination FQDNs.
  /// [destinationIpGroups] List of destination IpGroups for this rule.
  /// [destinationPorts] List of destination ports.
  /// [name] Name of the network rule.
  /// [protocols] Array of AzureFirewallNetworkRuleProtocols.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  AzureFirewallNetworkRule({
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

  factory AzureFirewallNetworkRule.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNetworkRule(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses']! as List).cast<String>()).input(),
      destinationFqdns: map['destinationFqdns'] == null ? null : ((map['destinationFqdns']! as List).cast<String>()).input(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : ((map['destinationIpGroups']! as List).cast<String>()).input(),
      destinationPorts: map['destinationPorts'] == null ? null : ((map['destinationPorts']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols']! as List).cast<String>()).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses']! as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups']! as List).cast<String>()).input(),
    );
  }
}

