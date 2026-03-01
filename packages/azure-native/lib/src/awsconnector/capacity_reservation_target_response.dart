// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CapacityReservationTargetResponse
class CapacityReservationTargetResponse {
  /// <p>The ID of the targeted Capacity Reservation.</p>
  final String? capacityReservationId;
  /// <p>The ARN of the targeted Capacity Reservation group.</p>
  final String? capacityReservationResourceGroupArn;

  /// Creates a new [CapacityReservationTargetResponse].
  /// [capacityReservationId] <p>The ID of the targeted Capacity Reservation.</p>
  /// [capacityReservationResourceGroupArn] <p>The ARN of the targeted Capacity Reservation group.</p>
  CapacityReservationTargetResponse({
    this.capacityReservationId,
    this.capacityReservationResourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationId': ?capacityReservationId,
      'capacityReservationResourceGroupArn': ?capacityReservationResourceGroupArn,
    };
  }

  factory CapacityReservationTargetResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationTargetResponse(
      capacityReservationId: map['capacityReservationId'] == null ? null : map['capacityReservationId'] as String,
      capacityReservationResourceGroupArn: map['capacityReservationResourceGroupArn'] == null ? null : map['capacityReservationResourceGroupArn'] as String,
    );
  }
}

