// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_offer.dart';

class CapacityReservationGroup {
  /// Offer used by this capacity reservation group.
  final pulumi.Input<ServerlessOffer>? offer;
  /// [Required] Specifies the amount of capacity to reserve.
  final pulumi.Input<int> reservedCapacity;

  /// Creates a new [CapacityReservationGroup].
  /// [offer] Offer used by this capacity reservation group.
  /// [reservedCapacity] [Required] Specifies the amount of capacity to reserve.
  CapacityReservationGroup({
    this.offer,
    required this.reservedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': ?pulumi.Input.mapOptionalInputValue<ServerlessOffer, Map<String, dynamic>>(offer, (value) => value.toMap()),
      'reservedCapacity': reservedCapacity,
    };
  }

  factory CapacityReservationGroup.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroup(
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessOffer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reservedCapacity: pulumi.Input.fromValue(map['reservedCapacity'] as int),
    );
  }
}

