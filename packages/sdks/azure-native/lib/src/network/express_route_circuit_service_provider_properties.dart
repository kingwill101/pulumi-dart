// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains ServiceProviderProperties in an ExpressRouteCircuit.
class ExpressRouteCircuitServiceProviderProperties {
  /// The BandwidthInMbps.
  final pulumi.Input<int?>? bandwidthInMbps;
  /// The peering location.
  final pulumi.Input<String?>? peeringLocation;
  /// The serviceProviderName.
  final pulumi.Input<String?>? serviceProviderName;

  /// Creates a new [ExpressRouteCircuitServiceProviderProperties].
  /// [bandwidthInMbps] The BandwidthInMbps.
  /// [peeringLocation] The peering location.
  /// [serviceProviderName] The serviceProviderName.
  const ExpressRouteCircuitServiceProviderProperties({
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
      bandwidthInMbps: (() { final guardedValue = map['bandwidthInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      peeringLocation: (() { final guardedValue = map['peeringLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderName: (() { final guardedValue = map['serviceProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
