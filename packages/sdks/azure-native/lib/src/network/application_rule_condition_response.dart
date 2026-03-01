// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_condition_application_protocol_response.dart';

/// Rule condition of type application.
class ApplicationRuleConditionResponse {
  /// Description of the rule condition.
  final String? description;
  /// List of destination IP addresses or Service Tags.
  final List<String>? destinationAddresses;
  /// List of FQDN Tags for this rule condition.
  final List<String>? fqdnTags;
  /// Name of the rule condition.
  final String? name;
  /// Array of Application Protocols.
  final List<FirewallPolicyRuleConditionApplicationProtocolResponse>? protocols;
  /// Rule Condition Type.
  /// Expected value is 'ApplicationRuleCondition'.
  final String ruleConditionType;
  /// List of source IP addresses for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;
  /// List of FQDNs for this rule condition.
  final List<String>? targetFqdns;

  /// Creates a new [ApplicationRuleConditionResponse].
  /// [description] Description of the rule condition.
  /// [destinationAddresses] List of destination IP addresses or Service Tags.
  /// [fqdnTags] List of FQDN Tags for this rule condition.
  /// [name] Name of the rule condition.
  /// [protocols] Array of Application Protocols.
  /// [ruleConditionType] Rule Condition Type.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [targetFqdns] List of FQDNs for this rule condition.
  ApplicationRuleConditionResponse({
    this.description,
    this.destinationAddresses,
    this.fqdnTags,
    this.name,
    this.protocols,
    required this.ruleConditionType,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.targetFqdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'fqdnTags': ?fqdnTags,
      'name': ?name,
      'protocols': ?protocols == null ? null : pulumi.Input.encodeList<FirewallPolicyRuleConditionApplicationProtocolResponse, Map<String, dynamic>>(protocols!, (value) => value.toMap()),
      'ruleConditionType': ruleConditionType,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
    };
  }

  factory ApplicationRuleConditionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationRuleConditionResponse(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      fqdnTags: map['fqdnTags'] == null ? null : (map['fqdnTags'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      protocols: map['protocols'] == null ? null : pulumi.Input.decodeList<FirewallPolicyRuleConditionApplicationProtocolResponse>(map['protocols'], (value) => FirewallPolicyRuleConditionApplicationProtocolResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleConditionType: map['ruleConditionType'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      targetFqdns: map['targetFqdns'] == null ? null : (map['targetFqdns'] as List).cast<String>(),
    );
  }
}

