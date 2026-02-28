// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_deployment_resource_pool_args_doc}
/// Arguments for getDeploymentResourcePool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_deployment_resource_pool_args_doc}
class GetDeploymentResourcePoolArgs {
  final pulumi.Input<String> deploymentResourcePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentResourcePoolArgs].
  /// [deploymentResourcePoolId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeploymentResourcePoolArgs({
    required String deploymentResourcePoolId,
    required String location,
    String? project,
  })  : deploymentResourcePoolId =
            pulumi.Input.asInput<String>(deploymentResourcePoolId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deploymentResourcePoolId'] = deploymentResourcePoolId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeploymentResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolArgs(
      deploymentResourcePoolId: map['deploymentResourcePoolId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
