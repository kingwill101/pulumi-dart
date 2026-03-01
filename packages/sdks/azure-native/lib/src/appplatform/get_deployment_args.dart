// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_deployment_args_doc}
class GetDeploymentArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the Deployment resource.
  final pulumi.Input<String> deploymentName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetDeploymentArgs].
  /// [appName] The name of the App resource.
  /// [deploymentName] The name of the Deployment resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetDeploymentArgs({
    required pulumi.Output<String> appName,
    required pulumi.Output<String> deploymentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      deploymentName = pulumi.Input.asInput<String>(deploymentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'deploymentName': deploymentName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      appName: pulumi.Output.create<String>(map['appName'] as String),
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

