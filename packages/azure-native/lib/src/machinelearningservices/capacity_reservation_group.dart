// ignore_for_file: unused_element, unnecessary_cast

import 'serverless_offer.dart';

class CapacityReservationGroup {
  /// Offer used by this capacity reservation group.
  final ServerlessOffer? offer;
  /// [Required] Specifies the amount of capacity to reserve.
  final int reservedCapacity;

  /// Creates a new [CapacityReservationGroup].
  /// [offer] Offer used by this capacity reservation group.
  /// [reservedCapacity] [Required] Specifies the amount of capacity to reserve.
  CapacityReservationGroup({
    this.offer,
    required this.reservedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': ?offer == null ? null : offer!.toMap(),
      'reservedCapacity': reservedCapacity,
    };
  }

  factory CapacityReservationGroup.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroup(
      offer: map['offer'] == null ? null : ServerlessOffer.fromMap((map['offer'] as Map).cast<String, dynamic>()),
      reservedCapacity: map['reservedCapacity'] as int,
    );
  }
}

