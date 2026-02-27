// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPatchDeployment.
class GetPatchDeploymentOsconfigV1betaArgs {
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;

  GetPatchDeploymentOsconfigV1betaArgs({
    required this.patchDeploymentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['patchDeploymentId'] = patchDeploymentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPatchDeploymentOsconfigV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetPatchDeploymentOsconfigV1betaArgs(
      patchDeploymentId: pulumi.Input.asInput<String>(map['patchDeploymentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
