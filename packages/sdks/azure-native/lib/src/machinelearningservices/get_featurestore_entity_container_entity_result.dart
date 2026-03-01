// ignore_for_file: unused_element, unnecessary_cast

import 'featurestore_entity_container_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFeaturestoreEntityContainerEntity.
class GetFeaturestoreEntityContainerEntityResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// [Required] Additional attributes of the entity.
  final FeaturestoreEntityContainerResponse featurestoreEntityContainerProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFeaturestoreEntityContainerEntityResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [featurestoreEntityContainerProperties] [Required] Additional attributes of the entity.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFeaturestoreEntityContainerEntityResult({
    required this.azureApiVersion,
    required this.featurestoreEntityContainerProperties,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'featurestoreEntityContainerProperties': featurestoreEntityContainerProperties.toMap(),
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFeaturestoreEntityContainerEntityResult.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreEntityContainerEntityResult(
      azureApiVersion: map['azureApiVersion'] as String,
      featurestoreEntityContainerProperties: FeaturestoreEntityContainerResponse.fromMap((map['featurestoreEntityContainerProperties'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

