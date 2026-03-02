// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_status_entity.dart';
import 'sccluster_spec_entity.dart';
import 'scmetadata_entity.dart';

/// {@template pulumi_confluent_organization_cluster_by_id_args_doc}
/// The set of arguments for OrganizationClusterById.
/// {@endtemplate}
/// {@macro pulumi_confluent_organization_cluster_by_id_args_doc}
class OrganizationClusterByIdArgs {
  /// Confluent kafka or schema registry cluster id
  final pulumi.Input<String>? clusterId;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Type of cluster
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<SCMetadataEntity>? metadata;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specification of the cluster
  final pulumi.Input<SCClusterSpecEntity>? spec;
  /// Specification of the cluster status
  final pulumi.Input<ClusterStatusEntity>? status;

  /// Creates a new [OrganizationClusterByIdArgs].
  /// [clusterId] Confluent kafka or schema registry cluster id
  /// [environmentId] Confluent environment id
  /// [kind] Type of cluster
  /// [metadata] Metadata of the record
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spec] Specification of the cluster
  /// [status] Specification of the cluster status
  OrganizationClusterByIdArgs({
    this.clusterId,
    required this.environmentId,
    this.kind,
    this.metadata,
    required this.organizationName,
    required this.resourceGroupName,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'environmentId': environmentId,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<SCMetadataEntity, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
      'spec': ?pulumi.Input.mapOptionalInputValue<SCClusterSpecEntity, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ClusterStatusEntity, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory OrganizationClusterByIdArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationClusterByIdArgs(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (SCMetadataEntity.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      organizationName: (map['organizationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      spec: map['spec'] == null ? null : (SCClusterSpecEntity.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (ClusterStatusEntity.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

