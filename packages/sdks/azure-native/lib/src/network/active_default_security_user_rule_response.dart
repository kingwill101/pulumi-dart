// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'configuration_group_response.dart';
import 'network_manager_security_group_item_response.dart';

/// Network security default user rule.
class ActiveDefaultSecurityUserRuleResponse {
  /// Deployment time string.
  final pulumi.Input<String>? commitTime;
  /// A description of the security user configuration.
  final pulumi.Input<String>? configurationDescription;
  /// A display name of the security user configuration.
  final pulumi.Input<String>? configurationDisplayName;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String> description;
  /// The destination port ranges.
  final pulumi.Input<List<String>> destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>> destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final pulumi.Input<String> direction;
  /// A friendly name for the rule.
  final pulumi.Input<String>? displayName;
  /// Default rule flag.
  final pulumi.Input<String>? flag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Whether the rule is custom or default.
  /// Expected value is 'Default'.
  final pulumi.Input<String> kind;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The provisioning state of the security configuration user rule resource.
  final pulumi.Input<String> provisioningState;
  /// Deployment region.
  final pulumi.Input<String>? region;
  /// Groups for rule collection
  final pulumi.Input<List<NetworkManagerSecurityGroupItemResponse>>? ruleCollectionAppliesToGroups;
  /// A description of the rule collection.
  final pulumi.Input<String>? ruleCollectionDescription;
  /// A display name of the rule collection.
  final pulumi.Input<String>? ruleCollectionDisplayName;
  /// Effective configuration groups.
  final pulumi.Input<List<ConfigurationGroupResponse>>? ruleGroups;
  /// The source port ranges.
  final pulumi.Input<List<String>> sourcePortRanges;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>> sources;

  /// Creates a new [ActiveDefaultSecurityUserRuleResponse].
  /// [commitTime] Deployment time string.
  /// [configurationDescription] A description of the security user configuration.
  /// [configurationDisplayName] A display name of the security user configuration.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [displayName] A friendly name for the rule.
  /// [flag] Default rule flag.
  /// [id] Resource ID.
  /// [kind] Whether the rule is custom or default.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the security configuration user rule resource.
  /// [region] Deployment region.
  /// [ruleCollectionAppliesToGroups] Groups for rule collection
  /// [ruleCollectionDescription] A description of the rule collection.
  /// [ruleCollectionDisplayName] A display name of the rule collection.
  /// [ruleGroups] Effective configuration groups.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  ActiveDefaultSecurityUserRuleResponse({
    this.commitTime,
    this.configurationDescription,
    this.configurationDisplayName,
    required this.description,
    required this.destinationPortRanges,
    required this.destinations,
    required this.direction,
    this.displayName,
    this.flag,
    this.id,
    required this.kind,
    required this.protocol,
    required this.provisioningState,
    this.region,
    this.ruleCollectionAppliesToGroups,
    this.ruleCollectionDescription,
    this.ruleCollectionDisplayName,
    this.ruleGroups,
    required this.sourcePortRanges,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitTime': ?commitTime,
      'configurationDescription': ?configurationDescription,
      'configurationDisplayName': ?configurationDisplayName,
      'description': description,
      'destinationPortRanges': destinationPortRanges,
      'destinations': pulumi.Input.mapInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'displayName': ?displayName,
      'flag': ?flag,
      'id': ?id,
      'kind': kind,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'region': ?region,
      'ruleCollectionAppliesToGroups': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerSecurityGroupItemResponse>, List<Map<String, dynamic>>>(ruleCollectionAppliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleCollectionDescription': ?ruleCollectionDescription,
      'ruleCollectionDisplayName': ?ruleCollectionDisplayName,
      'ruleGroups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationGroupResponse>, List<Map<String, dynamic>>>(ruleGroups, (value) => pulumi.Input.encodeList<ConfigurationGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRanges': sourcePortRanges,
      'sources': pulumi.Input.mapInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActiveDefaultSecurityUserRuleResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDefaultSecurityUserRuleResponse(
      commitTime: map['commitTime'] == null ? null : (map['commitTime'] as String).input(),
      configurationDescription: map['configurationDescription'] == null ? null : (map['configurationDescription'] as String).input(),
      configurationDisplayName: map['configurationDisplayName'] == null ? null : (map['configurationDisplayName'] as String).input(),
      description: (map['description'] as String).input(),
      destinationPortRanges: ((map['destinationPortRanges'] as List).cast<String>()).input(),
      destinations: (pulumi.Input.decodeList<AddressPrefixItemResponse>(map['destinations'], (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      direction: (map['direction'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      flag: map['flag'] == null ? null : (map['flag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      kind: (map['kind'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      ruleCollectionAppliesToGroups: map['ruleCollectionAppliesToGroups'] == null ? null : (pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(map['ruleCollectionAppliesToGroups'], (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleCollectionDescription: map['ruleCollectionDescription'] == null ? null : (map['ruleCollectionDescription'] as String).input(),
      ruleCollectionDisplayName: map['ruleCollectionDisplayName'] == null ? null : (map['ruleCollectionDisplayName'] as String).input(),
      ruleGroups: map['ruleGroups'] == null ? null : (pulumi.Input.decodeList<ConfigurationGroupResponse>(map['ruleGroups'], (value) => ConfigurationGroupResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourcePortRanges: ((map['sourcePortRanges'] as List).cast<String>()).input(),
      sources: (pulumi.Input.decodeList<AddressPrefixItemResponse>(map['sources'], (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

