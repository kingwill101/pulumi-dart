// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPatchDeployment.
class GetPatchDeploymentArgs2 {
  final Input<String> patchDeploymentId;
  final Input<String>? project;

  GetPatchDeploymentArgs2({
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

  factory GetPatchDeploymentArgs2.fromMap(Map<String, dynamic> map) {
    return GetPatchDeploymentArgs2(
      patchDeploymentId: Input.asInput<String>(map['patchDeploymentId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
