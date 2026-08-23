// ignore_for_file: unused_element, unnecessary_cast

import 'container_registry_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getContainerRegistry.
class GetContainerRegistryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String id;
  /// The name of the resource.
  final String name;
  /// Properties of the container registry resource payload.
  final ContainerRegistryPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetContainerRegistryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [name] The name of the resource.
  /// [properties] Properties of the container registry resource payload.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetContainerRegistryResult({
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

  factory GetContainerRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ContainerRegistryPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
