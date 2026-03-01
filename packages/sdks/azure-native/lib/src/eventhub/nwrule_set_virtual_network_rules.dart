// ignore_for_file: unused_element, unnecessary_cast

import 'subnet.dart';

/// The response from the List namespace operation.
class NWRuleSetVirtualNetworkRules {
  /// Value that indicates whether to ignore missing Vnet Service Endpoint
  final bool? ignoreMissingVnetServiceEndpoint;
  /// Subnet properties
  final Subnet? subnet;

  /// Creates a new [NWRuleSetVirtualNetworkRules].
  /// [ignoreMissingVnetServiceEndpoint] Value that indicates whether to ignore missing Vnet Service Endpoint
  /// [subnet] Subnet properties
  NWRuleSetVirtualNetworkRules({
    this.ignoreMissingVnetServiceEndpoint,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory NWRuleSetVirtualNetworkRules.fromMap(Map<String, dynamic> map) {
    return NWRuleSetVirtualNetworkRules(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
      subnet: map['subnet'] == null ? null : Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

