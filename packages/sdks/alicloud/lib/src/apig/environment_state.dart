// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// Description
  final pulumi.Input<String>? description;
  /// The name of the resource
  final pulumi.Input<String>? environmentName;
  /// Gateway id
  final pulumi.Input<String>? gatewayId;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [EnvironmentState].
  /// [description] Description
  /// [environmentName] The name of the resource
  /// [gatewayId] Gateway id
  /// [resourceGroupId] The ID of the resource group
  EnvironmentState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentName,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? resourceGroupId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentName = pulumi.Input.asOptionalInput<String>(environmentName),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentName': ?environmentName,
      'gatewayId': ?gatewayId,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentName: map['environmentName'] == null ? null : pulumi.Output.create<String>(map['environmentName'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

