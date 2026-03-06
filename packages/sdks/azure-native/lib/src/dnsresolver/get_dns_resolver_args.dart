// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_dns_resolver_args_doc}
/// Arguments for getDnsResolver.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_dns_resolver_args_doc}
class GetDnsResolverArgs {
  /// The name of the DNS resolver.
  final pulumi.Input<String> dnsResolverName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDnsResolverArgs].
  /// [dnsResolverName] The name of the DNS resolver.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDnsResolverArgs({
    required this.dnsResolverName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDnsResolverArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsResolverArgs(
      dnsResolverName: pulumi.Input.fromValue(map['dnsResolverName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

