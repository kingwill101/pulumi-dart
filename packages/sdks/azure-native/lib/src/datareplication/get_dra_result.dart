// ignore_for_file: unused_element, unnecessary_cast

import 'dra_model_properties_response.dart';
import 'dra_model_response_system_data.dart';

/// Result data returned by getDra.
class GetDraResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String id;
  /// Gets or sets the name of the resource.
  final String name;
  /// Dra model properties.
  final DraModelPropertiesResponse properties;
  final DraModelResponseSystemData systemData;
  /// Gets or sets the type of the resource.
  final String type;

  /// Creates a new [GetDraResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Dra model properties.
  /// [systemData] Required.
  /// [type] Gets or sets the type of the resource.
  const GetDraResult({
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

  factory GetDraResult.fromMap(Map<String, dynamic> map) {
    return GetDraResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: DraModelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: DraModelResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
