// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1_get_workstation_cluster_workstation_config_workstation_iam_policy_args_doc}
/// Arguments for getWorkstationClusterWorkstationConfigWorkstationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_get_workstation_cluster_workstation_config_workstation_iam_policy_args_doc}
class GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;
  final pulumi.Input<String> workstationId;

  /// Creates a new [GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  /// [workstationId] Required.
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String workstationClusterId,
    required String workstationConfigId,
    required String workstationId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      workstationClusterId = pulumi.Input.asInput<String>(workstationClusterId),
      workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId),
      workstationId = pulumi.Input.asInput<String>(workstationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
      'workstationId': workstationId,
    };
  }

  factory GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
      workstationConfigId: map['workstationConfigId'] as String,
      workstationId: map['workstationId'] as String,
    );
  }
}

