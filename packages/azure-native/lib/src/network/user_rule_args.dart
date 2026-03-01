// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item.dart';

/// {@template pulumi_network_user_rule_args_doc}
/// The set of arguments for UserRule.
/// {@endtemplate}
/// {@macro pulumi_network_user_rule_args_doc}
class UserRuleArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// A description for this rule.
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

  /// Creates a new [UserRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description for this rule.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [kind] Whether the rule is custom or default.
  /// [networkManagerName] The name of the network manager.
  /// [protocol] Network protocol this rule applies to.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  UserRuleArgs({
    required String configurationName,
    String? description,
    List<String>? destinationPortRanges,
    List<AddressPrefixItem>? destinations,
    required String direction,
    required String kind,
    required String networkManagerName,
    required String protocol,
    required String resourceGroupName,
    required String ruleCollectionName,
    String? ruleName,
    List<String>? sourcePortRanges,
    List<AddressPrefixItem>? sources,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationPortRanges = pulumi.Input.asOptionalInput<List<String>>(destinationPortRanges),
      destinations = pulumi.Input.asOptionalInput<List<AddressPrefixItem>>(destinations),
      direction = pulumi.Input.asInput<String>(direction),
      kind = pulumi.Input.asInput<String>(kind),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      protocol = pulumi.Input.asInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionName = pulumi.Input.asInput<String>(ruleCollectionName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sourcePortRanges = pulumi.Input.asOptionalInput<List<String>>(sourcePortRanges),
      sources = pulumi.Input.asOptionalInput<List<AddressPrefixItem>>(sources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItem>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressPrefixItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'kind': kind,
      'networkManagerName': networkManagerName,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ?ruleName,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItem>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserRuleArgs.fromMap(Map<String, dynamic> map) {
    return UserRuleArgs(
      configurationName: map['configurationName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (map['destinationPortRanges'] as List).cast<String>(),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<AddressPrefixItem>(map['destinations'], (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>())),
      direction: map['direction'] as String,
      kind: map['kind'] as String,
      networkManagerName: map['networkManagerName'] as String,
      protocol: map['protocol'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleCollectionName: map['ruleCollectionName'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges'] as List).cast<String>(),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<AddressPrefixItem>(map['sources'], (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

