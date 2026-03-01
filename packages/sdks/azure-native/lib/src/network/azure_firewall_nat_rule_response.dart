// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a NAT rule.
class AzureFirewallNatRuleResponse {
  /// Description of the rule.
  final String? description;
  /// List of destination IP addresses for this rule. Supports IP ranges, prefixes, and service tags.
  final List<String>? destinationAddresses;
  /// List of destination ports.
  final List<String>? destinationPorts;
  /// Name of the NAT rule.
  final String? name;
  /// Array of AzureFirewallNetworkRuleProtocols applicable to this NAT rule.
  final List<String>? protocols;
  /// List of source IP addresses for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;
  /// The translated address for this NAT rule.
  final String? translatedAddress;
  /// The translated FQDN for this NAT rule.
  final String? translatedFqdn;
  /// The translated port for this NAT rule.
  final String? translatedPort;

  /// Creates a new [AzureFirewallNatRuleResponse].
  /// [description] Description of the rule.
  /// [destinationAddresses] List of destination IP addresses for this rule. Supports IP ranges, prefixes, and service tags.
  /// [destinationPorts] List of destination ports.
  /// [name] Name of the NAT rule.
  /// [protocols] Array of AzureFirewallNetworkRuleProtocols applicable to this NAT rule.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [translatedAddress] The translated address for this NAT rule.
  /// [translatedFqdn] The translated FQDN for this NAT rule.
  /// [translatedPort] The translated port for this NAT rule.
  AzureFirewallNatRuleResponse({
    this.description,
    this.destinationAddresses,
    this.destinationPorts,
    this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.translatedAddress,
    this.translatedFqdn,
    this.translatedPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationPorts': ?destinationPorts,
      'name': ?name,
      'protocols': ?protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'translatedAddress': ?translatedAddress,
      'translatedFqdn': ?translatedFqdn,
      'translatedPort': ?translatedPort,
    };
  }

  factory AzureFirewallNatRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRuleResponse(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      destinationPorts: map['destinationPorts'] == null ? null : (map['destinationPorts'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<String>(),
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      translatedAddress: map['translatedAddress'] == null ? null : map['translatedAddress'] as String,
      translatedFqdn: map['translatedFqdn'] == null ? null : map['translatedFqdn'] as String,
      translatedPort: map['translatedPort'] == null ? null : map['translatedPort'] as String,
    );
  }
}

