// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_agent_model_properties_response.dart';
import 'migrate_agent_model_response_system_data.dart';

/// Result data returned by getMigrateAgent.
class GetMigrateAgentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String id;
  /// Gets or sets the name of the resource.
  final String name;
  /// MigrateAgent model properties.
  final MigrateAgentModelPropertiesResponse properties;
  final MigrateAgentModelResponseSystemData systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String type;

  /// Creates a new [GetMigrateAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] MigrateAgent model properties.
  /// [systemData] Required.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  GetMigrateAgentResult({
    required this.azureApiVersion,
    required this.id,
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
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMigrateAgentResult.fromMap(Map<String, dynamic> map) {
    return GetMigrateAgentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: MigrateAgentModelPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: MigrateAgentModelResponseSystemData.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

