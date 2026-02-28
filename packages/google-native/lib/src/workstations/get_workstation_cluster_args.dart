// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1_get_workstation_cluster_args_doc}
/// Arguments for getWorkstationCluster.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_get_workstation_cluster_args_doc}
class GetWorkstationClusterArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;

  /// Creates a new [GetWorkstationClusterArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  GetWorkstationClusterArgs({
    required String location,
    String? project,
    required String workstationClusterId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        workstationClusterId =
            pulumi.Input.asInput<String>(workstationClusterId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    return map;
  }

  factory GetWorkstationClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
    );
  }
}
