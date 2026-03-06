// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_dns_resolver_policy_args_doc}
/// Arguments for getDnsResolverPolicy.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_dns_resolver_policy_args_doc}
class GetDnsResolverPolicyArgs {
  /// The name of the DNS resolver policy.
  final pulumi.Input<String> dnsResolverPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDnsResolverPolicyArgs].
  /// [dnsResolverPolicyName] The name of the DNS resolver policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDnsResolverPolicyArgs({
    required this.dnsResolverPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverPolicyName': dnsResolverPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDnsResolverPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsResolverPolicyArgs(
      dnsResolverPolicyName: pulumi.Input.fromValue(map['dnsResolverPolicyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

