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
    pulumi.Output<String>? armTemplateDisplayName,
    pulumi.Output<EnvironmentDeploymentProperties>? deploymentProperties,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userName,
  }) :
      armTemplateDisplayName = pulumi.Input.asOptionalInput<String>(armTemplateDisplayName),
      deploymentProperties = pulumi.Input.asOptionalInput<EnvironmentDeploymentProperties>(deploymentProperties),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asInput<String>(userName);

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
      armTemplateDisplayName: map['armTemplateDisplayName'] == null ? null : pulumi.Output.create<String>(map['armTemplateDisplayName'] as String),
      deploymentProperties: map['deploymentProperties'] == null ? null : pulumi.Output.create<EnvironmentDeploymentProperties>(EnvironmentDeploymentProperties.fromMap((map['deploymentProperties'] as Map).cast<String, dynamic>())),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

