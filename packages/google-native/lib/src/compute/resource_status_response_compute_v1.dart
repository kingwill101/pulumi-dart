// ignore_for_file: unused_element, unnecessary_cast

import 'upcoming_maintenance_response_compute_v1.dart';

/// Contains output only fields. Use this sub-message for actual values set on Instance attributes as compared to the value requested by the user (intent) in their instance CRUD calls.
class ResourceStatusResponseComputeV1 {
  /// An opaque ID of the host on which the VM is running.
  final String physicalHost;
  final UpcomingMaintenanceResponseComputeV1 upcomingMaintenance;

  /// Creates a new [ResourceStatusResponseComputeV1].
  /// [physicalHost] An opaque ID of the host on which the VM is running.
  /// [upcomingMaintenance] Required.
  ResourceStatusResponseComputeV1({
    required this.physicalHost,
    required this.upcomingMaintenance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['physicalHost'] = physicalHost;
    map['upcomingMaintenance'] = upcomingMaintenance.toMap();
    return map;
  }

  factory ResourceStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponseComputeV1(
      physicalHost: map['physicalHost'] as String,
      upcomingMaintenance: UpcomingMaintenanceResponseComputeV1.fromMap(
          (map['upcomingMaintenance'] as Map).cast<String, dynamic>()),
    );
  }
}
