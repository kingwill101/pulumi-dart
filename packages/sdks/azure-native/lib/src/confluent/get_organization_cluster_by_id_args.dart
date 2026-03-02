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
    required this.clusterId,
    required this.environmentId,
    required this.organizationName,
    required this.resourceGroupName,
  });

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
      clusterId: (map['clusterId'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      organizationName: (map['organizationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

