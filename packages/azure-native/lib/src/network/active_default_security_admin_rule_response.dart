// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'configuration_group_response.dart';
import 'network_manager_security_group_item_response.dart';

/// Network default admin rule.
class ActiveDefaultSecurityAdminRuleResponse {
  /// Indicates the access allowed for this particular rule
  final String access;
  /// Deployment time string.
  final String? commitTime;
  /// A description of the security admin configuration.
  final String? configurationDescription;
  /// A display name of the security admin configuration.
  final String? configurationDisplayName;
  /// A description for this rule. Restricted to 140 chars.
  final String description;
  /// The destination port ranges.
  final List<String> destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<AddressPrefixItemResponse> destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final String direction;
  /// A friendly name for the rule.
  final String? displayName;
  /// Default rule flag.
  final String? flag;
  /// Resource ID.
  final String? id;
  /// Whether the rule is custom or default.
  /// Expected value is 'Default'.
  final String kind;
  /// The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final int priority;
  /// Network protocol this rule applies to.
  final String protocol;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Deployment region.
  final String? region;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// Groups for rule collection
  final List<NetworkManagerSecurityGroupItemResponse>? ruleCollectionAppliesToGroups;
  /// A description of the rule collection.
  final String? ruleCollectionDescription;
  /// A display name of the rule collection.
  final String? ruleCollectionDisplayName;
  /// Effective configuration groups.
  final List<ConfigurationGroupResponse>? ruleGroups;
  /// The source port ranges.
  final List<String> sourcePortRanges;
  /// The CIDR or source IP ranges.
  final List<AddressPrefixItemResponse> sources;

  /// Creates a new [ActiveDefaultSecurityAdminRuleResponse].
  /// [access] Indicates the access allowed for this particular rule
  /// [commitTime] Deployment time string.
  /// [configurationDescription] A description of the security admin configuration.
  /// [configurationDisplayName] A display name of the security admin configuration.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [displayName] A friendly name for the rule.
  /// [flag] Default rule flag.
  /// [id] Resource ID.
  /// [kind] Whether the rule is custom or default.
  /// [priority] The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the resource.
  /// [region] Deployment region.
  /// [resourceGuid] Unique identifier for this resource.
  /// [ruleCollectionAppliesToGroups] Groups for rule collection
  /// [ruleCollectionDescription] A description of the rule collection.
  /// [ruleCollectionDisplayName] A display name of the rule collection.
  /// [ruleGroups] Effective configuration groups.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  ActiveDefaultSecurityAdminRuleResponse({
    required this.access,
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
    required this.priority,
    required this.protocol,
    required this.provisioningState,
    this.region,
    required this.resourceGuid,
    this.ruleCollectionAppliesToGroups,
    this.ruleCollectionDescription,
    this.ruleCollectionDisplayName,
    this.ruleGroups,
    required this.sourcePortRanges,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'commitTime': ?commitTime,
      'configurationDescription': ?configurationDescription,
      'configurationDisplayName': ?configurationDisplayName,
      'description': description,
      'destinationPortRanges': destinationPortRanges,
      'destinations': pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'direction': direction,
      'displayName': ?displayName,
      'flag': ?flag,
      'id': ?id,
      'kind': kind,
      'priority': priority,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'region': ?region,
      'resourceGuid': resourceGuid,
      'ruleCollectionAppliesToGroups': ?ruleCollectionAppliesToGroups == null ? null : pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(ruleCollectionAppliesToGroups!, (value) => value.toMap()),
      'ruleCollectionDescription': ?ruleCollectionDescription,
      'ruleCollectionDisplayName': ?ruleCollectionDisplayName,
      'ruleGroups': ?ruleGroups == null ? null : pulumi.Input.encodeList<ConfigurationGroupResponse, Map<String, dynamic>>(ruleGroups!, (value) => value.toMap()),
      'sourcePortRanges': sourcePortRanges,
      'sources': pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(sources, (value) => value.toMap()),
    };
  }

  factory ActiveDefaultSecurityAdminRuleResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDefaultSecurityAdminRuleResponse(
      access: map['access'] as String,
      commitTime: map['commitTime'] == null ? null : map['commitTime'] as String,
      configurationDescription: map['configurationDescription'] == null ? null : map['configurationDescription'] as String,
      configurationDisplayName: map['configurationDisplayName'] == null ? null : map['configurationDisplayName'] as String,
      description: map['description'] as String,
      destinationPortRanges: (map['destinationPortRanges'] as List).cast<String>(),
      destinations: pulumi.Input.decodeList<AddressPrefixItemResponse>(map['destinations'], (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      direction: map['direction'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      flag: map['flag'] == null ? null : map['flag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceGuid: map['resourceGuid'] as String,
      ruleCollectionAppliesToGroups: map['ruleCollectionAppliesToGroups'] == null ? null : pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(map['ruleCollectionAppliesToGroups'], (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleCollectionDescription: map['ruleCollectionDescription'] == null ? null : map['ruleCollectionDescription'] as String,
      ruleCollectionDisplayName: map['ruleCollectionDisplayName'] == null ? null : map['ruleCollectionDisplayName'] as String,
      ruleGroups: map['ruleGroups'] == null ? null : pulumi.Input.decodeList<ConfigurationGroupResponse>(map['ruleGroups'], (value) => ConfigurationGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourcePortRanges: (map['sourcePortRanges'] as List).cast<String>(),
      sources: pulumi.Input.decodeList<AddressPrefixItemResponse>(map['sources'], (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

