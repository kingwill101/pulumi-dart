// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_project_properties_response.dart';
import 'migrate_project_response_tags.dart';

/// Result data returned by getMigrateProject.
class GetMigrateProjectResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the eTag for concurrency control.
  final String? eTag;
  /// Gets the relative URL to get this migrate project.
  final String? id;
  /// Gets or sets the Azure location in which migrate project is created.
  final String? location;
  /// Gets the name of the migrate project.
  final String? name;
  /// Gets or sets the nested properties.
  final MigrateProjectPropertiesResponse? properties;
  /// Gets or sets the tags.
  final MigrateProjectResponseTags? tags;
  /// Handled by resource provider. Type = Microsoft.Migrate/MigrateProject.
  final String? type;

  /// Creates a new [GetMigrateProjectResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Gets or sets the eTag for concurrency control.
  /// [id] Gets the relative URL to get this migrate project.
  /// [location] Gets or sets the Azure location in which migrate project is created.
  /// [name] Gets the name of the migrate project.
  /// [properties] Gets or sets the nested properties.
  /// [tags] Gets or sets the tags.
  /// [type] Handled by resource provider. Type = Microsoft.Migrate/MigrateProject.
  const GetMigrateProjectResult({
    this.azureApiVersion,
    this.eTag,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'eTag': ?eTag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'tags': ?tags?.toMap(),
      'type': ?type,
    };
  }

  factory GetMigrateProjectResult.fromMap(Map<String, dynamic> map) {
    return GetMigrateProjectResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return MigrateProjectPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return MigrateProjectResponseTags.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
