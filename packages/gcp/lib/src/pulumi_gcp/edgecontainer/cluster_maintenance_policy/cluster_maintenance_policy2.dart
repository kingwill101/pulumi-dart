// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_maintenance_policy_maintenance_exclusion/cluster_maintenance_policy_maintenance_exclusion2.dart';
import '../cluster_maintenance_policy_window/cluster_maintenance_policy_window.dart';

class ClusterMaintenancePolicy2 {
  /// Exclusions to automatic maintenance. Non-emergency maintenance should not occur
  /// in these windows. Each exclusion has a unique name and may be active or expired.
  /// The max number of maintenance exclusions allowed at a given time is 3.
  /// Structure is documented below.
  final List<ClusterMaintenancePolicyMaintenanceExclusion2>?
      maintenanceExclusions;

  /// Specifies the maintenance window in which maintenance may be performed.
  /// Structure is documented below.
  final ClusterMaintenancePolicyWindow window;

  ClusterMaintenancePolicy2({
    this.maintenanceExclusions,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maintenanceExclusionsValue = maintenanceExclusions;
    if (maintenanceExclusionsValue != null) {
      map['maintenanceExclusions'] = Input.encodeList<
              ClusterMaintenancePolicyMaintenanceExclusion2,
              Map<String, dynamic>>(
          maintenanceExclusionsValue, (value) => value.toMap());
    }
    map['window'] = window.toMap();
    return map;
  }

  factory ClusterMaintenancePolicy2.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicy2(
      maintenanceExclusions: map['maintenanceExclusions'] == null
          ? null
          : Input.decodeList<ClusterMaintenancePolicyMaintenanceExclusion2>(
              map['maintenanceExclusions'],
              (value) => ClusterMaintenancePolicyMaintenanceExclusion2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      window: ClusterMaintenancePolicyWindow.fromMap(
          (map['window'] as Map).cast<String, dynamic>()),
    );
  }
}
