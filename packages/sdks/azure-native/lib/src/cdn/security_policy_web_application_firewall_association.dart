// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference.dart';

/// settings for security policy patterns to match
class SecurityPolicyWebApplicationFirewallAssociation {
  /// List of domains.
  final List<ActivatedResourceReference>? domains;
  /// List of paths
  final List<String>? patternsToMatch;

  /// Creates a new [SecurityPolicyWebApplicationFirewallAssociation].
  /// [domains] List of domains.
  /// [patternsToMatch] List of paths
  SecurityPolicyWebApplicationFirewallAssociation({
    this.domains,
    this.patternsToMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains == null ? null : pulumi.Input.encodeList<ActivatedResourceReference, Map<String, dynamic>>(domains!, (value) => value.toMap()),
      'patternsToMatch': ?patternsToMatch,
    };
  }

  factory SecurityPolicyWebApplicationFirewallAssociation.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyWebApplicationFirewallAssociation(
      domains: map['domains'] == null ? null : pulumi.Input.decodeList<ActivatedResourceReference>(map['domains'], (value) => ActivatedResourceReference.fromMap((value as Map).cast<String, dynamic>())),
      patternsToMatch: map['patternsToMatch'] == null ? null : (map['patternsToMatch'] as List).cast<String>(),
    );
  }
}

