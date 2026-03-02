// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_resource_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeployment.
class GetDeploymentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String id;
  /// The name of the resource.
  final String name;
  /// Properties of the Deployment resource
  final DeploymentResourcePropertiesResponse properties;
  /// Sku of the Deployment resource
  final SkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetDeploymentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [name] The name of the resource.
  /// [properties] Properties of the Deployment resource
  /// [sku] Sku of the Deployment resource
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  GetDeploymentResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    this.sku,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: DeploymentResourcePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

