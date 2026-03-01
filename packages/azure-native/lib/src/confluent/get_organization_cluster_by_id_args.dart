// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_get_organization_cluster_by_id_args_doc}
/// Arguments for getOrganizationClusterById.
/// {@endtemplate}
/// {@macro pulumi_confluent_get_organization_cluster_by_id_args_doc}
class GetOrganizationClusterByIdArgs {
  /// Confluent kafka or schema registry cluster id
  final pulumi.Input<String> clusterId;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrganizationClusterByIdArgs].
  /// [clusterId] Confluent kafka or schema registry cluster id
  /// [environmentId] Confluent environment id
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOrganizationClusterByIdArgs({
    required String clusterId,
    required String environmentId,
    required String organizationName,
    required String resourceGroupName,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'environmentId': environmentId,
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrganizationClusterByIdArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationClusterByIdArgs(
      clusterId: map['clusterId'] as String,
      environmentId: map['environmentId'] as String,
      organizationName: map['organizationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

