// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_application_rule_protocol_response.dart';

/// Properties of an application rule.
class AzureFirewallApplicationRuleResponse {
  /// Description of the rule.
  final pulumi.Input<String>? description;
  /// List of FQDN Tags for this rule.
  final pulumi.Input<List<String>>? fqdnTags;
  /// Name of the application rule.
  final pulumi.Input<String>? name;
  /// Array of ApplicationRuleProtocols.
  final pulumi.Input<List<AzureFirewallApplicationRuleProtocolResponse>>? protocols;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// List of FQDNs for this rule.
  final pulumi.Input<List<String>>? targetFqdns;

  /// Creates a new [AzureFirewallApplicationRuleResponse].
  /// [description] Description of the rule.
  /// [fqdnTags] List of FQDN Tags for this rule.
  /// [name] Name of the application rule.
  /// [protocols] Array of ApplicationRuleProtocols.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [targetFqdns] List of FQDNs for this rule.
  const AzureFirewallApplicationRuleResponse({
    this.description,
    this.fqdnTags,
    this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.targetFqdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fqdnTags': ?fqdnTags,
      'name': ?name,
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallApplicationRuleProtocolResponse>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<AzureFirewallApplicationRuleProtocolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
    };
  }

  factory AzureFirewallApplicationRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallApplicationRuleResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdnTags: (() { final guardedValue = map['fqdnTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureFirewallApplicationRuleProtocolResponse>(guardedValue, (value) => AzureFirewallApplicationRuleProtocolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetFqdns: (() { final guardedValue = map['targetFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
