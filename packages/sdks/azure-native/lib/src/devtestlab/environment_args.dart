// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_deployment_properties.dart';

/// {@template pulumi_devtestlab_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_environment_args_doc}
class EnvironmentArgs {
  /// The display name of the Azure Resource Manager template that produced the environment.
  final pulumi.Input<String?>? armTemplateDisplayName;
  /// The deployment properties of the environment.
  final pulumi.Input<EnvironmentDeploymentProperties?>? deploymentProperties;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the environment.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [EnvironmentArgs].
  /// [armTemplateDisplayName] The display name of the Azure Resource Manager template that produced the environment.
  /// [deploymentProperties] The deployment properties of the environment.
  /// [labName] The name of the lab.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [userName] The name of the user profile.
  const EnvironmentArgs({
    this.armTemplateDisplayName,
    this.deploymentProperties,
    required this.labName,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armTemplateDisplayName': ?armTemplateDisplayName,
      'deploymentProperties': ?pulumi.Input.mapOptionalInputValue<EnvironmentDeploymentProperties, Map<String, dynamic>>(deploymentProperties, (value) => value.toMap()),
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      armTemplateDisplayName: (() { final guardedValue = map['armTemplateDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentProperties: (() { final guardedValue = map['deploymentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentDeploymentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
