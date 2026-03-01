// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference_response.dart';

/// settings for security policy patterns to match
class SecurityPolicyWebApplicationFirewallAssociationResponse {
  /// List of domains.
  final List<ActivatedResourceReferenceResponse>? domains;
  /// List of paths
  final List<String>? patternsToMatch;

  /// Creates a new [SecurityPolicyWebApplicationFirewallAssociationResponse].
  /// [domains] List of domains.
  /// [patternsToMatch] List of paths
  SecurityPolicyWebApplicationFirewallAssociationResponse({
    this.domains,
    this.patternsToMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains == null ? null : pulumi.Input.encodeList<ActivatedResourceReferenceResponse, Map<String, dynamic>>(domains!, (value) => value.toMap()),
      'patternsToMatch': ?patternsToMatch,
    };
  }

  factory SecurityPolicyWebApplicationFirewallAssociationResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyWebApplicationFirewallAssociationResponse(
      domains: map['domains'] == null ? null : pulumi.Input.decodeList<ActivatedResourceReferenceResponse>(map['domains'], (value) => ActivatedResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      patternsToMatch: map['patternsToMatch'] == null ? null : (map['patternsToMatch'] as List).cast<String>(),
    );
  }
}

