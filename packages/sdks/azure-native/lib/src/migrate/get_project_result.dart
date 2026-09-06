// ignore_for_file: unused_element, unnecessary_cast

import 'project_properties_response.dart';

/// Result data returned by getProject.
class GetProjectResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// For optimistic concurrency control.
  final String? eTag;
  /// Path reference to this project /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}
  final String? id;
  /// Azure location in which project is created.
  final String? location;
  /// Name of the project.
  final String? name;
  /// Properties of the project.
  final ProjectPropertiesResponse? properties;
  /// Tags provided by Azure Tagging service.
  final dynamic tags;
  /// Type of the object = [Microsoft.Migrate/assessmentProjects].
  final String? type;

  /// Creates a new [GetProjectResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] For optimistic concurrency control.
  /// [id] Path reference to this project /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}
  /// [location] Azure location in which project is created.
  /// [name] Name of the project.
  /// [properties] Properties of the project.
  /// [tags] Tags provided by Azure Tagging service.
  /// [type] Type of the object = [Microsoft.Migrate/assessmentProjects].
  const GetProjectResult({
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
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ProjectPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return guardedValue; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
