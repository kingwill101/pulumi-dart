// ignore_for_file: unused_element, unnecessary_cast


/// Security Rule data model for Network Security Groups.
class NsgSecurityRule {
  /// Gets or sets whether network traffic is allowed or denied.
  /// Possible values are “Allow” and “Deny”.
  final String? access;
  /// Gets or sets a description for this rule. Restricted to 140 chars.
  final String? description;
  /// Gets or sets destination address prefix. CIDR or source IP range.
  /// A “*” can also be used to match all source IPs. Default tags such
  /// as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used.
  final String? destinationAddressPrefix;
  /// Gets or sets Destination Port or Range. Integer or range between
  /// 0 and 65535. A “*” can also be used to match all ports.
  final String? destinationPortRange;
  /// Gets or sets the direction of the rule.InBound or Outbound. The
  /// direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final String? direction;
  /// Gets or sets the Security rule name.
  final String? name;
  /// Gets or sets the priority of the rule. The value can be between
  /// 100 and 4096. The priority number must be unique for each rule in the collection.
  /// The lower the priority number, the higher the priority of the rule.
  final int? priority;
  /// Gets or sets Network protocol this rule applies to. Can be Tcp, Udp or All(*).
  final String? protocol;
  /// Gets or sets source address prefix. CIDR or source IP range. A
  /// “*” can also be used to match all source IPs.  Default tags such as ‘VirtualNetwork’,
  /// ‘AzureLoadBalancer’ and ‘Internet’ can also be used. If this is an ingress
  /// rule, specifies where network traffic originates from.
  final String? sourceAddressPrefix;
  /// Gets or sets Source Port or Range. Integer or range between 0 and
  /// 65535. A “*” can also be used to match all ports.
  final String? sourcePortRange;

  /// Creates a new [NsgSecurityRule].
  /// [access] Gets or sets whether network traffic is allowed or denied.
  /// [description] Gets or sets a description for this rule. Restricted to 140 chars.
  /// [destinationAddressPrefix] Gets or sets destination address prefix. CIDR or source IP range.
  /// [destinationPortRange] Gets or sets Destination Port or Range. Integer or range between
  /// [direction] Gets or sets the direction of the rule.InBound or Outbound. The
  /// [name] Gets or sets the Security rule name.
  /// [priority] Gets or sets the priority of the rule. The value can be between
  /// [protocol] Gets or sets Network protocol this rule applies to. Can be Tcp, Udp or All(*).
  /// [sourceAddressPrefix] Gets or sets source address prefix. CIDR or source IP range. A
  /// [sourcePortRange] Gets or sets Source Port or Range. Integer or range between 0 and
  NsgSecurityRule({
    this.access,
    this.description,
    this.destinationAddressPrefix,
    this.destinationPortRange,
    this.direction,
    this.name,
    this.priority,
    this.protocol,
    this.sourceAddressPrefix,
    this.sourcePortRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'description': ?description,
      'destinationAddressPrefix': ?destinationAddressPrefix,
      'destinationPortRange': ?destinationPortRange,
      'direction': ?direction,
      'name': ?name,
      'priority': ?priority,
      'protocol': ?protocol,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourcePortRange': ?sourcePortRange,
    };
  }

  factory NsgSecurityRule.fromMap(Map<String, dynamic> map) {
    return NsgSecurityRule(
      access: map['access'] == null ? null : map['access'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : map['destinationAddressPrefix'] as String,
      destinationPortRange: map['destinationPortRange'] == null ? null : map['destinationPortRange'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : map['sourceAddressPrefix'] as String,
      sourcePortRange: map['sourcePortRange'] == null ? null : map['sourcePortRange'] as String,
    );
  }
}

