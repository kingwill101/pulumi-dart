// ignore_for_file: unused_element, unnecessary_cast

import 'protected_item_model_properties_response.dart';
import 'protected_item_model_response_system_data.dart';

/// Result data returned by getProtectedItem.
class GetProtectedItemResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String id;
  /// Gets or sets the name of the resource.
  final String name;
  /// Protected item model properties.
  final ProtectedItemModelPropertiesResponse properties;
  final ProtectedItemModelResponseSystemData systemData;
  /// Gets or sets the type of the resource.
  final String type;

  /// Creates a new [GetProtectedItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Protected item model properties.
  /// [systemData] Required.
  /// [type] Gets or sets the type of the resource.
  GetProtectedItemResult({
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

  factory GetProtectedItemResult.fromMap(Map<String, dynamic> map) {
    return GetProtectedItemResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ProtectedItemModelPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: ProtectedItemModelResponseSystemData.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

