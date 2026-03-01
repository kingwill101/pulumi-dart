// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item.dart';

/// {@template pulumi_network_admin_rule_args_doc}
/// The set of arguments for AdminRule.
/// {@endtemplate}
/// {@macro pulumi_network_admin_rule_args_doc}
class AdminRuleArgs {
  /// Indicates the access allowed for this particular rule
  final pulumi.Input<String> access;
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// The destination port ranges.
  final pulumi.Input<List<String>>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<AddressPrefixItem>>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final pulumi.Input<String> direction;
  /// Whether the rule is custom or default.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> kind;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;
  /// The source port ranges.
  final pulumi.Input<List<String>>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<AddressPrefixItem>>? sources;

  /// Creates a new [AdminRuleArgs].
  /// [access] Indicates the access allowed for this particular rule
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [kind] Whether the rule is custom or default.
  /// [networkManagerName] The name of the network manager.
  /// [priority] The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  AdminRuleArgs({
    required pulumi.Output<String> access,
    required pulumi.Output<String> configurationName,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? destinationPortRanges,
    pulumi.Output<List<AddressPrefixItem>>? destinations,
    required pulumi.Output<String> direction,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<int> priority,
    required pulumi.Output<String> protocol,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleCollectionName,
    pulumi.Output<String>? ruleName,
    pulumi.Output<List<String>>? sourcePortRanges,
    pulumi.Output<List<AddressPrefixItem>>? sources,
  }) :
      access = pulumi.Input.asInput<String>(access),
      configurationName = pulumi.Input.asInput<String>(configurationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationPortRanges = pulumi.Input.asOptionalInput<List<String>>(destinationPortRanges),
      destinations = pulumi.Input.asOptionalInput<List<AddressPrefixItem>>(destinations),
      direction = pulumi.Input.asInput<String>(direction),
      kind = pulumi.Input.asInput<String>(kind),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      priority = pulumi.Input.asInput<int>(priority),
      protocol = pulumi.Input.asInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionName = pulumi.Input.asInput<String>(ruleCollectionName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sourcePortRanges = pulumi.Input.asOptionalInput<List<String>>(sourcePortRanges),
      sources = pulumi.Input.asOptionalInput<List<AddressPrefixItem>>(sources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'configurationName': configurationName,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItem>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressPrefixItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'kind': kind,
      'networkManagerName': networkManagerName,
      'priority': priority,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ?ruleName,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItem>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AdminRuleArgs.fromMap(Map<String, dynamic> map) {
    return AdminRuleArgs(
      access: pulumi.Output.create<String>(map['access'] as String),
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : pulumi.Output.create<List<String>>((map['destinationPortRanges'] as List).cast<String>()),
      destinations: map['destinations'] == null ? null : pulumi.Output.create<List<AddressPrefixItem>>(pulumi.Input.decodeList<AddressPrefixItem>(map['destinations'], (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>()))),
      direction: pulumi.Output.create<String>(map['direction'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Output.create<String>(map['ruleCollectionName'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : pulumi.Output.create<List<String>>((map['sourcePortRanges'] as List).cast<String>()),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<AddressPrefixItem>>(pulumi.Input.decodeList<AddressPrefixItem>(map['sources'], (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

