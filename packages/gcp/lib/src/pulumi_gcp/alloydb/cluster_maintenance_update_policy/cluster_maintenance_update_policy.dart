// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_maintenance_update_policy_maintenance_window/cluster_maintenance_update_policy_maintenance_window.dart';

class ClusterMaintenanceUpdatePolicy {
  /// Preferred windows to perform maintenance. Currently limited to 1.
  /// Structure is documented below.
  final List<ClusterMaintenanceUpdatePolicyMaintenanceWindow>?
      maintenanceWindows;

  ClusterMaintenanceUpdatePolicy({
    this.maintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maintenanceWindowsValue = maintenanceWindows;
    if (maintenanceWindowsValue != null) {
      map['maintenanceWindows'] = pulumi.Input.encodeList<
              ClusterMaintenanceUpdatePolicyMaintenanceWindow,
              Map<String, dynamic>>(
          maintenanceWindowsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterMaintenanceUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenanceUpdatePolicy(
      maintenanceWindows: map['maintenanceWindows'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterMaintenanceUpdatePolicyMaintenanceWindow>(
              map['maintenanceWindows'],
              (value) =>
                  ClusterMaintenanceUpdatePolicyMaintenanceWindow.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
