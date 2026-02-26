// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Deployment.
class DeploymentArgs {
  /// The name of the image to deploy to cloudrun
  final Input<String> imageName;

  /// The project in which to create the cloudrun resources
  final Input<String> projectId;

  /// The name of the cloudrun service
  final Input<String> serviceName;

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
      imageName: Input.asInput<String>(map['imageName']),
      projectId: Input.asInput<String>(map['projectId']),
      serviceName: Input.asInput<String>(map['serviceName']),
    );
  }
}
