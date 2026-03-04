// ignore_for_file: unused_element, unnecessary_cast

import 'mcc_cache_node_tls_certificate_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistory.
class GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryResult {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// Mcc cache node resource Tls certificate details.
  final MccCacheNodeTlsCertificatePropertiesResponse properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryResult].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] Mcc cache node resource Tls certificate details.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryResult({
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

  factory GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: MccCacheNodeTlsCertificatePropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
