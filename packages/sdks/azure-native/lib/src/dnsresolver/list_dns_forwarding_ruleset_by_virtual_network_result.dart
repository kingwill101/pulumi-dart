// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_dns_forwarding_ruleset_response.dart';

/// Result data returned by listDnsForwardingRulesetByVirtualNetwork.
class ListDnsForwardingRulesetByVirtualNetworkResult {
  /// The continuation token for the next page of results.
  final String nextLink;
  /// Enumeration of the Virtual Network DNS Forwarding Ruleset.
  final List<VirtualNetworkDnsForwardingRulesetResponse>? value;

  /// Creates a new [ListDnsForwardingRulesetByVirtualNetworkResult].
  /// [nextLink] The continuation token for the next page of results.
  /// [value] Enumeration of the Virtual Network DNS Forwarding Ruleset.
  ListDnsForwardingRulesetByVirtualNetworkResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<VirtualNetworkDnsForwardingRulesetResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListDnsForwardingRulesetByVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return ListDnsForwardingRulesetByVirtualNetworkResult(
      nextLink: map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<VirtualNetworkDnsForwardingRulesetResponse>(map['value'], (value) => VirtualNetworkDnsForwardingRulesetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

