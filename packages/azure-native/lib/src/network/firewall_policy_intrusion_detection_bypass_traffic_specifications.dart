// ignore_for_file: unused_element, unnecessary_cast


/// Intrusion detection bypass traffic specification.
class FirewallPolicyIntrusionDetectionBypassTrafficSpecifications {
  /// Description of the bypass traffic rule.
  final String? description;
  /// List of destination IP addresses or ranges for this rule.
  final List<String>? destinationAddresses;
  /// List of destination IpGroups for this rule.
  final List<String>? destinationIpGroups;
  /// List of destination ports or ranges.
  final List<String>? destinationPorts;
  /// Name of the bypass traffic rule.
  final String? name;
  /// The rule bypass protocol.
  final String? protocol;
  /// List of source IP addresses or ranges for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;

  /// Creates a new [FirewallPolicyIntrusionDetectionBypassTrafficSpecifications].
  /// [description] Description of the bypass traffic rule.
  /// [destinationAddresses] List of destination IP addresses or ranges for this rule.
  /// [destinationIpGroups] List of destination IpGroups for this rule.
  /// [destinationPorts] List of destination ports or ranges.
  /// [name] Name of the bypass traffic rule.
  /// [protocol] The rule bypass protocol.
  /// [sourceAddresses] List of source IP addresses or ranges for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  FirewallPolicyIntrusionDetectionBypassTrafficSpecifications({
    this.description,
    this.destinationAddresses,
    this.destinationIpGroups,
    this.destinationPorts,
    this.name,
    this.protocol,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationIpGroups': ?destinationIpGroups,
      'destinationPorts': ?destinationPorts,
      'name': ?name,
      'protocol': ?protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
    };
  }

  factory FirewallPolicyIntrusionDetectionBypassTrafficSpecifications.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionBypassTrafficSpecifications(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : (map['destinationIpGroups'] as List).cast<String>(),
      destinationPorts: map['destinationPorts'] == null ? null : (map['destinationPorts'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
    );
  }
}

