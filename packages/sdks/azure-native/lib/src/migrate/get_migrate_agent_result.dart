// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_agent_model_properties_response.dart';
import 'migrate_agent_model_response_system_data.dart';

/// Result data returned by getMigrateAgent.
class GetMigrateAgentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String? id;
  /// Gets or sets the name of the resource.
  final String? name;
  /// MigrateAgent model properties.
  final MigrateAgentModelPropertiesResponse? properties;
  final MigrateAgentModelResponseSystemData? systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String? type;

  /// Creates a new [GetMigrateAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] MigrateAgent model properties.
  /// [systemData] Optional.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  const GetMigrateAgentResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetMigrateAgentResult.fromMap(Map<String, dynamic> map) {
    return GetMigrateAgentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return MigrateAgentModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return MigrateAgentModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
