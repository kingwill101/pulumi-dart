// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkSecurityGroupSecurityRule {
  /// Is network traffic is allowed or denied?
  final String access;
  /// The description for this rule.
  final String description;
  /// CIDR or destination IP range or * to match any IP.
  final String destinationAddressPrefix;
  /// A list of CIDRs or destination IP ranges.
  final List<String> destinationAddressPrefixes;
  /// A List of destination Application Security Group IDs
  final List<String>? destinationApplicationSecurityGroupIds;
  /// The Destination Port or Range.
  final String destinationPortRange;
  final List<String> destinationPortRanges;
  /// The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final String direction;
  /// Specifies the Name of the Network Security Group.
  final String name;
  /// The priority of the rule
  final int priority;
  /// The network protocol this rule applies to.
  final String protocol;
  /// CIDR or source IP range or * to match any IP.
  final String sourceAddressPrefix;
  /// A list of CIDRs or source IP ranges.
  final List<String> sourceAddressPrefixes;
  /// A List of source Application Security Group IDs
  final List<String>? sourceApplicationSecurityGroupIds;
  /// The Source Port or Range.
  final String sourcePortRange;
  final List<String> sourcePortRanges;

  /// Creates a new [GetNetworkSecurityGroupSecurityRule].
  /// [access] Is network traffic is allowed or denied?
  /// [description] The description for this rule.
  /// [destinationAddressPrefix] CIDR or destination IP range or * to match any IP.
  /// [destinationAddressPrefixes] A list of CIDRs or destination IP ranges.
  /// [destinationApplicationSecurityGroupIds] A List of destination Application Security Group IDs
  /// [destinationPortRange] The Destination Port or Range.
  /// [destinationPortRanges] Required.
  /// [direction] The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  /// [name] Specifies the Name of the Network Security Group.
  /// [priority] The priority of the rule
  /// [protocol] The network protocol this rule applies to.
  /// [sourceAddressPrefix] CIDR or source IP range or * to match any IP.
  /// [sourceAddressPrefixes] A list of CIDRs or source IP ranges.
  /// [sourceApplicationSecurityGroupIds] A List of source Application Security Group IDs
  /// [sourcePortRange] The Source Port or Range.
  /// [sourcePortRanges] Required.
  GetNetworkSecurityGroupSecurityRule({
    required this.access,
    required this.description,
    required this.destinationAddressPrefix,
    required this.destinationAddressPrefixes,
    this.destinationApplicationSecurityGroupIds,
    required this.destinationPortRange,
    required this.destinationPortRanges,
    required this.direction,
    required this.name,
    required this.priority,
    required this.protocol,
    required this.sourceAddressPrefix,
    required this.sourceAddressPrefixes,
    this.sourceApplicationSecurityGroupIds,
    required this.sourcePortRange,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'description': description,
      'destinationAddressPrefix': destinationAddressPrefix,
      'destinationAddressPrefixes': destinationAddressPrefixes,
      'destinationApplicationSecurityGroupIds': ?destinationApplicationSecurityGroupIds,
      'destinationPortRange': destinationPortRange,
      'destinationPortRanges': destinationPortRanges,
      'direction': direction,
      'name': name,
      'priority': priority,
      'protocol': protocol,
      'sourceAddressPrefix': sourceAddressPrefix,
      'sourceAddressPrefixes': sourceAddressPrefixes,
      'sourceApplicationSecurityGroupIds': ?sourceApplicationSecurityGroupIds,
      'sourcePortRange': sourcePortRange,
      'sourcePortRanges': sourcePortRanges,
    };
  }

  factory GetNetworkSecurityGroupSecurityRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupSecurityRule(
      access: map['access'] as String,
      description: map['description'] as String,
      destinationAddressPrefix: map['destinationAddressPrefix'] as String,
      destinationAddressPrefixes: (map['destinationAddressPrefixes'] as List).cast<String>(),
      destinationApplicationSecurityGroupIds: map['destinationApplicationSecurityGroupIds'] == null ? null : (map['destinationApplicationSecurityGroupIds'] as List).cast<String>(),
      destinationPortRange: map['destinationPortRange'] as String,
      destinationPortRanges: (map['destinationPortRanges'] as List).cast<String>(),
      direction: map['direction'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      sourceAddressPrefix: map['sourceAddressPrefix'] as String,
      sourceAddressPrefixes: (map['sourceAddressPrefixes'] as List).cast<String>(),
      sourceApplicationSecurityGroupIds: map['sourceApplicationSecurityGroupIds'] == null ? null : (map['sourceApplicationSecurityGroupIds'] as List).cast<String>(),
      sourcePortRange: map['sourcePortRange'] as String,
      sourcePortRanges: (map['sourcePortRanges'] as List).cast<String>(),
    );
  }
}

