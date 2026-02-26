// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response3.dart';

/// Time window specified for daily maintenance operations. GCE's internal maintenance will be performed within this window.
class NodeGroupMaintenanceWindowResponse3 {
  /// [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  final DurationResponse3 maintenanceDuration;

  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final String startTime;

  NodeGroupMaintenanceWindowResponse3({
    required this.maintenanceDuration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceDuration'] = maintenanceDuration.toMap();
    map['startTime'] = startTime;
    return map;
  }

  factory NodeGroupMaintenanceWindowResponse3.fromMap(
      Map<String, dynamic> map) {
    return NodeGroupMaintenanceWindowResponse3(
      maintenanceDuration: DurationResponse3.fromMap(
          (map['maintenanceDuration'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}
