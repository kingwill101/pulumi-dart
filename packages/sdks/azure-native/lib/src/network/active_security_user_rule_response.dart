// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'configuration_group_response.dart';
import 'network_manager_security_group_item_response.dart';

/// Network security user rule.
class ActiveSecurityUserRuleResponse {
  /// Deployment time string.
  final String? commitTime;
  /// A description of the security user configuration.
  final String? configurationDescription;
  /// A display name of the security user configuration.
  final String? configurationDisplayName;
  /// A description for this rule.
  final String? description;
  /// The destination port ranges.
  final List<String>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<AddressPrefixItemResponse>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final String direction;
  /// A friendly name for the rule.
  final String? displayName;
  /// Resource ID.
  final String? id;
  /// Whether the rule is custom or default.
  /// Expected value is 'Custom'.
  final String kind;
  /// Network protocol this rule applies to.
  final String protocol;
  /// The provisioning state of the security configuration user rule resource.
  final String provisioningState;
  /// Deployment region.
  final String? region;
  /// Groups for rule collection
  final List<NetworkManagerSecurityGroupItemResponse>? ruleCollectionAppliesToGroups;
  /// A description of the rule collection.
  final String? ruleCollectionDescription;
  /// A display name of the rule collection.
  final String? ruleCollectionDisplayName;
  /// Effective configuration groups.
  final List<ConfigurationGroupResponse>? ruleGroups;
  /// The source port ranges.
  final List<String>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final List<AddressPrefixItemResponse>? sources;

  /// Creates a new [ActiveSecurityUserRuleResponse].
  /// [commitTime] Deployment time string.
  /// [configurationDescription] A description of the security user configuration.
  /// [configurationDisplayName] A display name of the security user configuration.
  /// [description] A description for this rule.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [displayName] A friendly name for the rule.
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
  ActiveSecurityUserRuleResponse({
    this.commitTime,
    this.configurationDescription,
    this.configurationDisplayName,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    required this.direction,
    this.displayName,
    this.id,
    required this.kind,
    required this.protocol,
    required this.provisioningState,
    this.region,
    this.ruleCollectionAppliesToGroups,
    this.ruleCollectionDescription,
    this.ruleCollectionDisplayName,
    this.ruleGroups,
    this.sourcePortRanges,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitTime': ?commitTime,
      'configurationDescription': ?configurationDescription,
      'configurationDisplayName': ?configurationDisplayName,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'direction': direction,
      'displayName': ?displayName,
      'id': ?id,
      'kind': kind,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'region': ?region,
      'ruleCollectionAppliesToGroups': ?ruleCollectionAppliesToGroups == null ? null : pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(ruleCollectionAppliesToGroups!, (value) => value.toMap()),
      'ruleCollectionDescription': ?ruleCollectionDescription,
      'ruleCollectionDisplayName': ?ruleCollectionDisplayName,
      'ruleGroups': ?ruleGroups == null ? null : pulumi.Input.encodeList<ConfigurationGroupResponse, Map<String, dynamic>>(ruleGroups!, (value) => value.toMap()),
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?sources == null ? null : pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(sources!, (value) => value.toMap()),
    };
  }

  factory ActiveSecurityUserRuleResponse.fromMap(Map<String, dynamic> map) {
    return ActiveSecurityUserRuleResponse(
      commitTime: map['commitTime'] == null ? null : map['commitTime'] as String,
      configurationDescription: map['configurationDescription'] == null ? null : map['configurationDescription'] as String,
      configurationDisplayName: map['configurationDisplayName'] == null ? null : map['configurationDisplayName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (map['destinationPortRanges'] as List).cast<String>(),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<AddressPrefixItemResponse>(map['destinations'], (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      direction: map['direction'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] as String,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      ruleCollectionAppliesToGroups: map['ruleCollectionAppliesToGroups'] == null ? null : pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(map['ruleCollectionAppliesToGroups'], (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleCollectionDescription: map['ruleCollectionDescription'] == null ? null : map['ruleCollectionDescription'] as String,
      ruleCollectionDisplayName: map['ruleCollectionDisplayName'] == null ? null : map['ruleCollectionDisplayName'] as String,
      ruleGroups: map['ruleGroups'] == null ? null : pulumi.Input.decodeList<ConfigurationGroupResponse>(map['ruleGroups'], (value) => ConfigurationGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges'] as List).cast<String>(),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<AddressPrefixItemResponse>(map['sources'], (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

