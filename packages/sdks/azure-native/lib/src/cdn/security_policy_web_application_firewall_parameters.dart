// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';
import 'security_policy_web_application_firewall_association.dart';

/// The json object containing security policy waf parameters
class SecurityPolicyWebApplicationFirewallParameters {
  /// Waf associations
  final pulumi.Input<List<SecurityPolicyWebApplicationFirewallAssociation>?>? associations;
  /// The type of the Security policy to create.
  /// Expected value is 'WebApplicationFirewall'.
  final pulumi.Input<String> type;
  /// Resource ID.
  final pulumi.Input<ResourceReference?>? wafPolicy;

  /// Creates a new [SecurityPolicyWebApplicationFirewallParameters].
  /// [associations] Waf associations
  /// [type] The type of the Security policy to create.
  /// [wafPolicy] Resource ID.
  const SecurityPolicyWebApplicationFirewallParameters({
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
      associations: (() { final guardedValue = map['associations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyWebApplicationFirewallAssociation>(guardedValue, (value) => SecurityPolicyWebApplicationFirewallAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      wafPolicy: (() { final guardedValue = map['wafPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
