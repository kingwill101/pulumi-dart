// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_dns_forwarding_ruleset_response.dart';

/// Result data returned by listDnsForwardingRulesetByVirtualNetwork.
class ListDnsForwardingRulesetByVirtualNetworkResult {
  /// The continuation token for the next page of results.
  final String? nextLink;
  /// Enumeration of the Virtual Network DNS Forwarding Ruleset.
  final List<VirtualNetworkDnsForwardingRulesetResponse>? value;

  /// Creates a new [ListDnsForwardingRulesetByVirtualNetworkResult].
  /// [nextLink] The continuation token for the next page of results.
  /// [value] Enumeration of the Virtual Network DNS Forwarding Ruleset.
  const ListDnsForwardingRulesetByVirtualNetworkResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkDnsForwardingRulesetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListDnsForwardingRulesetByVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return ListDnsForwardingRulesetByVirtualNetworkResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkDnsForwardingRulesetResponse>(guardedValue, (value) => VirtualNetworkDnsForwardingRulesetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
