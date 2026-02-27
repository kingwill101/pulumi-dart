// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPatchDeployment.
class GetPatchDeploymentArgs {
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;

  GetPatchDeploymentArgs({
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

  factory GetPatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchDeploymentArgs(
      patchDeploymentId: pulumi.Input.asInput<String>(map['patchDeploymentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
