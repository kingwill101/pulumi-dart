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
  EndpointDeploymentArgs({
    pulumi.Output<String>? deploymentName,
    required pulumi.Output<String> endpointName,
    required pulumi.Output<ContentSafetyEndpointDeploymentResourceProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      endpointName = pulumi.Input.asInput<String>(endpointName),
      properties = pulumi.Input.asInput<ContentSafetyEndpointDeploymentResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      deploymentName: map['deploymentName'] == null ? null : pulumi.Output.create<String>(map['deploymentName'] as String),
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      properties: pulumi.Output.create<ContentSafetyEndpointDeploymentResourceProperties>(ContentSafetyEndpointDeploymentResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

