// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_maintenance_policy_window_recurring_window/cluster_maintenance_policy_window_recurring_window.dart';

class ClusterMaintenancePolicyWindow {
  /// Represents an arbitrary window of time that recurs.
  /// Structure is documented below.
  final ClusterMaintenancePolicyWindowRecurringWindow recurringWindow;

  ClusterMaintenancePolicyWindow({
    required this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recurringWindow'] = recurringWindow.toMap();
    return map;
  }

  factory ClusterMaintenancePolicyWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyWindow(
      recurringWindow: ClusterMaintenancePolicyWindowRecurringWindow.fromMap(
          (map['recurringWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
