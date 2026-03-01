// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_application_rule_collection.dart';
import 'firewall_policy_rule_collection_group_nat_rule_collection.dart';
import 'firewall_policy_rule_collection_group_network_rule_collection.dart';

/// {@template pulumi_network_firewall_policy_rule_collection_group_firewall_policy_rule_collection_group_args_doc}
/// The set of arguments for FirewallPolicyRuleCollectionGroup.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_rule_collection_group_firewall_policy_rule_collection_group_args_doc}
class FirewallPolicyRuleCollectionGroupArgs {
  /// One or more `application_rule_collection` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>>? applicationRuleCollections;
  /// The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String> firewallPolicyId;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String>? name;
  /// One or more `nat_rule_collection` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>>? natRuleCollections;
  /// One or more `network_rule_collection` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>>? networkRuleCollections;
  /// The priority of the Firewall Policy Rule Collection Group. The range is 100-65000.
  final pulumi.Input<int> priority;

  /// Creates a new [FirewallPolicyRuleCollectionGroupArgs].
  /// [applicationRuleCollections] One or more `application_rule_collection` blocks as defined below.
  /// [firewallPolicyId] The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [name] The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [natRuleCollections] One or more `nat_rule_collection` blocks as defined below.
  /// [networkRuleCollections] One or more `network_rule_collection` blocks as defined below.
  /// [priority] The priority of the Firewall Policy Rule Collection Group. The range is 100-65000.
  FirewallPolicyRuleCollectionGroupArgs({
    List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>? applicationRuleCollections,
    required String firewallPolicyId,
    String? name,
    List<FirewallPolicyRuleCollectionGroupNatRuleCollection>? natRuleCollections,
    List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>? networkRuleCollections,
    required int priority,
  }) :
      applicationRuleCollections = pulumi.Input.asOptionalInput<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>>(applicationRuleCollections),
      firewallPolicyId = pulumi.Input.asInput<String>(firewallPolicyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      natRuleCollections = pulumi.Input.asOptionalInput<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>>(natRuleCollections),
      networkRuleCollections = pulumi.Input.asOptionalInput<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>>(networkRuleCollections),
      priority = pulumi.Input.asInput<int>(priority);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>, List<Map<String, dynamic>>>(applicationRuleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallPolicyId': firewallPolicyId,
      'name': ?name,
      'natRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>, List<Map<String, dynamic>>>(natRuleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupNatRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>, List<Map<String, dynamic>>>(networkRuleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupNetworkRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
    };
  }

  factory FirewallPolicyRuleCollectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupArgs(
      applicationRuleCollections: map['applicationRuleCollections'] == null ? null : pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>(map['applicationRuleCollections'], (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollection.fromMap((value as Map).cast<String, dynamic>())),
      firewallPolicyId: map['firewallPolicyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      natRuleCollections: map['natRuleCollections'] == null ? null : pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupNatRuleCollection>(map['natRuleCollections'], (value) => FirewallPolicyRuleCollectionGroupNatRuleCollection.fromMap((value as Map).cast<String, dynamic>())),
      networkRuleCollections: map['networkRuleCollections'] == null ? null : pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>(map['networkRuleCollections'], (value) => FirewallPolicyRuleCollectionGroupNetworkRuleCollection.fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
    );
  }
}

