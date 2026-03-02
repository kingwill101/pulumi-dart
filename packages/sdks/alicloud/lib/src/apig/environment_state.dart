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
    this.description,
    this.environmentName,
    this.gatewayId,
    this.resourceGroupId,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentName: map['environmentName'] == null ? null : (map['environmentName']! as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
    );
  }
}

