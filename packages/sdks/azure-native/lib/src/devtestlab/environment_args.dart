// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_deployment_properties.dart';

/// {@template pulumi_devtestlab_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_environment_args_doc}
class EnvironmentArgs {
  /// The display name of the Azure Resource Manager template that produced the environment.
  final pulumi.Input<String>? armTemplateDisplayName;
  /// The deployment properties of the environment.
  final pulumi.Input<EnvironmentDeploymentProperties>? deploymentProperties;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the DtlEnvironment
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [EnvironmentArgs].
  /// [armTemplateDisplayName] The display name of the Azure Resource Manager template that produced the environment.
  /// [deploymentProperties] The deployment properties of the environment.
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the DtlEnvironment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [userName] The name of the user profile.
  EnvironmentArgs({
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
      armTemplateDisplayName: map['armTemplateDisplayName'] == null ? null : (map['armTemplateDisplayName']! as String).input(),
      deploymentProperties: map['deploymentProperties'] == null ? null : (EnvironmentDeploymentProperties.fromMap((map['deploymentProperties']! as Map).cast<String, dynamic>())).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

