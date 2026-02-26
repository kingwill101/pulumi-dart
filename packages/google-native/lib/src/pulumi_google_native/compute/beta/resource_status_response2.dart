// ignore_for_file: unused_element, unnecessary_cast

import 'resource_status_scheduling_response2.dart';
import 'upcoming_maintenance_response2.dart';

/// Contains output only fields. Use this sub-message for actual values set on Instance attributes as compared to the value requested by the user (intent) in their instance CRUD calls.
class ResourceStatusResponse2 {
  /// An opaque ID of the host on which the VM is running.
  final String physicalHost;
  final ResourceStatusSchedulingResponse2 scheduling;
  final UpcomingMaintenanceResponse2 upcomingMaintenance;

  ResourceStatusResponse2({
    required this.physicalHost,
    required this.scheduling,
    required this.upcomingMaintenance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['physicalHost'] = physicalHost;
    map['scheduling'] = scheduling.toMap();
    map['upcomingMaintenance'] = upcomingMaintenance.toMap();
    return map;
  }

  factory ResourceStatusResponse2.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponse2(
      physicalHost: map['physicalHost'] as String,
      scheduling: ResourceStatusSchedulingResponse2.fromMap(
          (map['scheduling'] as Map).cast<String, dynamic>()),
      upcomingMaintenance: UpcomingMaintenanceResponse2.fromMap(
          (map['upcomingMaintenance'] as Map).cast<String, dynamic>()),
    );
  }
}
