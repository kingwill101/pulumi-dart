// ignore_for_file: unused_element, unnecessary_cast


/// Rule of type network.
class NetworkRuleResponse {
  /// Description of the rule.
  final String? description;
  /// List of destination IP addresses or Service Tags.
  final List<String>? destinationAddresses;
  /// List of destination FQDNs.
  final List<String>? destinationFqdns;
  /// List of destination IpGroups for this rule.
  final List<String>? destinationIpGroups;
  /// List of destination ports.
  final List<String>? destinationPorts;
  /// Array of FirewallPolicyRuleNetworkProtocols.
  final List<String>? ipProtocols;
  /// Name of the rule.
  final String? name;
  /// Rule Type.
  /// Expected value is 'NetworkRule'.
  final String ruleType;
  /// List of source IP addresses for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;

  /// Creates a new [NetworkRuleResponse].
  /// [description] Description of the rule.
  /// [destinationAddresses] List of destination IP addresses or Service Tags.
  /// [destinationFqdns] List of destination FQDNs.
  /// [destinationIpGroups] List of destination IpGroups for this rule.
  /// [destinationPorts] List of destination ports.
  /// [ipProtocols] Array of FirewallPolicyRuleNetworkProtocols.
  /// [name] Name of the rule.
  /// [ruleType] Rule Type.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  NetworkRuleResponse({
    this.description,
    this.destinationAddresses,
    this.destinationFqdns,
    this.destinationIpGroups,
    this.destinationPorts,
    this.ipProtocols,
    this.name,
    required this.ruleType,
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
      'ipProtocols': ?ipProtocols,
      'name': ?name,
      'ruleType': ruleType,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
    };
  }

  factory NetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleResponse(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      destinationFqdns: map['destinationFqdns'] == null ? null : (map['destinationFqdns'] as List).cast<String>(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : (map['destinationIpGroups'] as List).cast<String>(),
      destinationPorts: map['destinationPorts'] == null ? null : (map['destinationPorts'] as List).cast<String>(),
      ipProtocols: map['ipProtocols'] == null ? null : (map['ipProtocols'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      ruleType: map['ruleType'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
    );
  }
}

