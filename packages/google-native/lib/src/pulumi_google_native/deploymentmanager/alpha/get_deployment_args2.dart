// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDeployment.
class GetDeploymentArgs2 {
  final Input<String> deployment;
  final Input<String>? project;

  GetDeploymentArgs2({
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

  factory GetDeploymentArgs2.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs2(
      deployment: Input.asInput<String>(map['deployment']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
