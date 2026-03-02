// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains ServiceProviderProperties in an ExpressRouteCircuit.
class ExpressRouteCircuitServiceProviderProperties {
  /// The BandwidthInMbps.
  final pulumi.Input<int>? bandwidthInMbps;
  /// The peering location.
  final pulumi.Input<String>? peeringLocation;
  /// The serviceProviderName.
  final pulumi.Input<String>? serviceProviderName;

  /// Creates a new [ExpressRouteCircuitServiceProviderProperties].
  /// [bandwidthInMbps] The BandwidthInMbps.
  /// [peeringLocation] The peering location.
  /// [serviceProviderName] The serviceProviderName.
  ExpressRouteCircuitServiceProviderProperties({
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

  factory ExpressRouteCircuitServiceProviderProperties.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitServiceProviderProperties(
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : (map['bandwidthInMbps']! as int).input(),
      peeringLocation: map['peeringLocation'] == null ? null : (map['peeringLocation']! as String).input(),
      serviceProviderName: map['serviceProviderName'] == null ? null : (map['serviceProviderName']! as String).input(),
    );
  }
}

