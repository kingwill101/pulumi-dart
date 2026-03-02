// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response.dart';

/// The response from the List namespace operation.
class NWRuleSetVirtualNetworkRulesResponse {
  /// Value that indicates whether to ignore missing Vnet Service Endpoint
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// Subnet properties
  final pulumi.Input<SubnetResponse>? subnet;

  /// Creates a new [NWRuleSetVirtualNetworkRulesResponse].
  /// [ignoreMissingVnetServiceEndpoint] Value that indicates whether to ignore missing Vnet Service Endpoint
  /// [subnet] Subnet properties
  NWRuleSetVirtualNetworkRulesResponse({
    this.ignoreMissingVnetServiceEndpoint,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory NWRuleSetVirtualNetworkRulesResponse.fromMap(Map<String, dynamic> map) {
    return NWRuleSetVirtualNetworkRulesResponse(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : (map['ignoreMissingVnetServiceEndpoint']! as bool).input(),
      subnet: map['subnet'] == null ? null : (SubnetResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

