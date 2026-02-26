// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_maintenance_policy_maintenance_exclusion_exclusion_options/cluster_maintenance_policy_maintenance_exclusion_exclusion_options.dart';

class ClusterMaintenancePolicyMaintenanceExclusion {
  final String? endTime;
  final String exclusionName;

  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions?
      exclusionOptions;
  final String startTime;

  ClusterMaintenancePolicyMaintenanceExclusion({
    this.endTime,
    required this.exclusionName,
    this.exclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['exclusionName'] = exclusionName;
    final exclusionOptionsValue = exclusionOptions;
    if (exclusionOptionsValue != null) {
      map['exclusionOptions'] = exclusionOptionsValue.toMap();
    }
    map['startTime'] = startTime;
    return map;
  }

  factory ClusterMaintenancePolicyMaintenanceExclusion.fromMap(
      Map<String, dynamic> map) {
    return ClusterMaintenancePolicyMaintenanceExclusion(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      exclusionName: map['exclusionName'] as String,
      exclusionOptions: map['exclusionOptions'] == null
          ? null
          : ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions
              .fromMap(
                  (map['exclusionOptions'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}
