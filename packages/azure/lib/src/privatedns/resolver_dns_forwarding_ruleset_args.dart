// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_resolver_dns_forwarding_ruleset_resolver_dns_forwarding_ruleset_args_doc}
/// The set of arguments for ResolverDnsForwardingRuleset.
/// {@endtemplate}
/// {@macro pulumi_privatedns_resolver_dns_forwarding_ruleset_resolver_dns_forwarding_ruleset_args_doc}
class ResolverDnsForwardingRulesetArgs {
  /// Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String>? name;
  /// The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset.
  final pulumi.Input<List<String>> privateDnsResolverOutboundEndpointIds;
  /// Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverDnsForwardingRulesetArgs].
  /// [location] Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [privateDnsResolverOutboundEndpointIds] The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [tags] A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset.
  ResolverDnsForwardingRulesetArgs({
    String? location,
    String? name,
    required List<String> privateDnsResolverOutboundEndpointIds,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateDnsResolverOutboundEndpointIds = pulumi.Input.asInput<List<String>>(privateDnsResolverOutboundEndpointIds),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'privateDnsResolverOutboundEndpointIds': privateDnsResolverOutboundEndpointIds,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResolverDnsForwardingRulesetArgs.fromMap(Map<String, dynamic> map) {
    return ResolverDnsForwardingRulesetArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateDnsResolverOutboundEndpointIds: (map['privateDnsResolverOutboundEndpointIds'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

