// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security Rule data model for Network Security Groups.
class NsgSecurityRule {
  /// Gets or sets whether network traffic is allowed or denied.
  /// Possible values are “Allow” and “Deny”.
  final pulumi.Input<String>? access;
  /// Gets or sets a description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// Gets or sets destination address prefix. CIDR or source IP range.
  /// A “*” can also be used to match all source IPs. Default tags such
  /// as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used.
  final pulumi.Input<String>? destinationAddressPrefix;
  /// Gets or sets Destination Port or Range. Integer or range between
  /// 0 and 65535. A “*” can also be used to match all ports.
  final pulumi.Input<String>? destinationPortRange;
  /// Gets or sets the direction of the rule.InBound or Outbound. The
  /// direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final pulumi.Input<String>? direction;
  /// Gets or sets the Security rule name.
  final pulumi.Input<String>? name;
  /// Gets or sets the priority of the rule. The value can be between
  /// 100 and 4096. The priority number must be unique for each rule in the collection.
  /// The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int>? priority;
  /// Gets or sets Network protocol this rule applies to. Can be Tcp, Udp or All(*).
  final pulumi.Input<String>? protocol;
  /// Gets or sets source address prefix. CIDR or source IP range. A
  /// “*” can also be used to match all source IPs.  Default tags such as ‘VirtualNetwork’,
  /// ‘AzureLoadBalancer’ and ‘Internet’ can also be used. If this is an ingress
  /// rule, specifies where network traffic originates from.
  final pulumi.Input<String>? sourceAddressPrefix;
  /// Gets or sets Source Port or Range. Integer or range between 0 and
  /// 65535. A “*” can also be used to match all ports.
  final pulumi.Input<String>? sourcePortRange;

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
      access: (() { final guardedValue = map['access']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddressPrefix: (() { final guardedValue = map['destinationAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRange: (() { final guardedValue = map['destinationPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAddressPrefix: (() { final guardedValue = map['sourceAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

