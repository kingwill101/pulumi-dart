// ignore_for_file: unused_element, unnecessary_cast

import 'collector_agent_properties_base_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServerCollectorsOperation.
class GetServerCollectorsOperationResult {
  /// Gets or sets the collector agent properties.
  final CollectorAgentPropertiesBaseResponse? agentProperties;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the Timestamp when collector was created.
  final String createdTimestamp;
  /// Gets the discovery site id.
  final String? discoverySiteId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Timestamp when collector was last updated.
  final String updatedTimestamp;

  /// Creates a new [GetServerCollectorsOperationResult].
  /// [agentProperties] Gets or sets the collector agent properties.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimestamp] Gets the Timestamp when collector was created.
  /// [discoverySiteId] Gets the discovery site id.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Timestamp when collector was last updated.
  GetServerCollectorsOperationResult({
    this.agentProperties,
    required this.azureApiVersion,
    required this.createdTimestamp,
    this.discoverySiteId,
    required this.id,
    required this.name,
    this.provisioningState,
    required this.systemData,
    required this.type,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?agentProperties?.toMap(),
      'azureApiVersion': azureApiVersion,
      'createdTimestamp': createdTimestamp,
      'discoverySiteId': ?discoverySiteId,
      'id': id,
      'name': name,
      'provisioningState': ?provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory GetServerCollectorsOperationResult.fromMap(Map<String, dynamic> map) {
    return GetServerCollectorsOperationResult(
      agentProperties: (() { final guardedValue = map['agentProperties']; if (guardedValue == null) return null; return CollectorAgentPropertiesBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdTimestamp: map['createdTimestamp'] as String,
      discoverySiteId: (() { final guardedValue = map['discoverySiteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

