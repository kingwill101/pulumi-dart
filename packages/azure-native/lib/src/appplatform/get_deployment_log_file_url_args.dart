// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_deployment_log_file_url_args_doc}
/// Arguments for getDeploymentLogFileUrl.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_deployment_log_file_url_args_doc}
class GetDeploymentLogFileUrlArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the Deployment resource.
  final pulumi.Input<String> deploymentName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetDeploymentLogFileUrlArgs].
  /// [appName] The name of the App resource.
  /// [deploymentName] The name of the Deployment resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetDeploymentLogFileUrlArgs({
    required String appName,
    required String deploymentName,
    required String resourceGroupName,
    required String serviceName,
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

  factory GetDeploymentLogFileUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentLogFileUrlArgs(
      appName: map['appName'] as String,
      deploymentName: map['deploymentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

