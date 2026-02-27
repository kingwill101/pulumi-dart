// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDeployment.
class GetDeploymentArgs {
  final Input<String> apiId;
  final Input<String> deploymentId;
  final Input<String> location;
  final Input<String>? project;

  GetDeploymentArgs({
    required this.apiId,
    required this.deploymentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['deploymentId'] = deploymentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      apiId: Input.asInput<String>(map['apiId']),
      deploymentId: Input.asInput<String>(map['deploymentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
