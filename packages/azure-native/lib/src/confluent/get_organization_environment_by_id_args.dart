// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_get_organization_environment_by_id_args_doc}
/// Arguments for getOrganizationEnvironmentById.
/// {@endtemplate}
/// {@macro pulumi_confluent_get_organization_environment_by_id_args_doc}
class GetOrganizationEnvironmentByIdArgs {
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrganizationEnvironmentByIdArgs].
  /// [environmentId] Confluent environment id
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOrganizationEnvironmentByIdArgs({
    required String environmentId,
    required String organizationName,
    required String resourceGroupName,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrganizationEnvironmentByIdArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationEnvironmentByIdArgs(
      environmentId: map['environmentId'] as String,
      organizationName: map['organizationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

