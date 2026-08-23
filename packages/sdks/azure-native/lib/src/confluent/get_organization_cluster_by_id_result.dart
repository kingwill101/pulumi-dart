// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_status_entity_response.dart';
import 'sccluster_spec_entity_response.dart';
import 'scmetadata_entity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOrganizationClusterById.
class GetOrganizationClusterByIdResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Type of cluster
  final String? kind;
  /// Metadata of the record
  final SCMetadataEntityResponse? metadata;
  /// The name of the resource
  final String name;
  /// Specification of the cluster
  final SCClusterSpecEntityResponse? spec;
  /// Specification of the cluster status
  final ClusterStatusEntityResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetOrganizationClusterByIdResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Type of cluster
  /// [metadata] Metadata of the record
  /// [name] The name of the resource
  /// [spec] Specification of the cluster
  /// [status] Specification of the cluster status
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetOrganizationClusterByIdResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    this.metadata,
    required this.name,
    this.spec,
    this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
      'name': name,
      'spec': ?spec?.toMap(),
      'status': ?status?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetOrganizationClusterByIdResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationClusterByIdResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return SCMetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return SCClusterSpecEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ClusterStatusEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
