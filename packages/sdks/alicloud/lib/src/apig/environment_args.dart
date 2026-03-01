// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apig_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_apig_environment_environment_args_doc}
class EnvironmentArgs {
  /// Description
  final pulumi.Input<String>? description;
  /// The name of the resource
  final pulumi.Input<String> environmentName;
  /// Gateway id
  final pulumi.Input<String> gatewayId;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [EnvironmentArgs].
  /// [description] Description
  /// [environmentName] The name of the resource
  /// [gatewayId] Gateway id
  /// [resourceGroupId] The ID of the resource group
  EnvironmentArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> gatewayId,
    pulumi.Output<String>? resourceGroupId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentName': environmentName,
      'gatewayId': gatewayId,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

