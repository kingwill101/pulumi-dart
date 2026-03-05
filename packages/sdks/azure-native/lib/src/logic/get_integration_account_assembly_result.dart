// ignore_for_file: unused_element, unnecessary_cast

import 'assembly_properties_response.dart';

/// Result data returned by getIntegrationAccountAssembly.
class GetIntegrationAccountAssemblyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id.
  final String id;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String name;
  /// The assembly properties.
  final AssemblyPropertiesResponse properties;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationAccountAssemblyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource id.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [properties] The assembly properties.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  GetIntegrationAccountAssemblyResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationAccountAssemblyResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountAssemblyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: AssemblyPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

