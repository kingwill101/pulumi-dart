// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_index_deployment_args_doc}
class DeploymentArgs {
  /// The name of the image to deploy to cloudrun
  final pulumi.Input<String> imageName;

  /// The project in which to create the cloudrun resources
  final pulumi.Input<String> projectId;

  /// The name of the cloudrun service
  final pulumi.Input<String> serviceName;

  /// Creates a new [DeploymentArgs].
  /// [imageName] The name of the image to deploy to cloudrun
  /// [projectId] The project in which to create the cloudrun resources
  /// [serviceName] The name of the cloudrun service
  DeploymentArgs({
    required String imageName,
    required String projectId,
    required String serviceName,
  }) : imageName = pulumi.Input.asInput<String>(imageName),
       projectId = pulumi.Input.asInput<String>(projectId),
       serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'projectId': projectId,
      'serviceName': serviceName,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      imageName: map['imageName'] as String,
      projectId: map['projectId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
