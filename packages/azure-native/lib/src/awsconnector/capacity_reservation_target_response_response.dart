// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CapacityReservationTargetResponse
class CapacityReservationTargetResponseResponse {
  /// <p>The ID of the targeted Capacity Reservation.</p>
  final String? capacityReservationId;
  /// <p>The ARN of the targeted Capacity Reservation group.</p>
  final String? capacityReservationResourceGroupArn;

  /// Creates a new [CapacityReservationTargetResponseResponse].
  /// [capacityReservationId] <p>The ID of the targeted Capacity Reservation.</p>
  /// [capacityReservationResourceGroupArn] <p>The ARN of the targeted Capacity Reservation group.</p>
  CapacityReservationTargetResponseResponse({
    this.capacityReservationId,
    this.capacityReservationResourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationId': ?capacityReservationId,
      'capacityReservationResourceGroupArn': ?capacityReservationResourceGroupArn,
    };
  }

  factory CapacityReservationTargetResponseResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationTargetResponseResponse(
      capacityReservationId: map['capacityReservationId'] == null ? null : map['capacityReservationId'] as String,
      capacityReservationResourceGroupArn: map['capacityReservationResourceGroupArn'] == null ? null : map['capacityReservationResourceGroupArn'] as String,
    );
  }
}

