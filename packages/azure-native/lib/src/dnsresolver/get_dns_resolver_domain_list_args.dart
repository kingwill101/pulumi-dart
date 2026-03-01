// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_dns_resolver_domain_list_args_doc}
/// Arguments for getDnsResolverDomainList.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_dns_resolver_domain_list_args_doc}
class GetDnsResolverDomainListArgs {
  /// The name of the DNS resolver domain list.
  final pulumi.Input<String> dnsResolverDomainListName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDnsResolverDomainListArgs].
  /// [dnsResolverDomainListName] The name of the DNS resolver domain list.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDnsResolverDomainListArgs({
    required String dnsResolverDomainListName,
    required String resourceGroupName,
  }) :
      dnsResolverDomainListName = pulumi.Input.asInput<String>(dnsResolverDomainListName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverDomainListName': dnsResolverDomainListName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDnsResolverDomainListArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsResolverDomainListArgs(
      dnsResolverDomainListName: map['dnsResolverDomainListName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

