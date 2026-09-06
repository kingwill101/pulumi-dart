// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_connection_deployment_args_doc}
/// The set of arguments for ConnectionDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_connection_deployment_args_doc}
class ConnectionDeploymentArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// Name of the deployment resource
  final pulumi.Input<String?>? deploymentName;
  final pulumi.Input<dynamic> properties;
  /// Api version used by proxy call
  final pulumi.Input<String?>? proxyApiVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ConnectionDeploymentArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [deploymentName] Name of the deployment resource
  /// [properties] Required.
  /// [proxyApiVersion] Api version used by proxy call
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const ConnectionDeploymentArgs({
    required this.connectionName,
    this.deploymentName,
    required this.properties,
    this.proxyApiVersion,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'deploymentName': ?deploymentName,
      'properties': properties,
      'proxyApiVersion': ?proxyApiVersion,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ConnectionDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionDeploymentArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(map['properties']),
      proxyApiVersion: (() { final guardedValue = map['proxyApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
