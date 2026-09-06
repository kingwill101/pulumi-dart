// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_project_properties_migrate_projects_controller_migrate_project_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMigrateProjectsControllerMigrateProject.
class GetMigrateProjectsControllerMigrateProjectResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// For optimistic concurrency control.
  final String? eTag;
  /// Path reference to this project /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/migrateProjects/{projectName}
  final String? id;
  /// Azure location in which project is created.
  final String? location;
  /// Name of the project.
  final String? name;
  /// Properties of a migrate project.
  final MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Type of the object = [Microsoft.Migrate/migrateProjects].
  final String? type;

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
    this.azureApiVersion,
    this.eTag,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.systemData,
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
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetMigrateProjectsControllerMigrateProjectResult.fromMap(Map<String, dynamic> map) {
    return GetMigrateProjectsControllerMigrateProjectResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
