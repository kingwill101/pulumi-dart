// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_utilization_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a capacity reservation that provides as snapshot of the runtime properties of the capacity reservation that is managed by the platform and can change outside of control plane operations.
class CapacityReservationInstanceViewResponse {
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;
  /// Unutilized capacity of the capacity reservation.
  final pulumi.Input<CapacityReservationUtilizationResponse>? utilizationInfo;

  /// Creates a new [CapacityReservationInstanceViewResponse].
  /// [statuses] The resource status information.
  /// [utilizationInfo] Unutilized capacity of the capacity reservation.
  const CapacityReservationInstanceViewResponse({
    this.statuses,
    this.utilizationInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'utilizationInfo': ?pulumi.Input.mapOptionalInputValue<CapacityReservationUtilizationResponse, Map<String, dynamic>>(utilizationInfo, (value) => value.toMap()),
    };
  }

  factory CapacityReservationInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationInstanceViewResponse(
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      utilizationInfo: (() { final guardedValue = map['utilizationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityReservationUtilizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

