// ignore_for_file: unused_element, unnecessary_cast

import 'mcc_cache_node_auto_update_history_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistory.
class GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryResult {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Mcc cache node resource auto update history properties.
  final MccCacheNodeAutoUpdateHistoryPropertiesResponse properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryResult].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] Mcc cache node resource auto update history properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryResult({
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: MccCacheNodeAutoUpdateHistoryPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

