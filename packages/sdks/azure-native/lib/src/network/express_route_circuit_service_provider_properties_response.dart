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
  ExpressRouteCircuitServiceProviderPropertiesResponse({
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
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : (map['bandwidthInMbps']! as int).input(),
      peeringLocation: map['peeringLocation'] == null ? null : (map['peeringLocation']! as String).input(),
      serviceProviderName: map['serviceProviderName'] == null ? null : (map['serviceProviderName']! as String).input(),
    );
  }
}

