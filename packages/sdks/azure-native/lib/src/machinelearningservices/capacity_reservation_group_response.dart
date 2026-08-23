// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_offer_response.dart';

class CapacityReservationGroupResponse {
  /// Offer used by this capacity reservation group.
  final pulumi.Input<ServerlessOfferResponse>? offer;
  /// [Required] Specifies the amount of capacity to reserve.
  final pulumi.Input<int> reservedCapacity;

  /// Creates a new [CapacityReservationGroupResponse].
  /// [offer] Offer used by this capacity reservation group.
  /// [reservedCapacity] [Required] Specifies the amount of capacity to reserve.
  const CapacityReservationGroupResponse({
    this.offer,
    required this.reservedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': ?pulumi.Input.mapOptionalInputValue<ServerlessOfferResponse, Map<String, dynamic>>(offer, (value) => value.toMap()),
      'reservedCapacity': reservedCapacity,
    };
  }

  factory CapacityReservationGroupResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroupResponse(
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessOfferResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reservedCapacity: pulumi.Input.fromValue(map['reservedCapacity'] as int),
    );
  }
}
