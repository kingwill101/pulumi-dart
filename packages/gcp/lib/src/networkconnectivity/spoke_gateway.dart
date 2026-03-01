// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spoke_gateway_ip_range_reservation.dart';

class SpokeGateway {
  /// the capacity of the gateway spoke, in Gbps.
  /// Possible values are: `CAPACITY_1_GBPS`, `CAPACITY_10_GBPS`, `CAPACITY_100_GBPS`.
  final String capacity;
  /// A list of IP ranges that are reserved for this gateway's internal infrastructure.
  /// Structure is documented below.
  final List<SpokeGatewayIpRangeReservation> ipRangeReservations;
  /// (Output, Beta)
  /// Set of Cloud Routers that are attached to this NCC-GW
  final List<String>? routers;

  /// Creates a new [SpokeGateway].
  /// [capacity] the capacity of the gateway spoke, in Gbps.
  /// [ipRangeReservations] A list of IP ranges that are reserved for this gateway's internal infrastructure.
  /// [routers] (Output, Beta)
  SpokeGateway({
    required this.capacity,
    required this.ipRangeReservations,
    this.routers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'ipRangeReservations': pulumi.Input.encodeList<SpokeGatewayIpRangeReservation, Map<String, dynamic>>(ipRangeReservations, (value) => value.toMap()),
      'routers': ?routers,
    };
  }

  factory SpokeGateway.fromMap(Map<String, dynamic> map) {
    return SpokeGateway(
      capacity: map['capacity'] as String,
      ipRangeReservations: pulumi.Input.decodeList<SpokeGatewayIpRangeReservation>(map['ipRangeReservations'], (value) => SpokeGatewayIpRangeReservation.fromMap((value as Map).cast<String, dynamic>())),
      routers: map['routers'] == null ? null : (map['routers'] as List).cast<String>(),
    );
  }
}

