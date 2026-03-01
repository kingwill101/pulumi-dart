// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1beta_get_workstation_workstations_v1beta_args_doc}
/// Arguments for getWorkstation.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_get_workstation_workstations_v1beta_args_doc}
class GetWorkstationWorkstationsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;
  final pulumi.Input<String> workstationId;

  /// Creates a new [GetWorkstationWorkstationsV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  /// [workstationId] Required.
  GetWorkstationWorkstationsV1betaArgs({
    required String location,
    String? project,
    required String workstationClusterId,
    required String workstationConfigId,
    required String workstationId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       workstationClusterId = pulumi.Input.asInput<String>(
         workstationClusterId,
       ),
       workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId),
       workstationId = pulumi.Input.asInput<String>(workstationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
      'workstationId': workstationId,
    };
  }

  factory GetWorkstationWorkstationsV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkstationWorkstationsV1betaArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
      workstationConfigId: map['workstationConfigId'] as String,
      workstationId: map['workstationId'] as String,
    );
  }
}
