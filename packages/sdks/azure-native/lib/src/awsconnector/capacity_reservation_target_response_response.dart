// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CapacityReservationTargetResponse
class CapacityReservationTargetResponseResponse {
  /// <p>The ID of the targeted Capacity Reservation.</p>
  final pulumi.Input<String>? capacityReservationId;
  /// <p>The ARN of the targeted Capacity Reservation group.</p>
  final pulumi.Input<String>? capacityReservationResourceGroupArn;

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
      capacityReservationId: map['capacityReservationId'] == null ? null : (map['capacityReservationId']! as String).input(),
      capacityReservationResourceGroupArn: map['capacityReservationResourceGroupArn'] == null ? null : (map['capacityReservationResourceGroupArn']! as String).input(),
    );
  }
}

