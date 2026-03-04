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
    this.description,
    required this.environmentName,
    required this.gatewayId,
    this.resourceGroupId,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
