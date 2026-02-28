// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_v2beta_get_deployment_deploymentmanager_v2beta_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2beta_get_deployment_deploymentmanager_v2beta_args_doc}
class GetDeploymentDeploymentmanagerV2betaArgs {
  final pulumi.Input<String> deployment;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentDeploymentmanagerV2betaArgs].
  /// [deployment] Required.
  /// [project] Optional.
  GetDeploymentDeploymentmanagerV2betaArgs({
    required String deployment,
    String? project,
  })  : deployment = pulumi.Input.asInput<String>(deployment),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeploymentDeploymentmanagerV2betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDeploymentDeploymentmanagerV2betaArgs(
      deployment: map['deployment'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
