// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_update_policy_maintenance_window.dart';

class GetClusterMaintenanceUpdatePolicy {
  /// Preferred windows to perform maintenance. Currently limited to 1.
  final List<GetClusterMaintenanceUpdatePolicyMaintenanceWindow>
      maintenanceWindows;

  /// Creates a new [GetClusterMaintenanceUpdatePolicy].
  /// [maintenanceWindows] Preferred windows to perform maintenance. Currently limited to 1.
  GetClusterMaintenanceUpdatePolicy({
    required this.maintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceWindows'] = pulumi.Input.encodeList<
        GetClusterMaintenanceUpdatePolicyMaintenanceWindow,
        Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap());
    return map;
  }

  factory GetClusterMaintenanceUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenanceUpdatePolicy(
      maintenanceWindows: pulumi.Input.decodeList<
              GetClusterMaintenanceUpdatePolicyMaintenanceWindow>(
          map['maintenanceWindows'],
          (value) => GetClusterMaintenanceUpdatePolicyMaintenanceWindow.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
