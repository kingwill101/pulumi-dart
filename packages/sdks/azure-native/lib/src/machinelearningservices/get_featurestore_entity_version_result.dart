// ignore_for_file: unused_element, unnecessary_cast

import 'featurestore_entity_version_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFeaturestoreEntityVersion.
class GetFeaturestoreEntityVersionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// [Required] Additional attributes of the entity.
  final FeaturestoreEntityVersionResponse featurestoreEntityVersionProperties;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFeaturestoreEntityVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [featurestoreEntityVersionProperties] [Required] Additional attributes of the entity.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFeaturestoreEntityVersionResult({
    required this.azureApiVersion,
    required this.featurestoreEntityVersionProperties,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'featurestoreEntityVersionProperties': featurestoreEntityVersionProperties
          .toMap(),
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFeaturestoreEntityVersionResult.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreEntityVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      featurestoreEntityVersionProperties:
          FeaturestoreEntityVersionResponse.fromMap(
            (map['featurestoreEntityVersionProperties']! as Map)
                .cast<String, dynamic>(),
          ),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
