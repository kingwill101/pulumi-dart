// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Deployment.
class DeploymentArgs {
  /// The name of the image to deploy to cloudrun
  final pulumi.Input<String> imageName;

  /// The project in which to create the cloudrun resources
  final pulumi.Input<String> projectId;

  /// The name of the cloudrun service
  final pulumi.Input<String> serviceName;

  DeploymentArgs({
    required this.imageName,
    required this.projectId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageName'] = imageName;
    map['projectId'] = projectId;
    map['serviceName'] = serviceName;
    return map;
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      imageName: pulumi.Input.asInput<String>(map['imageName']),
      projectId: pulumi.Input.asInput<String>(map['projectId']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
    );
  }
}
