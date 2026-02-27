// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeployment.
class GetDeploymentDeploymentmanagerAlphaArgs {
  final pulumi.Input<String> deployment;
  final pulumi.Input<String>? project;

  GetDeploymentDeploymentmanagerAlphaArgs({
    required this.deployment,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeploymentDeploymentmanagerAlphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDeploymentDeploymentmanagerAlphaArgs(
      deployment: pulumi.Input.asInput<String>(map['deployment']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
