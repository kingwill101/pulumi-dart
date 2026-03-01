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
  DnsResolverDomainListArgs({
    pulumi.Output<String>? dnsResolverDomainListName,
    required pulumi.Output<List<String>> domains,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dnsResolverDomainListName = pulumi.Input.asOptionalInput<String>(dnsResolverDomainListName),
      domains = pulumi.Input.asInput<List<String>>(domains),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dnsResolverDomainListName: map['dnsResolverDomainListName'] == null ? null : pulumi.Output.create<String>(map['dnsResolverDomainListName'] as String),
      domains: pulumi.Output.create<List<String>>((map['domains'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

