// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_read_only_response.dart';

/// Represents the capacity reservation utilization in terms of resources allocated.
class CapacityReservationUtilizationResponse {
  /// The value provides the current capacity of the VM size which was reserved successfully and for which the customer is getting billed. Minimum api-version: 2022-08-01.
  final pulumi.Input<int> currentCapacity;
  /// A list of all virtual machines resource ids allocated against the capacity reservation.
  final pulumi.Input<List<SubResourceReadOnlyResponse>> virtualMachinesAllocated;

  /// Creates a new [CapacityReservationUtilizationResponse].
  /// [currentCapacity] The value provides the current capacity of the VM size which was reserved successfully and for which the customer is getting billed. Minimum api-version: 2022-08-01.
  /// [virtualMachinesAllocated] A list of all virtual machines resource ids allocated against the capacity reservation.
  const CapacityReservationUtilizationResponse({
    required this.currentCapacity,
    required this.virtualMachinesAllocated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentCapacity': currentCapacity,
      'virtualMachinesAllocated': pulumi.Input.mapInputValue<List<SubResourceReadOnlyResponse>, List<Map<String, dynamic>>>(virtualMachinesAllocated, (value) => pulumi.Input.encodeList<SubResourceReadOnlyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CapacityReservationUtilizationResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationUtilizationResponse(
      currentCapacity: pulumi.Input.fromValue(map['currentCapacity'] as int),
      virtualMachinesAllocated: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceReadOnlyResponse>(map['virtualMachinesAllocated']!, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

