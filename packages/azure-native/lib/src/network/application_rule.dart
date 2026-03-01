// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_http_header_to_insert.dart';
import 'firewall_policy_rule_application_protocol.dart';

/// Rule of type application.
class ApplicationRule {
  /// Description of the rule.
  final String? description;
  /// List of destination IP addresses or Service Tags.
  final List<String>? destinationAddresses;
  /// List of FQDN Tags for this rule.
  final List<String>? fqdnTags;
  /// List of HTTP/S headers to insert.
  final List<FirewallPolicyHttpHeaderToInsert>? httpHeadersToInsert;
  /// Name of the rule.
  final String? name;
  /// Array of Application Protocols.
  final List<FirewallPolicyRuleApplicationProtocol>? protocols;
  /// Rule Type.
  /// Expected value is 'ApplicationRule'.
  final String ruleType;
  /// List of source IP addresses for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;
  /// List of FQDNs for this rule.
  final List<String>? targetFqdns;
  /// List of Urls for this rule condition.
  final List<String>? targetUrls;
  /// Terminate TLS connections for this rule.
  final bool? terminateTLS;
  /// List of destination azure web categories.
  final List<String>? webCategories;

  /// Creates a new [ApplicationRule].
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
  ApplicationRule({
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
      'httpHeadersToInsert': ?httpHeadersToInsert == null ? null : pulumi.Input.encodeList<FirewallPolicyHttpHeaderToInsert, Map<String, dynamic>>(httpHeadersToInsert!, (value) => value.toMap()),
      'name': ?name,
      'protocols': ?protocols == null ? null : pulumi.Input.encodeList<FirewallPolicyRuleApplicationProtocol, Map<String, dynamic>>(protocols!, (value) => value.toMap()),
      'ruleType': ruleType,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
      'targetUrls': ?targetUrls,
      'terminateTLS': ?terminateTLS,
      'webCategories': ?webCategories,
    };
  }

  factory ApplicationRule.fromMap(Map<String, dynamic> map) {
    return ApplicationRule(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      fqdnTags: map['fqdnTags'] == null ? null : (map['fqdnTags'] as List).cast<String>(),
      httpHeadersToInsert: map['httpHeadersToInsert'] == null ? null : pulumi.Input.decodeList<FirewallPolicyHttpHeaderToInsert>(map['httpHeadersToInsert'], (value) => FirewallPolicyHttpHeaderToInsert.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      protocols: map['protocols'] == null ? null : pulumi.Input.decodeList<FirewallPolicyRuleApplicationProtocol>(map['protocols'], (value) => FirewallPolicyRuleApplicationProtocol.fromMap((value as Map).cast<String, dynamic>())),
      ruleType: map['ruleType'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      targetFqdns: map['targetFqdns'] == null ? null : (map['targetFqdns'] as List).cast<String>(),
      targetUrls: map['targetUrls'] == null ? null : (map['targetUrls'] as List).cast<String>(),
      terminateTLS: map['terminateTLS'] == null ? null : map['terminateTLS'] as bool,
      webCategories: map['webCategories'] == null ? null : (map['webCategories'] as List).cast<String>(),
    );
  }
}

