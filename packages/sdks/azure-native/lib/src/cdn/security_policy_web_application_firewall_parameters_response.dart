// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'security_policy_web_application_firewall_association_response.dart';

/// The json object containing security policy waf parameters
class SecurityPolicyWebApplicationFirewallParametersResponse {
  /// Waf associations
  final pulumi.Input<List<SecurityPolicyWebApplicationFirewallAssociationResponse>>? associations;
  /// The type of the Security policy to create.
  /// Expected value is 'WebApplicationFirewall'.
  final pulumi.Input<String> type;
  /// Resource ID.
  final pulumi.Input<ResourceReferenceResponse>? wafPolicy;

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
      'associations': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyWebApplicationFirewallAssociationResponse>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<SecurityPolicyWebApplicationFirewallAssociationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'wafPolicy': ?pulumi.Input.mapOptionalInputValue<ResourceReferenceResponse, Map<String, dynamic>>(wafPolicy, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyWebApplicationFirewallParametersResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyWebApplicationFirewallParametersResponse(
      associations: map['associations'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyWebApplicationFirewallAssociationResponse>(map['associations']!, (value) => SecurityPolicyWebApplicationFirewallAssociationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      wafPolicy: map['wafPolicy'] == null ? null : (ResourceReferenceResponse.fromMap((map['wafPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

