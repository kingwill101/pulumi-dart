// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_http_header_to_insert_response.dart';
import 'firewall_policy_rule_application_protocol_response.dart';

/// Rule of type application.
class ApplicationRuleResponse {
  /// Description of the rule.
  final pulumi.Input<String>? description;
  /// List of destination IP addresses or Service Tags.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// List of FQDN Tags for this rule.
  final pulumi.Input<List<String>>? fqdnTags;
  /// List of HTTP/S headers to insert.
  final pulumi.Input<List<FirewallPolicyHttpHeaderToInsertResponse>>? httpHeadersToInsert;
  /// Name of the rule.
  final pulumi.Input<String>? name;
  /// Array of Application Protocols.
  final pulumi.Input<List<FirewallPolicyRuleApplicationProtocolResponse>>? protocols;
  /// Rule Type.
  /// Expected value is 'ApplicationRule'.
  final pulumi.Input<String> ruleType;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// List of FQDNs for this rule.
  final pulumi.Input<List<String>>? targetFqdns;
  /// List of Urls for this rule condition.
  final pulumi.Input<List<String>>? targetUrls;
  /// Terminate TLS connections for this rule.
  final pulumi.Input<bool>? terminateTLS;
  /// List of destination azure web categories.
  final pulumi.Input<List<String>>? webCategories;

  /// Creates a new [ApplicationRuleResponse].
  /// [description] Description of the rule.
  /// [destinationAddresses] List of destination IP addresses or Service Tags.
  /// [fqdnTags] List of FQDN Tags for this rule.
  /// [httpHeadersToInsert] List of HTTP/S headers to insert.
  /// [name] Name of the rule.
  /// [protocols] Array of Application Protocols.
  /// [ruleType] Rule Type.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [targetFqdns] List of FQDNs for this rule.
  /// [targetUrls] List of Urls for this rule condition.
  /// [terminateTLS] Terminate TLS connections for this rule.
  /// [webCategories] List of destination azure web categories.
  const ApplicationRuleResponse({
    this.description,
    this.destinationAddresses,
    this.fqdnTags,
    this.httpHeadersToInsert,
    this.name,
    this.protocols,
    required this.ruleType,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.targetFqdns,
    this.targetUrls,
    this.terminateTLS,
    this.webCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'fqdnTags': ?fqdnTags,
      'httpHeadersToInsert': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyHttpHeaderToInsertResponse>, List<Map<String, dynamic>>>(httpHeadersToInsert, (value) => pulumi.Input.encodeList<FirewallPolicyHttpHeaderToInsertResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleApplicationProtocolResponse>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<FirewallPolicyRuleApplicationProtocolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleType': ruleType,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
      'targetUrls': ?targetUrls,
      'terminateTLS': ?terminateTLS,
      'webCategories': ?webCategories,
    };
  }

  factory ApplicationRuleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationRuleResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fqdnTags: (() { final guardedValue = map['fqdnTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpHeadersToInsert: (() { final guardedValue = map['httpHeadersToInsert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyHttpHeaderToInsertResponse>(guardedValue, (value) => FirewallPolicyHttpHeaderToInsertResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleApplicationProtocolResponse>(guardedValue, (value) => FirewallPolicyRuleApplicationProtocolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetFqdns: (() { final guardedValue = map['targetFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetUrls: (() { final guardedValue = map['targetUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      terminateTLS: (() { final guardedValue = map['terminateTLS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webCategories: (() { final guardedValue = map['webCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

