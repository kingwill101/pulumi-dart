// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_application_rule_collection_rule_http_header.dart';
import 'firewall_policy_rule_collection_group_application_rule_collection_rule_protocol.dart';

class FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule {
  final String? description;
  final List<String>? destinationAddresses;
  /// Specifies a list of destination FQDN tags.
  final List<String>? destinationFqdnTags;
  final List<String>? destinationFqdns;
  /// Specifies a list of destination URLs for which policy should hold. Needs Premium SKU for Firewall Policy. Conflicts with `destination_fqdns`.
  final List<String>? destinationUrls;
  /// Specifies a list of HTTP/HTTPS headers to insert. One or more `http_headers` blocks as defined below.
  final List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader>? httpHeaders;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final String name;
  final List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol>? protocols;
  final List<String>? sourceAddresses;
  final List<String>? sourceIpGroups;
  /// Boolean specifying if TLS shall be terminated (true) or not (false). Must be `true` when using `destination_urls`. Needs Premium SKU for Firewall Policy.
  final bool? terminateTls;
  /// Specifies a list of web categories to which access is denied or allowed depending on the value of `action` above. Needs Premium SKU for Firewall Policy.
  final List<String>? webCategories;

  /// Creates a new [FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule].
  /// [description] Optional.
  /// [destinationAddresses] Optional.
  /// [destinationFqdnTags] Specifies a list of destination FQDN tags.
  /// [destinationFqdns] Optional.
  /// [destinationUrls] Specifies a list of destination URLs for which policy should hold. Needs Premium SKU for Firewall Policy. Conflicts with `destination_fqdns`.
  /// [httpHeaders] Specifies a list of HTTP/HTTPS headers to insert. One or more `http_headers` blocks as defined below.
  /// [name] The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [protocols] Optional.
  /// [sourceAddresses] Optional.
  /// [sourceIpGroups] Optional.
  /// [terminateTls] Boolean specifying if TLS shall be terminated (true) or not (false). Must be `true` when using `destination_urls`. Needs Premium SKU for Firewall Policy.
  /// [webCategories] Specifies a list of web categories to which access is denied or allowed depending on the value of `action` above. Needs Premium SKU for Firewall Policy.
  FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule({
    this.description,
    this.destinationAddresses,
    this.destinationFqdnTags,
    this.destinationFqdns,
    this.destinationUrls,
    this.httpHeaders,
    required this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.terminateTls,
    this.webCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationFqdnTags': ?destinationFqdnTags,
      'destinationFqdns': ?destinationFqdns,
      'destinationUrls': ?destinationUrls,
      'httpHeaders': ?httpHeaders == null ? null : pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader, Map<String, dynamic>>(httpHeaders!, (value) => value.toMap()),
      'name': name,
      'protocols': ?protocols == null ? null : pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol, Map<String, dynamic>>(protocols!, (value) => value.toMap()),
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'terminateTls': ?terminateTls,
      'webCategories': ?webCategories,
    };
  }

  factory FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      destinationFqdnTags: map['destinationFqdnTags'] == null ? null : (map['destinationFqdnTags'] as List).cast<String>(),
      destinationFqdns: map['destinationFqdns'] == null ? null : (map['destinationFqdns'] as List).cast<String>(),
      destinationUrls: map['destinationUrls'] == null ? null : (map['destinationUrls'] as List).cast<String>(),
      httpHeaders: map['httpHeaders'] == null ? null : pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader>(map['httpHeaders'], (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      protocols: map['protocols'] == null ? null : pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol>(map['protocols'], (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol.fromMap((value as Map).cast<String, dynamic>())),
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      terminateTls: map['terminateTls'] == null ? null : map['terminateTls'] as bool,
      webCategories: map['webCategories'] == null ? null : (map['webCategories'] as List).cast<String>(),
    );
  }
}

