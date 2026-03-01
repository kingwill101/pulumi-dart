// ignore_for_file: unused_element, unnecessary_cast


class FirewallNatRuleCollectionRule {
  /// Specifies a description for the rule.
  final String? description;
  /// A list of destination IP addresses and/or IP ranges.
  final List<String> destinationAddresses;
  /// A list of destination ports.
  final List<String> destinationPorts;
  /// Specifies the name of the rule.
  final String name;
  /// A list of protocols. Possible values are `Any`, `ICMP`, `TCP` and `UDP`. If `action` is `Dnat`, protocols can only be `TCP` and `UDP`.
  final List<String> protocols;
  /// A list of source IP addresses and/or IP ranges.
  final List<String>? sourceAddresses;
  /// A list of source IP Group IDs for the rule.
  ///
  /// > **Note:** At least one of `source_addresses` and `source_ip_groups` must be specified for a rule.
  final List<String>? sourceIpGroups;
  /// The address of the service behind the Firewall.
  final String translatedAddress;
  /// The port of the service behind the Firewall.
  final String translatedPort;

  /// Creates a new [FirewallNatRuleCollectionRule].
  /// [description] Specifies a description for the rule.
  /// [destinationAddresses] A list of destination IP addresses and/or IP ranges.
  /// [destinationPorts] A list of destination ports.
  /// [name] Specifies the name of the rule.
  /// [protocols] A list of protocols. Possible values are `Any`, `ICMP`, `TCP` and `UDP`. If `action` is `Dnat`, protocols can only be `TCP` and `UDP`.
  /// [sourceAddresses] A list of source IP addresses and/or IP ranges.
  /// [sourceIpGroups] A list of source IP Group IDs for the rule.
  /// [translatedAddress] The address of the service behind the Firewall.
  /// [translatedPort] The port of the service behind the Firewall.
  FirewallNatRuleCollectionRule({
    this.description,
    required this.destinationAddresses,
    required this.destinationPorts,
    required this.name,
    required this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    required this.translatedAddress,
    required this.translatedPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': destinationAddresses,
      'destinationPorts': destinationPorts,
      'name': name,
      'protocols': protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'translatedAddress': translatedAddress,
      'translatedPort': translatedPort,
    };
  }

  factory FirewallNatRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallNatRuleCollectionRule(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: (map['destinationAddresses'] as List).cast<String>(),
      destinationPorts: (map['destinationPorts'] as List).cast<String>(),
      name: map['name'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      translatedAddress: map['translatedAddress'] as String,
      translatedPort: map['translatedPort'] as String,
    );
  }
}

