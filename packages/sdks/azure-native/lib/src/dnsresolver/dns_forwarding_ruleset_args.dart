// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_dnsresolver_dns_forwarding_ruleset_args_doc}
/// The set of arguments for DnsForwardingRuleset.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_dns_forwarding_ruleset_args_doc}
class DnsForwardingRulesetArgs {
  /// The name of the DNS forwarding ruleset.
  final pulumi.Input<String>? dnsForwardingRulesetName;
  /// The reference to the DNS resolver outbound endpoints that are used to route DNS queries matching the forwarding rules in the ruleset to the target DNS servers.
  final pulumi.Input<List<SubResource>> dnsResolverOutboundEndpoints;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DnsForwardingRulesetArgs].
  /// [dnsForwardingRulesetName] The name of the DNS forwarding ruleset.
  /// [dnsResolverOutboundEndpoints] The reference to the DNS resolver outbound endpoints that are used to route DNS queries matching the forwarding rules in the ruleset to the target DNS servers.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DnsForwardingRulesetArgs({
    this.dnsForwardingRulesetName,
    required this.dnsResolverOutboundEndpoints,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetName': ?dnsForwardingRulesetName,
      'dnsResolverOutboundEndpoints': pulumi.Input.mapInputValue<List<SubResource>, List<Map<String, dynamic>>>(dnsResolverOutboundEndpoints, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DnsForwardingRulesetArgs.fromMap(Map<String, dynamic> map) {
    return DnsForwardingRulesetArgs(
      dnsForwardingRulesetName: (() { final guardedValue = map['dnsForwardingRulesetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsResolverOutboundEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(map['dnsResolverOutboundEndpoints']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

