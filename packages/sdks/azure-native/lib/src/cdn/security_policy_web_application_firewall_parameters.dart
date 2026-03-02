// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';
import 'security_policy_web_application_firewall_association.dart';

/// The json object containing security policy waf parameters
class SecurityPolicyWebApplicationFirewallParameters {
  /// Waf associations
  final pulumi.Input<List<SecurityPolicyWebApplicationFirewallAssociation>>? associations;
  /// The type of the Security policy to create.
  /// Expected value is 'WebApplicationFirewall'.
  final pulumi.Input<String> type;
  /// Resource ID.
  final pulumi.Input<ResourceReference>? wafPolicy;

  /// Creates a new [SecurityPolicyWebApplicationFirewallParameters].
  /// [associations] Waf associations
  /// [type] The type of the Security policy to create.
  /// [wafPolicy] Resource ID.
  SecurityPolicyWebApplicationFirewallParameters({
    this.associations,
    required this.type,
    this.wafPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyWebApplicationFirewallAssociation>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<SecurityPolicyWebApplicationFirewallAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'wafPolicy': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(wafPolicy, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyWebApplicationFirewallParameters.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyWebApplicationFirewallParameters(
      associations: map['associations'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyWebApplicationFirewallAssociation>(map['associations']!, (value) => SecurityPolicyWebApplicationFirewallAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      wafPolicy: map['wafPolicy'] == null ? null : (ResourceReference.fromMap((map['wafPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

