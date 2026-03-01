// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'security_policy_web_application_firewall_association_response.dart';

/// The json object containing security policy waf parameters
class SecurityPolicyWebApplicationFirewallParametersResponse {
  /// Waf associations
  final List<SecurityPolicyWebApplicationFirewallAssociationResponse>? associations;
  /// The type of the Security policy to create.
  /// Expected value is 'WebApplicationFirewall'.
  final String type;
  /// Resource ID.
  final ResourceReferenceResponse? wafPolicy;

  /// Creates a new [SecurityPolicyWebApplicationFirewallParametersResponse].
  /// [associations] Waf associations
  /// [type] The type of the Security policy to create.
  /// [wafPolicy] Resource ID.
  SecurityPolicyWebApplicationFirewallParametersResponse({
    this.associations,
    required this.type,
    this.wafPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?associations == null ? null : pulumi.Input.encodeList<SecurityPolicyWebApplicationFirewallAssociationResponse, Map<String, dynamic>>(associations!, (value) => value.toMap()),
      'type': type,
      'wafPolicy': ?wafPolicy == null ? null : wafPolicy!.toMap(),
    };
  }

  factory SecurityPolicyWebApplicationFirewallParametersResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyWebApplicationFirewallParametersResponse(
      associations: map['associations'] == null ? null : pulumi.Input.decodeList<SecurityPolicyWebApplicationFirewallAssociationResponse>(map['associations'], (value) => SecurityPolicyWebApplicationFirewallAssociationResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      wafPolicy: map['wafPolicy'] == null ? null : ResourceReferenceResponse.fromMap((map['wafPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

