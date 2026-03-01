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
    required String infrastructureResourceName,
    required String resourceGroupName,
    required String spaceName,
  }) :
      infrastructureResourceName = pulumi.Input.asInput<String>(infrastructureResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureResourceName': infrastructureResourceName,
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetInfrastructureResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureResourceArgs(
      infrastructureResourceName: map['infrastructureResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      spaceName: map['spaceName'] as String,
    );
  }
}

