// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference.dart';

/// settings for security policy patterns to match
class SecurityPolicyWebApplicationFirewallAssociation {
  /// List of domains.
  final pulumi.Input<List<ActivatedResourceReference>?>? domains;
  /// List of paths
  final pulumi.Input<List<String>?>? patternsToMatch;

  /// Creates a new [SecurityPolicyWebApplicationFirewallAssociation].
  /// [domains] List of domains.
  /// [patternsToMatch] List of paths
  const SecurityPolicyWebApplicationFirewallAssociation({
    this.domains,
    this.patternsToMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?pulumi.Input.mapOptionalInputValue<List<ActivatedResourceReference>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ActivatedResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'patternsToMatch': ?patternsToMatch,
    };
  }

  factory SecurityPolicyWebApplicationFirewallAssociation.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyWebApplicationFirewallAssociation(
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivatedResourceReference>(guardedValue, (value) => ActivatedResourceReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      patternsToMatch: (() { final guardedValue = map['patternsToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
