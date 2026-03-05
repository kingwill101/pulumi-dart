// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_condition_application_protocol_response.dart';

/// Rule condition of type application.
class ApplicationRuleConditionResponse {
  /// Description of the rule condition.
  final pulumi.Input<String>? description;
  /// List of destination IP addresses or Service Tags.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// List of FQDN Tags for this rule condition.
  final pulumi.Input<List<String>>? fqdnTags;
  /// Name of the rule condition.
  final pulumi.Input<String>? name;
  /// Array of Application Protocols.
  final pulumi.Input<List<FirewallPolicyRuleConditionApplicationProtocolResponse>>? protocols;
  /// Rule Condition Type.
  /// Expected value is 'ApplicationRuleCondition'.
  final pulumi.Input<String> ruleConditionType;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// List of FQDNs for this rule condition.
  final pulumi.Input<List<String>>? targetFqdns;

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
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleConditionApplicationProtocolResponse>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<FirewallPolicyRuleConditionApplicationProtocolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleConditionType': ruleConditionType,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
    };
  }

  factory ApplicationRuleConditionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationRuleConditionResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fqdnTags: (() { final guardedValue = map['fqdnTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleConditionApplicationProtocolResponse>(guardedValue, (value) => FirewallPolicyRuleConditionApplicationProtocolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleConditionType: pulumi.Input.fromValue(map['ruleConditionType'] as String),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetFqdns: (() { final guardedValue = map['targetFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

