// ignore_for_file: unused_element, unnecessary_cast

import 'scmetadata_entity_response.dart';
import 'stream_governance_config_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOrganizationEnvironmentById.
class GetOrganizationEnvironmentByIdResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Type of environment
  final String? kind;
  /// Metadata of the record
  final SCMetadataEntityResponse? metadata;
  /// The name of the resource
  final String name;
  /// Stream governance configuration
  final StreamGovernanceConfigResponse? streamGovernanceConfig;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetOrganizationEnvironmentByIdResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Type of environment
  /// [metadata] Metadata of the record
  /// [name] The name of the resource
  /// [streamGovernanceConfig] Stream governance configuration
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetOrganizationEnvironmentByIdResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    this.metadata,
    required this.name,
    this.streamGovernanceConfig,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'name': name,
      'streamGovernanceConfig': ?streamGovernanceConfig == null ? null : streamGovernanceConfig!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetOrganizationEnvironmentByIdResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationEnvironmentByIdResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      metadata: map['metadata'] == null ? null : SCMetadataEntityResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      streamGovernanceConfig: map['streamGovernanceConfig'] == null ? null : StreamGovernanceConfigResponse.fromMap((map['streamGovernanceConfig']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

