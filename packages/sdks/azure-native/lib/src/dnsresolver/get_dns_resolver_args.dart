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
  GetDnsResolverArgs({
    required pulumi.Output<String> dnsResolverName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dnsResolverName = pulumi.Input.asInput<String>(dnsResolverName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDnsResolverArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsResolverArgs(
      dnsResolverName: pulumi.Output.create<String>(map['dnsResolverName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

