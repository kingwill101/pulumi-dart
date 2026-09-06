// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'configuration_grouplist_active_security_user_rules_response.dart';
import 'network_manager_security_group_item_response.dart';

/// Network security user rule.
class ActiveSecurityUserRulelistActiveSecurityUserRulesResponse {
  /// Deployment time string.
  final pulumi.Input<String?>? commitTime;
  /// A description of the security user configuration.
  final pulumi.Input<String?>? configurationDescription;
  /// A description for this rule.
  final pulumi.Input<String?>? description;
  /// The destination port ranges.
  final pulumi.Input<List<String>?>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>?>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final pulumi.Input<String> direction;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Whether the rule is custom or default.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> kind;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The provisioning state of the security configuration user rule resource.
  final pulumi.Input<String> provisioningState;
  /// Deployment region.
  final pulumi.Input<String?>? region;
  /// Groups for rule collection
  final pulumi.Input<List<NetworkManagerSecurityGroupItemResponse>?>? ruleCollectionAppliesToGroups;
  /// A description of the rule collection.
  final pulumi.Input<String?>? ruleCollectionDescription;
  /// Effective configuration groups.
  final pulumi.Input<List<ConfigurationGrouplistActiveSecurityUserRulesResponse>?>? ruleGroups;
  /// The source port ranges.
  final pulumi.Input<List<String>?>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<AddressPrefixItemResponse>?>? sources;

  /// Creates a new [ActiveSecurityUserRulelistActiveSecurityUserRulesResponse].
  /// [commitTime] Deployment time string.
  /// [configurationDescription] A description of the security user configuration.
  /// [description] A description for this rule.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [id] Resource ID.
  /// [kind] Whether the rule is custom or default.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the security configuration user rule resource.
  /// [region] Deployment region.
  /// [ruleCollectionAppliesToGroups] Groups for rule collection
  /// [ruleCollectionDescription] A description of the rule collection.
  /// [ruleGroups] Effective configuration groups.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  const ActiveSecurityUserRulelistActiveSecurityUserRulesResponse({
    this.commitTime,
    this.configurationDescription,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    required this.direction,
    this.id,
    required this.kind,
    required this.protocol,
    required this.provisioningState,
    this.region,
    this.ruleCollectionAppliesToGroups,
    this.ruleCollectionDescription,
    this.ruleGroups,
    this.sourcePortRanges,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitTime': ?commitTime,
      'configurationDescription': ?configurationDescription,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'id': ?id,
      'kind': kind,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'region': ?region,
      'ruleCollectionAppliesToGroups': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerSecurityGroupItemResponse>, List<Map<String, dynamic>>>(ruleCollectionAppliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleCollectionDescription': ?ruleCollectionDescription,
      'ruleGroups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationGrouplistActiveSecurityUserRulesResponse>, List<Map<String, dynamic>>>(ruleGroups, (value) => pulumi.Input.encodeList<ConfigurationGrouplistActiveSecurityUserRulesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItemResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActiveSecurityUserRulelistActiveSecurityUserRulesResponse.fromMap(Map<String, dynamic> map) {
    return ActiveSecurityUserRulelistActiveSecurityUserRulesResponse(
      commitTime: (() { final guardedValue = map['commitTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationDescription: (() { final guardedValue = map['configurationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleCollectionAppliesToGroups: (() { final guardedValue = map['ruleCollectionAppliesToGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(guardedValue, (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleCollectionDescription: (() { final guardedValue = map['ruleCollectionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroups: (() { final guardedValue = map['ruleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationGrouplistActiveSecurityUserRulesResponse>(guardedValue, (value) => ConfigurationGrouplistActiveSecurityUserRulesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
