// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_safety_endpoint_deployment_resource_properties.dart';

/// {@template pulumi_machinelearningservices_endpoint_deployment_args_doc}
/// The set of arguments for EndpointDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_endpoint_deployment_args_doc}
class EndpointDeploymentArgs {
  /// Name of the deployment resource
  final pulumi.Input<String>? deploymentName;
  /// Name of the endpoint resource.
  final pulumi.Input<String> endpointName;
  final pulumi.Input<ContentSafetyEndpointDeploymentResourceProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EndpointDeploymentArgs].
  /// [deploymentName] Name of the deployment resource
  /// [endpointName] Name of the endpoint resource.
  /// [properties] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const EndpointDeploymentArgs({
    this.deploymentName,
    required this.endpointName,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'endpointName': endpointName,
      'properties': pulumi.Input.mapInputValue<ContentSafetyEndpointDeploymentResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory EndpointDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentArgs(
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      properties: pulumi.Input.fromValue(ContentSafetyEndpointDeploymentResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

