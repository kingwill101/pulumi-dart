// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_dns_resolver_policy_args_doc}
/// The set of arguments for DnsResolverPolicy.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_dns_resolver_policy_args_doc}
class DnsResolverPolicyArgs {
  /// The name of the DNS resolver policy.
  final pulumi.Input<String>? dnsResolverPolicyName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DnsResolverPolicyArgs].
  /// [dnsResolverPolicyName] The name of the DNS resolver policy.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DnsResolverPolicyArgs({
    this.dnsResolverPolicyName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverPolicyName': ?dnsResolverPolicyName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DnsResolverPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DnsResolverPolicyArgs(
      dnsResolverPolicyName: map['dnsResolverPolicyName'] == null ? null : (map['dnsResolverPolicyName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

