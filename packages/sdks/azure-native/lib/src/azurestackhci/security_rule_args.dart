// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_azurestackhci_security_rule_args_doc}
/// The set of arguments for SecurityRule.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_security_rule_args_doc}
class SecurityRuleArgs {
  /// The network traffic is allowed or denied.
  final pulumi.Input<dynamic> access;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String?>? description;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<String>?>? destinationAddressPrefixes;
  /// The destination port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<List<String>?>? destinationPortRanges;
  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final pulumi.Input<dynamic> direction;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// Name of the network security group
  final pulumi.Input<String> networkSecurityGroupName;
  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;
  /// Network protocol this rule applies to.
  final pulumi.Input<dynamic> protocol;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the security rule.
  final pulumi.Input<String?>? securityRuleName;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<String>?>? sourceAddressPrefixes;
  /// The source port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<List<String>?>? sourcePortRanges;

  /// Creates a new [SecurityRuleArgs].
  /// [access] The network traffic is allowed or denied.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationAddressPrefixes] The destination address prefixes. CIDR or destination IP ranges.
  /// [destinationPortRanges] The destination port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [direction] The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [networkSecurityGroupName] Name of the network security group
  /// [priority] The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityRuleName] Name of the security rule.
  /// [sourceAddressPrefixes] The CIDR or source IP ranges.
  /// [sourcePortRanges] The source port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  const SecurityRuleArgs({
    required this.access,
    this.description,
    this.destinationAddressPrefixes,
    this.destinationPortRanges,
    required this.direction,
    this.extendedLocation,
    required this.networkSecurityGroupName,
    required this.priority,
    required this.protocol,
    required this.resourceGroupName,
    this.securityRuleName,
    this.sourceAddressPrefixes,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'description': ?description,
      'destinationAddressPrefixes': ?destinationAddressPrefixes,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': direction,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'networkSecurityGroupName': networkSecurityGroupName,
      'priority': priority,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'securityRuleName': ?securityRuleName,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourcePortRanges': ?sourcePortRanges,
    };
  }

  factory SecurityRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityRuleArgs(
      access: pulumi.Input.fromValue(map['access']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddressPrefixes: (() { final guardedValue = map['destinationAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: pulumi.Input.fromValue(map['direction']),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSecurityGroupName: pulumi.Input.fromValue(map['networkSecurityGroupName'] as String),
      priority: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['priority'])),
      protocol: pulumi.Input.fromValue(map['protocol']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityRuleName: (() { final guardedValue = map['securityRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAddressPrefixes: (() { final guardedValue = map['sourceAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
