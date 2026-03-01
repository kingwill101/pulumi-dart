// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_safety_endpoint_deployment_resource_properties.dart';

/// {@template pulumi_machinelearningservices_connection_deployment_args_doc}
/// The set of arguments for ConnectionDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_connection_deployment_args_doc}
class ConnectionDeploymentArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// Name of the deployment resource
  final pulumi.Input<String>? deploymentName;
  final pulumi.Input<ContentSafetyEndpointDeploymentResourceProperties> properties;
  /// Api version used by proxy call
  final pulumi.Input<String>? proxyApiVersion;
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
  ConnectionDeploymentArgs({
    required pulumi.Output<String> connectionName,
    pulumi.Output<String>? deploymentName,
    required pulumi.Output<ContentSafetyEndpointDeploymentResourceProperties> properties,
    pulumi.Output<String>? proxyApiVersion,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      properties = pulumi.Input.asInput<ContentSafetyEndpointDeploymentResourceProperties>(properties),
      proxyApiVersion = pulumi.Input.asOptionalInput<String>(proxyApiVersion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'deploymentName': ?deploymentName,
      'properties': pulumi.Input.mapInputValue<ContentSafetyEndpointDeploymentResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'proxyApiVersion': ?proxyApiVersion,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ConnectionDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionDeploymentArgs(
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      deploymentName: map['deploymentName'] == null ? null : pulumi.Output.create<String>(map['deploymentName'] as String),
      properties: pulumi.Output.create<ContentSafetyEndpointDeploymentResourceProperties>(ContentSafetyEndpointDeploymentResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      proxyApiVersion: map['proxyApiVersion'] == null ? null : pulumi.Output.create<String>(map['proxyApiVersion'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

