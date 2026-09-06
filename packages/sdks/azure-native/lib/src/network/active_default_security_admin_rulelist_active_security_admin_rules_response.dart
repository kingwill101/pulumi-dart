// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'configuration_grouplist_active_security_admin_rules_response.dart';
import 'network_manager_security_group_item_response.dart';

/// Network default admin rule.
class ActiveDefaultSecurityAdminRulelistActiveSecurityAdminRulesResponse {
  /// Indicates the access allowed for this particular rule
  final pulumi.Input<String> access;
  /// Deployment time string.
  final pulumi.Input<String?>? commitTime;
  /// A description of the security admin configuration.
  final pulumi.Input<String?>? configurationDescription;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String> description;
  /// The destination port ranges.
  final pulumi.Input<List<String>> destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>> destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final pulumi.Input<String> direction;
  /// Default rule flag.
  final pulumi.Input<String?>? flag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Whether the rule is custom or default.
  /// Expected value is 'Default'.
  final pulumi.Input<String> kind;
  /// The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// Deployment region.
  final pulumi.Input<String?>? region;
  /// Unique identifier for this resource.
  final pulumi.Input<String> resourceGuid;
  /// Groups for rule collection
  final pulumi.Input<List<NetworkManagerSecurityGroupItemResponse>?>? ruleCollectionAppliesToGroups;
  /// A description of the rule collection.
  final pulumi.Input<String?>? ruleCollectionDescription;
  /// Effective configuration groups.
  final pulumi.Input<List<ConfigurationGrouplistActiveSecurityAdminRulesResponse>?>? ruleGroups;
  /// The source port ranges.
  final pulumi.Input<List<String>> sourcePortRanges;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>> sources;

  /// Creates a new [ActiveDefaultSecurityAdminRulelistActiveSecurityAdminRulesResponse].
  /// [access] Indicates the access allowed for this particular rule
  /// [commitTime] Deployment time string.
  /// [configurationDescription] A description of the security admin configuration.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
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
  /// [ruleGroups] Effective configuration groups.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  const ActiveDefaultSecurityAdminRulelistActiveSecurityAdminRulesResponse({
    required this.access,
    this.commitTime,
    this.configurationDescription,
    required this.description,
    required this.destinationPortRanges,
    required this.destinations,
    required this.direction,
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
    this.ruleGroups,
    required this.sourcePortRanges,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'commitTime': ?commitTime,
      'configurationDescription': ?configurationDescription,
      'description': description,
      'destinationPortRanges': destinationPortRanges,
      'destinations': pulumi.Input.mapInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'flag': ?flag,
      'id': ?id,
      'kind': kind,
      'priority': priority,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'region': ?region,
      'resourceGuid': resourceGuid,
      'ruleCollectionAppliesToGroups': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerSecurityGroupItemResponse>, List<Map<String, dynamic>>>(ruleCollectionAppliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleCollectionDescription': ?ruleCollectionDescription,
      'ruleGroups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationGrouplistActiveSecurityAdminRulesResponse>, List<Map<String, dynamic>>>(ruleGroups, (value) => pulumi.Input.encodeList<ConfigurationGrouplistActiveSecurityAdminRulesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRanges': sourcePortRanges,
      'sources': pulumi.Input.mapInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActiveDefaultSecurityAdminRulelistActiveSecurityAdminRulesResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDefaultSecurityAdminRulelistActiveSecurityAdminRulesResponse(
      access: pulumi.Input.fromValue(map['access'] as String),
      commitTime: (() { final guardedValue = map['commitTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationDescription: (() { final guardedValue = map['configurationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationPortRanges: pulumi.Input.fromValue((map['destinationPortRanges'] as List).cast<String>()),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<AddressPrefixItemResponse>(map['destinations']!, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      priority: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['priority'])),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      ruleCollectionAppliesToGroups: (() { final guardedValue = map['ruleCollectionAppliesToGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(guardedValue, (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleCollectionDescription: (() { final guardedValue = map['ruleCollectionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroups: (() { final guardedValue = map['ruleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationGrouplistActiveSecurityAdminRulesResponse>(guardedValue, (value) => ConfigurationGrouplistActiveSecurityAdminRulesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourcePortRanges: pulumi.Input.fromValue((map['sourcePortRanges'] as List).cast<String>()),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<AddressPrefixItemResponse>(map['sources']!, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
