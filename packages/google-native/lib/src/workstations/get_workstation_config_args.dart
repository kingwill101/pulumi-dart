// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1_get_workstation_config_args_doc}
/// Arguments for getWorkstationConfig.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_get_workstation_config_args_doc}
class GetWorkstationConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [GetWorkstationConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  GetWorkstationConfigArgs({
    required String location,
    String? project,
    required String workstationClusterId,
    required String workstationConfigId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        workstationClusterId =
            pulumi.Input.asInput<String>(workstationClusterId),
        workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    return map;
  }

  factory GetWorkstationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationConfigArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
      workstationConfigId: map['workstationConfigId'] as String,
    );
  }
}
