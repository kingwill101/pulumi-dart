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
    String? infrastructureResourceName,
    required String resourceGroupName,
    required String resourceId,
    required String resourceType,
    required String spaceName,
  }) :
      infrastructureResourceName = pulumi.Input.asOptionalInput<String>(infrastructureResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      spaceName = pulumi.Input.asInput<String>(spaceName);

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
      infrastructureResourceName: map['infrastructureResourceName'] == null ? null : map['infrastructureResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      spaceName: map['spaceName'] as String,
    );
  }
}

