// ignore_for_file: unused_element, unnecessary_cast

import 'serverless_offer_response.dart';

class CapacityReservationGroupResponse {
  /// Offer used by this capacity reservation group.
  final ServerlessOfferResponse? offer;
  /// [Required] Specifies the amount of capacity to reserve.
  final int reservedCapacity;

  /// Creates a new [CapacityReservationGroupResponse].
  /// [offer] Offer used by this capacity reservation group.
  /// [reservedCapacity] [Required] Specifies the amount of capacity to reserve.
  CapacityReservationGroupResponse({
    this.offer,
    required this.reservedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': ?offer == null ? null : offer!.toMap(),
      'reservedCapacity': reservedCapacity,
    };
  }

  factory CapacityReservationGroupResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroupResponse(
      offer: map['offer'] == null ? null : ServerlessOfferResponse.fromMap((map['offer'] as Map).cast<String, dynamic>()),
      reservedCapacity: map['reservedCapacity'] as int,
    );
  }
}

