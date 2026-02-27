// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_maintenance_policy_maintenance_exclusion_window/cluster_maintenance_policy_maintenance_exclusion_window.dart';

class ClusterMaintenancePolicyMaintenanceExclusionEdgecontainer {
  /// A unique (per cluster) id for the window.
  final String? id;

  /// Represents an arbitrary window of time.
  /// Structure is documented below.
  final ClusterMaintenancePolicyMaintenanceExclusionWindow? window;

  ClusterMaintenancePolicyMaintenanceExclusionEdgecontainer({
    this.id,
    this.window,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final windowValue = window;
    if (windowValue != null) {
      map['window'] = windowValue.toMap();
    }
    return map;
  }

  factory ClusterMaintenancePolicyMaintenanceExclusionEdgecontainer.fromMap(
      Map<String, dynamic> map) {
    return ClusterMaintenancePolicyMaintenanceExclusionEdgecontainer(
      id: map['id'] == null ? null : map['id'] as String,
      window: map['window'] == null
          ? null
          : ClusterMaintenancePolicyMaintenanceExclusionWindow.fromMap(
              (map['window'] as Map).cast<String, dynamic>()),
    );
  }
}
