// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CapacityReservationTargetResponse
class CapacityReservationTargetResponse {
  /// &lt;p&gt;The ID of the targeted Capacity Reservation.&lt;/p&gt;
  final pulumi.Input<String?>? capacityReservationId;
  /// &lt;p&gt;The ARN of the targeted Capacity Reservation group.&lt;/p&gt;
  final pulumi.Input<String?>? capacityReservationResourceGroupArn;

  /// Creates a new [CapacityReservationTargetResponse].
  /// [capacityReservationId] &lt;p&gt;The ID of the targeted Capacity Reservation.&lt;/p&gt;
  /// [capacityReservationResourceGroupArn] &lt;p&gt;The ARN of the targeted Capacity Reservation group.&lt;/p&gt;
  const CapacityReservationTargetResponse({
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
      capacityReservationId: (() { final guardedValue = map['capacityReservationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservationResourceGroupArn: (() { final guardedValue = map['capacityReservationResourceGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
