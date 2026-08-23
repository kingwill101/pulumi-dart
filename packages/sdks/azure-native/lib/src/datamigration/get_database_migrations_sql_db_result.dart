// ignore_for_file: unused_element, unnecessary_cast

import 'database_migration_properties_sql_db_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDatabaseMigrationsSqlDb.
class GetDatabaseMigrationsSqlDbResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String id;
  final String name;
  /// Database Migration Resource properties for SQL database.
  final DatabaseMigrationPropertiesSqlDbResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  final String type;

  /// Creates a new [GetDatabaseMigrationsSqlDbResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Required.
  /// [name] Required.
  /// [properties] Database Migration Resource properties for SQL database.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Required.
  const GetDatabaseMigrationsSqlDbResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDatabaseMigrationsSqlDbResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMigrationsSqlDbResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: DatabaseMigrationPropertiesSqlDbResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
