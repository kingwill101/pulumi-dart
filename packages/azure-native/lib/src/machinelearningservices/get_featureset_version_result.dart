// ignore_for_file: unused_element, unnecessary_cast

import 'featureset_version_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFeaturesetVersion.
class GetFeaturesetVersionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// [Required] Additional attributes of the entity.
  final FeaturesetVersionResponse featuresetVersionProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFeaturesetVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [featuresetVersionProperties] [Required] Additional attributes of the entity.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFeaturesetVersionResult({
    required this.azureApiVersion,
    required this.featuresetVersionProperties,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'featuresetVersionProperties': featuresetVersionProperties.toMap(),
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFeaturesetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetFeaturesetVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      featuresetVersionProperties: FeaturesetVersionResponse.fromMap((map['featuresetVersionProperties'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

