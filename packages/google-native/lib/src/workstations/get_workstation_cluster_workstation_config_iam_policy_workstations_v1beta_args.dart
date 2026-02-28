// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1beta_get_workstation_cluster_workstation_config_iam_policy_workstations_v1beta_args_doc}
/// Arguments for getWorkstationClusterWorkstationConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_get_workstation_cluster_workstation_config_iam_policy_workstations_v1beta_args_doc}
class GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String workstationClusterId,
    required String workstationConfigId,
  })  : location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        workstationClusterId =
            pulumi.Input.asInput<String>(workstationClusterId),
        workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    return map;
  }

  factory GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
      workstationConfigId: map['workstationConfigId'] as String,
    );
  }
}
