// ignore_for_file: unused_element, unnecessary_cast

import 'batch_configuration_properties_response.dart';

/// Result data returned by getIntegrationAccountBatchConfiguration.
class GetIntegrationAccountBatchConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id.
  final String id;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String name;
  /// The batch configuration properties.
  final BatchConfigurationPropertiesResponse properties;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationAccountBatchConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource id.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [properties] The batch configuration properties.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  GetIntegrationAccountBatchConfigurationResult({
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

  factory GetIntegrationAccountBatchConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountBatchConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: BatchConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

