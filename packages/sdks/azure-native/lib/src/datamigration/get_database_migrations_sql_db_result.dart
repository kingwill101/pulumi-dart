// ignore_for_file: unused_element, unnecessary_cast

import 'database_migration_properties_sql_db_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDatabaseMigrationsSqlDb.
class GetDatabaseMigrationsSqlDbResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? id;
  final String? name;
  /// Database Migration Resource properties for SQL database.
  final DatabaseMigrationPropertiesSqlDbResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  final String? type;

  /// Creates a new [GetDatabaseMigrationsSqlDbResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Optional.
  /// [name] Optional.
  /// [properties] Database Migration Resource properties for SQL database.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Optional.
  const GetDatabaseMigrationsSqlDbResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDatabaseMigrationsSqlDbResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMigrationsSqlDbResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return DatabaseMigrationPropertiesSqlDbResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
