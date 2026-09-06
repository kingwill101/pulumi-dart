// ignore_for_file: unused_element, unnecessary_cast

import 'scmetadata_entity_response.dart';
import 'stream_governance_config_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOrganizationEnvironmentById.
class GetOrganizationEnvironmentByIdResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Type of environment
  final String? kind;
  /// Metadata of the record
  final SCMetadataEntityResponse? metadata;
  /// The name of the resource
  final String? name;
  /// Stream governance configuration
  final StreamGovernanceConfigResponse? streamGovernanceConfig;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetOrganizationEnvironmentByIdResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Type of environment
  /// [metadata] Metadata of the record
  /// [name] The name of the resource
  /// [streamGovernanceConfig] Stream governance configuration
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetOrganizationEnvironmentByIdResult({
    this.azureApiVersion,
    this.id,
    this.kind,
    this.metadata,
    this.name,
    this.streamGovernanceConfig,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
      'name': ?name,
      'streamGovernanceConfig': ?streamGovernanceConfig?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetOrganizationEnvironmentByIdResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationEnvironmentByIdResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return SCMetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      streamGovernanceConfig: (() { final guardedValue = map['streamGovernanceConfig']; if (guardedValue == null) return null; return StreamGovernanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
