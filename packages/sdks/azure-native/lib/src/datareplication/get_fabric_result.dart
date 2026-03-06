// ignore_for_file: unused_element, unnecessary_cast

import 'fabric_model_properties_response.dart';
import 'fabric_model_response_system_data.dart';

/// Result data returned by getFabric.
class GetFabricResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String id;
  /// Gets or sets the location of the fabric.
  final String location;
  /// Gets or sets the name of the resource.
  final String name;
  /// Fabric model properties.
  final FabricModelPropertiesResponse properties;
  final FabricModelResponseSystemData systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String type;

  /// Creates a new [GetFabricResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [location] Gets or sets the location of the fabric.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Fabric model properties.
  /// [systemData] Required.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  const GetFabricResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFabricResult.fromMap(Map<String, dynamic> map) {
    return GetFabricResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: FabricModelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: FabricModelResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

