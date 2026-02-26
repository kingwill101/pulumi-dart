// ignore_for_file: unused_element, unnecessary_cast

import 'upcoming_maintenance_response3.dart';

/// Contains output only fields. Use this sub-message for actual values set on Instance attributes as compared to the value requested by the user (intent) in their instance CRUD calls.
class ResourceStatusResponse3 {
  /// An opaque ID of the host on which the VM is running.
  final String physicalHost;
  final UpcomingMaintenanceResponse3 upcomingMaintenance;

  ResourceStatusResponse3({
    required this.physicalHost,
    required this.upcomingMaintenance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['physicalHost'] = physicalHost;
    map['upcomingMaintenance'] = upcomingMaintenance.toMap();
    return map;
  }

  factory ResourceStatusResponse3.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponse3(
      physicalHost: map['physicalHost'] as String,
      upcomingMaintenance: UpcomingMaintenanceResponse3.fromMap(
          (map['upcomingMaintenance'] as Map).cast<String, dynamic>()),
    );
  }
}
