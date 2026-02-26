// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_maintenance_policy_maintenance_exclusion_exclusion_option/get_cluster_maintenance_policy_maintenance_exclusion_exclusion_option.dart';

class GetClusterMaintenancePolicyMaintenanceExclusion {
  final String endTime;
  final String exclusionName;

  /// Maintenance exclusion related options.
  final List<GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption>
      exclusionOptions;
  final String startTime;

  GetClusterMaintenancePolicyMaintenanceExclusion({
    required this.endTime,
    required this.exclusionName,
    required this.exclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['exclusionName'] = exclusionName;
    map['exclusionOptions'] = Input.encodeList<
        GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption,
        Map<String, dynamic>>(exclusionOptions, (value) => value.toMap());
    map['startTime'] = startTime;
    return map;
  }

  factory GetClusterMaintenancePolicyMaintenanceExclusion.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyMaintenanceExclusion(
      endTime: map['endTime'] as String,
      exclusionName: map['exclusionName'] as String,
      exclusionOptions: Input.decodeList<
              GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption>(
          map['exclusionOptions'],
          (value) =>
              GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption
                  .fromMap((value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
    );
  }
}
