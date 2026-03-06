// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_dns_resolver_domain_list_args_doc}
/// The set of arguments for DnsResolverDomainList.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_dns_resolver_domain_list_args_doc}
class DnsResolverDomainListArgs {
  /// The name of the DNS resolver domain list.
  final pulumi.Input<String>? dnsResolverDomainListName;
  /// The domains in the domain list.
  final pulumi.Input<List<String>> domains;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DnsResolverDomainListArgs].
  /// [dnsResolverDomainListName] The name of the DNS resolver domain list.
  /// [domains] The domains in the domain list.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const DnsResolverDomainListArgs({
    this.dnsResolverDomainListName,
    required this.domains,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverDomainListName': ?dnsResolverDomainListName,
      'domains': domains,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DnsResolverDomainListArgs.fromMap(Map<String, dynamic> map) {
    return DnsResolverDomainListArgs(
      dnsResolverDomainListName: (() { final guardedValue = map['dnsResolverDomainListName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

