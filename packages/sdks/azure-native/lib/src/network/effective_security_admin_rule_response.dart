// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'configuration_group_response.dart';
import 'network_manager_security_group_item_response.dart';

/// Network admin rule.
class EffectiveSecurityAdminRuleResponse {
  /// Indicates the access allowed for this particular rule
  final pulumi.Input<String> access;
  /// A description of the security admin configuration.
  final pulumi.Input<String>? configurationDescription;
  /// A display name of the security admin configuration.
  final pulumi.Input<String>? configurationDisplayName;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// The destination port ranges.
  final pulumi.Input<List<String>>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final pulumi.Input<String> direction;
  /// A friendly name for the rule.
  final pulumi.Input<String>? displayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Whether the rule is custom or default.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> kind;
  /// The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// Unique identifier for this resource.
  final pulumi.Input<String> resourceGuid;
  /// Groups for rule collection
  final pulumi.Input<List<NetworkManagerSecurityGroupItemResponse>>? ruleCollectionAppliesToGroups;
  /// A description of the rule collection.
  final pulumi.Input<String>? ruleCollectionDescription;
  /// A display name of the rule collection.
  final pulumi.Input<String>? ruleCollectionDisplayName;
  /// Effective configuration groups.
  final pulumi.Input<List<ConfigurationGroupResponse>>? ruleGroups;
  /// The source port ranges.
  final pulumi.Input<List<String>>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>>? sources;

  /// Creates a new [EffectiveSecurityAdminRuleResponse].
  /// [access] Indicates the access allowed for this particular rule
  /// [configurationDescription] A description of the security admin configuration.
  /// [configurationDisplayName] A display name of the security admin configuration.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [displayName] A friendly name for the rule.
  /// [id] Resource ID.
  /// [kind] Whether the rule is custom or default.
  /// [priority] The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [ruleCollectionAppliesToGroups] Groups for rule collection
  /// [ruleCollectionDescription] A description of the rule collection.
  /// [ruleCollectionDisplayName] A display name of the rule collection.
  /// [ruleGroups] Effective configuration groups.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  EffectiveSecurityAdminRuleResponse({
    required this.access,
    this.configurationDescription,
    this.configurationDisplayName,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    required this.direction,
    this.displayName,
    this.id,
    required this.kind,
    required this.priority,
    required this.protocol,
    required this.provisioningState,
    required this.resourceGuid,
    this.ruleCollectionAppliesToGroups,
    this.ruleCollectionDescription,
    this.ruleCollectionDisplayName,
    this.ruleGroups,
    this.sourcePortRanges,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'configurationDescription': ?configurationDescription,
      'configurationDisplayName': ?configurationDisplayName,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'displayName': ?displayName,
      'id': ?id,
      'kind': kind,
      'priority': priority,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'ruleCollectionAppliesToGroups': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerSecurityGroupItemResponse>, List<Map<String, dynamic>>>(ruleCollectionAppliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleCollectionDescription': ?ruleCollectionDescription,
      'ruleCollectionDisplayName': ?ruleCollectionDisplayName,
      'ruleGroups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationGroupResponse>, List<Map<String, dynamic>>>(ruleGroups, (value) => pulumi.Input.encodeList<ConfigurationGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EffectiveSecurityAdminRuleResponse.fromMap(Map<String, dynamic> map) {
    return EffectiveSecurityAdminRuleResponse(
      access: (map['access'] as String).input(),
      configurationDescription: map['configurationDescription'] == null ? null : (map['configurationDescription']! as String).input(),
      configurationDisplayName: map['configurationDisplayName'] == null ? null : (map['configurationDisplayName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : ((map['destinationPortRanges']! as List).cast<String>()).input(),
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<AddressPrefixItemResponse>(map['destinations']!, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      direction: (map['direction'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      kind: (map['kind'] as String).input(),
      priority: (map['priority'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
      ruleCollectionAppliesToGroups: map['ruleCollectionAppliesToGroups'] == null ? null : (pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(map['ruleCollectionAppliesToGroups']!, (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleCollectionDescription: map['ruleCollectionDescription'] == null ? null : (map['ruleCollectionDescription']! as String).input(),
      ruleCollectionDisplayName: map['ruleCollectionDisplayName'] == null ? null : (map['ruleCollectionDisplayName']! as String).input(),
      ruleGroups: map['ruleGroups'] == null ? null : (pulumi.Input.decodeList<ConfigurationGroupResponse>(map['ruleGroups']!, (value) => ConfigurationGroupResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : ((map['sourcePortRanges']! as List).cast<String>()).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<AddressPrefixItemResponse>(map['sources']!, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

