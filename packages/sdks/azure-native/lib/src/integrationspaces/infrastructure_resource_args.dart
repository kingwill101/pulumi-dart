// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_infrastructure_resource_args_doc}
/// The set of arguments for InfrastructureResource.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_infrastructure_resource_args_doc}
class InfrastructureResourceArgs {
  /// The name of the infrastructure resource in the space.
  final pulumi.Input<String>? infrastructureResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The id of the infrastructure resource.
  final pulumi.Input<String> resourceId;
  /// The type of the infrastructure resource.
  final pulumi.Input<String> resourceType;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [InfrastructureResourceArgs].
  /// [infrastructureResourceName] The name of the infrastructure resource in the space.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] The id of the infrastructure resource.
  /// [resourceType] The type of the infrastructure resource.
  /// [spaceName] The name of the space
  InfrastructureResourceArgs({
    this.infrastructureResourceName,
    required this.resourceGroupName,
    required this.resourceId,
    required this.resourceType,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureResourceName': ?infrastructureResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'spaceName': spaceName,
    };
  }

  factory InfrastructureResourceArgs.fromMap(Map<String, dynamic> map) {
    return InfrastructureResourceArgs(
      infrastructureResourceName: map['infrastructureResourceName'] == null ? null : (map['infrastructureResourceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      spaceName: (map['spaceName'] as String).input(),
    );
  }
}

