// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_utilization_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a capacity reservation that provides as snapshot of the runtime properties of the capacity reservation that is managed by the platform and can change outside of control plane operations.
class CapacityReservationInstanceViewResponse {
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;
  /// Unutilized capacity of the capacity reservation.
  final CapacityReservationUtilizationResponse? utilizationInfo;

  /// Creates a new [CapacityReservationInstanceViewResponse].
  /// [statuses] The resource status information.
  /// [utilizationInfo] Unutilized capacity of the capacity reservation.
  CapacityReservationInstanceViewResponse({
    this.statuses,
    this.utilizationInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'utilizationInfo': ?utilizationInfo == null ? null : utilizationInfo!.toMap(),
    };
  }

  factory CapacityReservationInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationInstanceViewResponse(
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      utilizationInfo: map['utilizationInfo'] == null ? null : CapacityReservationUtilizationResponse.fromMap((map['utilizationInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

