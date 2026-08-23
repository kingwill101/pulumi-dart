// ignore_for_file: unused_element, unnecessary_cast

import 'featureset_container_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFeaturesetContainerEntity.
class GetFeaturesetContainerEntityResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// [Required] Additional attributes of the entity.
  final FeaturesetContainerPropertiesResponse properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFeaturesetContainerEntityResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [properties] [Required] Additional attributes of the entity.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFeaturesetContainerEntityResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFeaturesetContainerEntityResult.fromMap(Map<String, dynamic> map) {
    return GetFeaturesetContainerEntityResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: FeaturesetContainerPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
