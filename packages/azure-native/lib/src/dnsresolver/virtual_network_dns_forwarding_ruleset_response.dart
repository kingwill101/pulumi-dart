// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Reference to DNS forwarding ruleset and associated virtual network link.
class VirtualNetworkDnsForwardingRulesetResponse {
  /// DNS Forwarding Ruleset Resource ID.
  final String? id;
  /// The reference to the virtual network link.
  final SubResourceResponse? virtualNetworkLink;

  /// Creates a new [VirtualNetworkDnsForwardingRulesetResponse].
  /// [id] DNS Forwarding Ruleset Resource ID.
  /// [virtualNetworkLink] The reference to the virtual network link.
  VirtualNetworkDnsForwardingRulesetResponse({
    this.id,
    this.virtualNetworkLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'virtualNetworkLink': ?virtualNetworkLink == null ? null : virtualNetworkLink!.toMap(),
    };
  }

  factory VirtualNetworkDnsForwardingRulesetResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkDnsForwardingRulesetResponse(
      id: map['id'] == null ? null : map['id'] as String,
      virtualNetworkLink: map['virtualNetworkLink'] == null ? null : SubResourceResponse.fromMap((map['virtualNetworkLink'] as Map).cast<String, dynamic>()),
    );
  }
}

