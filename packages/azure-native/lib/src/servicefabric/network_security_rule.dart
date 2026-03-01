// ignore_for_file: unused_element, unnecessary_cast


/// Describes a network security rule.
class NetworkSecurityRule {
  /// The network traffic is allowed or denied.
  final String access;
  /// Network security rule description.
  final String? description;
  /// The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  final String? destinationAddressPrefix;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<String>? destinationAddressPrefixes;
  /// he destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final String? destinationPortRange;
  /// The destination port ranges.
  final List<String>? destinationPortRanges;
  /// Network security rule direction.
  final String direction;
  /// Network security rule name.
  final String name;
  /// The priority of the rule. The value can be in the range 1000 to 3000. Values outside this range are reserved for Service Fabric ManagerCluster Resource Provider. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final int priority;
  /// Network protocol this rule applies to.
  final String protocol;
  /// The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  final String? sourceAddressPrefix;
  /// The CIDR or source IP ranges.
  final List<String>? sourceAddressPrefixes;
  /// The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final String? sourcePortRange;
  /// The source port ranges.
  final List<String>? sourcePortRanges;

  /// Creates a new [NetworkSecurityRule].
  /// [access] The network traffic is allowed or denied.
  /// [description] Network security rule description.
  /// [destinationAddressPrefix] The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  /// [destinationAddressPrefixes] The destination address prefixes. CIDR or destination IP ranges.
  /// [destinationPortRange] he destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [destinationPortRanges] The destination port ranges.
  /// [direction] Network security rule direction.
  /// [name] Network security rule name.
  /// [priority] The priority of the rule. The value can be in the range 1000 to 3000. Values outside this range are reserved for Service Fabric ManagerCluster Resource Provider. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [sourceAddressPrefix] The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  /// [sourceAddressPrefixes] The CIDR or source IP ranges.
  /// [sourcePortRange] The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [sourcePortRanges] The source port ranges.
  NetworkSecurityRule({
    required this.access,
    this.description,
    this.destinationAddressPrefix,
    this.destinationAddressPrefixes,
    this.destinationPortRange,
    this.destinationPortRanges,
    required this.direction,
    required this.name,
    required this.priority,
    required this.protocol,
    this.sourceAddressPrefix,
    this.sourceAddressPrefixes,
    this.sourcePortRange,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'description': ?description,
      'destinationAddressPrefix': ?destinationAddressPrefix,
      'destinationAddressPrefixes': ?destinationAddressPrefixes,
      'destinationPortRange': ?destinationPortRange,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': direction,
      'name': name,
      'priority': priority,
      'protocol': protocol,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
    };
  }

  factory NetworkSecurityRule.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityRule(
      access: map['access'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : map['destinationAddressPrefix'] as String,
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : (map['destinationAddressPrefixes'] as List).cast<String>(),
      destinationPortRange: map['destinationPortRange'] == null ? null : map['destinationPortRange'] as String,
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (map['destinationPortRanges'] as List).cast<String>(),
      direction: map['direction'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : map['sourceAddressPrefix'] as String,
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : (map['sourceAddressPrefixes'] as List).cast<String>(),
      sourcePortRange: map['sourcePortRange'] == null ? null : map['sourcePortRange'] as String,
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges'] as List).cast<String>(),
    );
  }
}

