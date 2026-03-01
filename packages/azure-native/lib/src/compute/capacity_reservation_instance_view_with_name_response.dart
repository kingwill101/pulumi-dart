// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_utilization_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a capacity reservation that includes the name of the capacity reservation. It is used for the response to the instance view of a capacity reservation group.
class CapacityReservationInstanceViewWithNameResponse {
  /// The name of the capacity reservation.
  final String name;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;
  /// Unutilized capacity of the capacity reservation.
  final CapacityReservationUtilizationResponse? utilizationInfo;

  /// Creates a new [CapacityReservationInstanceViewWithNameResponse].
  /// [name] The name of the capacity reservation.
  /// [statuses] The resource status information.
  /// [utilizationInfo] Unutilized capacity of the capacity reservation.
  CapacityReservationInstanceViewWithNameResponse({
    required this.name,
    this.statuses,
    this.utilizationInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'utilizationInfo': ?utilizationInfo == null ? null : utilizationInfo!.toMap(),
    };
  }

  factory CapacityReservationInstanceViewWithNameResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationInstanceViewWithNameResponse(
      name: map['name'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      utilizationInfo: map['utilizationInfo'] == null ? null : CapacityReservationUtilizationResponse.fromMap((map['utilizationInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

