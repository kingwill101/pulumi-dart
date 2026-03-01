// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_maintenance_policy_window_recurring_window.dart';

class ClusterMaintenancePolicyWindow {
  /// Represents an arbitrary window of time that recurs.
  /// Structure is documented below.
  final ClusterMaintenancePolicyWindowRecurringWindow recurringWindow;

  /// Creates a new [ClusterMaintenancePolicyWindow].
  /// [recurringWindow] Represents an arbitrary window of time that recurs.
  ClusterMaintenancePolicyWindow({required this.recurringWindow});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recurringWindow': recurringWindow.toMap()};
  }

  factory ClusterMaintenancePolicyWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyWindow(
      recurringWindow: ClusterMaintenancePolicyWindowRecurringWindow.fromMap(
        (map['recurringWindow'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
