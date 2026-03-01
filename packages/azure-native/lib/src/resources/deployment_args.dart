// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_properties.dart';

/// {@template pulumi_resources_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_args_doc}
class DeploymentArgs {
  /// The name of the deployment.
  final pulumi.Input<String>? deploymentName;
  /// The location to store the deployment data.
  final pulumi.Input<String>? location;
  /// The deployment properties.
  final pulumi.Input<DeploymentProperties> properties;
  /// The name of the resource group to deploy the resources to. The name is case insensitive. The resource group must already exist.
  final pulumi.Input<String> resourceGroupName;
  /// Deployment tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentArgs].
  /// [deploymentName] The name of the deployment.
  /// [location] The location to store the deployment data.
  /// [properties] The deployment properties.
  /// [resourceGroupName] The name of the resource group to deploy the resources to. The name is case insensitive. The resource group must already exist.
  /// [tags] Deployment tags
  DeploymentArgs({
    String? deploymentName,
    String? location,
    required DeploymentProperties properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<DeploymentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<DeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      deploymentName: map['deploymentName'] == null ? null : map['deploymentName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: DeploymentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

