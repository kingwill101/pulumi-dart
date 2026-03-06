// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_project_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMigrateProjectsControllerMigrateProject.
class GetMigrateProjectsControllerMigrateProjectResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// For optimistic concurrency control.
  final String? eTag;
  /// Path reference to this project /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/migrateProjects/{projectName}
  final String id;
  /// Azure location in which project is created.
  final String? location;
  /// Name of the project.
  final String name;
  /// Properties of a migrate project.
  final MigrateProjectPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Type of the object = [Microsoft.Migrate/migrateProjects].
  final String type;

  /// Creates a new [GetMigrateProjectsControllerMigrateProjectResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] For optimistic concurrency control.
  /// [id] Path reference to this project /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/migrateProjects/{projectName}
  /// [location] Azure location in which project is created.
  /// [name] Name of the project.
  /// [properties] Properties of a migrate project.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Type of the object = [Microsoft.Migrate/migrateProjects].
  const GetMigrateProjectsControllerMigrateProjectResult({
    required this.azureApiVersion,
    this.eTag,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': ?eTag,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetMigrateProjectsControllerMigrateProjectResult.fromMap(Map<String, dynamic> map) {
    return GetMigrateProjectsControllerMigrateProjectResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: MigrateProjectPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

