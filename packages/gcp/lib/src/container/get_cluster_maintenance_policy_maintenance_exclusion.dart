// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_policy_maintenance_exclusion_exclusion_option.dart';

class GetClusterMaintenancePolicyMaintenanceExclusion {
  final String endTime;
  final String exclusionName;

  /// Maintenance exclusion related options.
  final List<GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption>
  exclusionOptions;
  final String startTime;

  /// Creates a new [GetClusterMaintenancePolicyMaintenanceExclusion].
  /// [endTime] Required.
  /// [exclusionName] Required.
  /// [exclusionOptions] Maintenance exclusion related options.
  /// [startTime] Required.
  GetClusterMaintenancePolicyMaintenanceExclusion({
    required this.endTime,
    required this.exclusionName,
    required this.exclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'exclusionName': exclusionName,
      'exclusionOptions':
          pulumi.Input.encodeList<
            GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption,
            Map<String, dynamic>
          >(exclusionOptions, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory GetClusterMaintenancePolicyMaintenanceExclusion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterMaintenancePolicyMaintenanceExclusion(
      endTime: map['endTime'] as String,
      exclusionName: map['exclusionName'] as String,
      exclusionOptions:
          pulumi.Input.decodeList<
            GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption
          >(
            map['exclusionOptions'],
            (value) =>
                GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      startTime: map['startTime'] as String,
    );
  }
}
