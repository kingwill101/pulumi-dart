// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_azurestackhci_security_rule_args_doc}
/// The set of arguments for SecurityRule.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_security_rule_args_doc}
class SecurityRuleArgs {
  /// The network traffic is allowed or denied.
  final pulumi.Input<String> access;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<String>>? destinationAddressPrefixes;
  /// The destination port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<List<String>>? destinationPortRanges;
  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final pulumi.Input<String> direction;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Name of the network security group
  final pulumi.Input<String> networkSecurityGroupName;
  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the security rule.
  final pulumi.Input<String>? securityRuleName;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<String>>? sourceAddressPrefixes;
  /// The source port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<List<String>>? sourcePortRanges;

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
  SecurityRuleArgs({
    required String access,
    String? description,
    List<String>? destinationAddressPrefixes,
    List<String>? destinationPortRanges,
    required String direction,
    ExtendedLocation? extendedLocation,
    required String networkSecurityGroupName,
    required int priority,
    required String protocol,
    required String resourceGroupName,
    String? securityRuleName,
    List<String>? sourceAddressPrefixes,
    List<String>? sourcePortRanges,
  }) :
      access = pulumi.Input.asInput<String>(access),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationAddressPrefixes = pulumi.Input.asOptionalInput<List<String>>(destinationAddressPrefixes),
      destinationPortRanges = pulumi.Input.asOptionalInput<List<String>>(destinationPortRanges),
      direction = pulumi.Input.asInput<String>(direction),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      networkSecurityGroupName = pulumi.Input.asInput<String>(networkSecurityGroupName),
      priority = pulumi.Input.asInput<int>(priority),
      protocol = pulumi.Input.asInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityRuleName = pulumi.Input.asOptionalInput<String>(securityRuleName),
      sourceAddressPrefixes = pulumi.Input.asOptionalInput<List<String>>(sourceAddressPrefixes),
      sourcePortRanges = pulumi.Input.asOptionalInput<List<String>>(sourcePortRanges);

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
      access: map['access'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : (map['destinationAddressPrefixes'] as List).cast<String>(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (map['destinationPortRanges'] as List).cast<String>(),
      direction: map['direction'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      networkSecurityGroupName: map['networkSecurityGroupName'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityRuleName: map['securityRuleName'] == null ? null : map['securityRuleName'] as String,
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : (map['sourceAddressPrefixes'] as List).cast<String>(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges'] as List).cast<String>(),
    );
  }
}

