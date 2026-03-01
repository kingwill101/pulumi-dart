// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1beta_get_patch_deployment_osconfig_v1beta_args_doc}
/// Arguments for getPatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1beta_get_patch_deployment_osconfig_v1beta_args_doc}
class GetPatchDeploymentOsconfigV1betaArgs {
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPatchDeploymentOsconfigV1betaArgs].
  /// [patchDeploymentId] Required.
  /// [project] Optional.
  GetPatchDeploymentOsconfigV1betaArgs({
    required String patchDeploymentId,
    String? project,
  }) : patchDeploymentId = pulumi.Input.asInput<String>(patchDeploymentId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchDeploymentId': patchDeploymentId,
      'project': ?project,
    };
  }

  factory GetPatchDeploymentOsconfigV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPatchDeploymentOsconfigV1betaArgs(
      patchDeploymentId: map['patchDeploymentId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
