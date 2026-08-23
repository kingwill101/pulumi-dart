// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_dns_security_rule_args_doc}
/// Arguments for getDnsSecurityRule.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_dns_security_rule_args_doc}
class GetDnsSecurityRuleArgs {
  /// The name of the DNS resolver policy.
  final pulumi.Input<String> dnsResolverPolicyName;
  /// The name of the DNS security rule.
  final pulumi.Input<String> dnsSecurityRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDnsSecurityRuleArgs].
  /// [dnsResolverPolicyName] The name of the DNS resolver policy.
  /// [dnsSecurityRuleName] The name of the DNS security rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDnsSecurityRuleArgs({
    required this.dnsResolverPolicyName,
    required this.dnsSecurityRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverPolicyName': dnsResolverPolicyName,
      'dnsSecurityRuleName': dnsSecurityRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDnsSecurityRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsSecurityRuleArgs(
      dnsResolverPolicyName: pulumi.Input.fromValue(map['dnsResolverPolicyName'] as String),
      dnsSecurityRuleName: pulumi.Input.fromValue(map['dnsSecurityRuleName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
