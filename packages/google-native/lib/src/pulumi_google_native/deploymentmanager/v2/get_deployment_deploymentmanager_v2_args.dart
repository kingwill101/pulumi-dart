// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeployment.
class GetDeploymentDeploymentmanagerV2Args {
  final pulumi.Input<String> deployment;
  final pulumi.Input<String>? project;

  GetDeploymentDeploymentmanagerV2Args({
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

  factory GetDeploymentDeploymentmanagerV2Args.fromMap(
      Map<String, dynamic> map) {
    return GetDeploymentDeploymentmanagerV2Args(
      deployment: pulumi.Input.asInput<String>(map['deployment']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
