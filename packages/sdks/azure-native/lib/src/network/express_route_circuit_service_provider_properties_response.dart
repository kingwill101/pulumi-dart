// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains ServiceProviderProperties in an ExpressRouteCircuit.
class ExpressRouteCircuitServiceProviderPropertiesResponse {
  /// The BandwidthInMbps.
  final pulumi.Input<int>? bandwidthInMbps;
  /// The peering location.
  final pulumi.Input<String>? peeringLocation;
  /// The serviceProviderName.
  final pulumi.Input<String>? serviceProviderName;

  /// Creates a new [ExpressRouteCircuitServiceProviderPropertiesResponse].
  /// [bandwidthInMbps] The BandwidthInMbps.
  /// [peeringLocation] The peering location.
  /// [serviceProviderName] The serviceProviderName.
  const ExpressRouteCircuitServiceProviderPropertiesResponse({
    this.bandwidthInMbps,
    this.peeringLocation,
    this.serviceProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInMbps': ?bandwidthInMbps,
      'peeringLocation': ?peeringLocation,
      'serviceProviderName': ?serviceProviderName,
    };
  }

  factory ExpressRouteCircuitServiceProviderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitServiceProviderPropertiesResponse(
      bandwidthInMbps: (() { final guardedValue = map['bandwidthInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peeringLocation: (() { final guardedValue = map['peeringLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderName: (() { final guardedValue = map['serviceProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
