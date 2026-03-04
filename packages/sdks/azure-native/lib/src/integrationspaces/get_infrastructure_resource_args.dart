// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_get_infrastructure_resource_args_doc}
/// Arguments for getInfrastructureResource.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_get_infrastructure_resource_args_doc}
class GetInfrastructureResourceArgs {
  /// The name of the infrastructure resource in the space.
  final pulumi.Input<String> infrastructureResourceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [GetInfrastructureResourceArgs].
  /// [infrastructureResourceName] The name of the infrastructure resource in the space.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  GetInfrastructureResourceArgs({
    required this.infrastructureResourceName,
    required this.resourceGroupName,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureResourceName': infrastructureResourceName,
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetInfrastructureResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureResourceArgs(
      infrastructureResourceName: pulumi.Input.fromValue(
        map['infrastructureResourceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      spaceName: pulumi.Input.fromValue(map['spaceName'] as String),
    );
  }
}
