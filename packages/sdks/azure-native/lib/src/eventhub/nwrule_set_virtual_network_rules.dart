// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// The response from the List namespace operation.
class NWRuleSetVirtualNetworkRules {
  /// Value that indicates whether to ignore missing Vnet Service Endpoint
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// Subnet properties
  final pulumi.Input<Subnet>? subnet;

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
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory NWRuleSetVirtualNetworkRules.fromMap(Map<String, dynamic> map) {
    return NWRuleSetVirtualNetworkRules(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : (map['ignoreMissingVnetServiceEndpoint'] as bool).input(),
      subnet: map['subnet'] == null ? null : (Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

