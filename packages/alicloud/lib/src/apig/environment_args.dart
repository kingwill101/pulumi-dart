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
    String? description,
    required String environmentName,
    required String gatewayId,
    String? resourceGroupId,
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
      description: map['description'] == null ? null : map['description'] as String,
      environmentName: map['environmentName'] as String,
      gatewayId: map['gatewayId'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
    );
  }
}

