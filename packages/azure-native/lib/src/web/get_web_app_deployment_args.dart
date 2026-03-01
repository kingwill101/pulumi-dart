// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_deployment_args_doc}
/// Arguments for getWebAppDeployment.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_deployment_args_doc}
class GetWebAppDeploymentArgs {
  /// Deployment ID.
  final pulumi.Input<String> id;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppDeploymentArgs].
  /// [id] Deployment ID.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppDeploymentArgs({
    required String id,
    required String name,
    required String resourceGroupName,
  }) :
      id = pulumi.Input.asInput<String>(id),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDeploymentArgs(
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

