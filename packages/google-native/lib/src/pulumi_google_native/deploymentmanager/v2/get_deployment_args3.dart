// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDeployment.
class GetDeploymentArgs3 {
  final Input<String> deployment;
  final Input<String>? project;

  GetDeploymentArgs3({
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

  factory GetDeploymentArgs3.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs3(
      deployment: Input.asInput<String>(map['deployment']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
