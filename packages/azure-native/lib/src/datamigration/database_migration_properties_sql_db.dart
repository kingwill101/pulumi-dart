// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_information.dart';

/// Database Migration Resource properties for SQL database.
class DatabaseMigrationPropertiesSqlDb {
  /// Expected value is 'SqlDb'.
  final String kind;
  /// ID for current migration operation.
  final String? migrationOperationId;
  /// Resource Id of the Migration Service.
  final String? migrationService;
  /// Error message for migration provisioning failure, if any.
  final String? provisioningError;
  /// Resource Id of the target resource.
  final String? scope;
  /// Name of the source database.
  final String? sourceDatabaseName;
  /// Source SQL Server connection details.
  final SqlConnectionInformation? sourceSqlConnection;
  /// List of tables to copy.
  final List<String>? tableList;
  /// Database collation to be used for the target database.
  final String? targetDatabaseCollation;
  /// Target SQL DB connection details.
  final SqlConnectionInformation? targetSqlConnection;

  /// Creates a new [DatabaseMigrationPropertiesSqlDb].
  /// [kind] Expected value is 'SqlDb'.
  /// [migrationOperationId] ID for current migration operation.
  /// [migrationService] Resource Id of the Migration Service.
  /// [provisioningError] Error message for migration provisioning failure, if any.
  /// [scope] Resource Id of the target resource.
  /// [sourceDatabaseName] Name of the source database.
  /// [sourceSqlConnection] Source SQL Server connection details.
  /// [tableList] List of tables to copy.
  /// [targetDatabaseCollation] Database collation to be used for the target database.
  /// [targetSqlConnection] Target SQL DB connection details.
  DatabaseMigrationPropertiesSqlDb({
    required this.kind,
    this.migrationOperationId,
    this.migrationService,
    this.provisioningError,
    this.scope,
    this.sourceDatabaseName,
    this.sourceSqlConnection,
    this.tableList,
    this.targetDatabaseCollation,
    this.targetSqlConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'provisioningError': ?provisioningError,
      'scope': ?scope,
      'sourceDatabaseName': ?sourceDatabaseName,
      'sourceSqlConnection': ?sourceSqlConnection == null ? null : sourceSqlConnection!.toMap(),
      'tableList': ?tableList,
      'targetDatabaseCollation': ?targetDatabaseCollation,
      'targetSqlConnection': ?targetSqlConnection == null ? null : targetSqlConnection!.toMap(),
    };
  }

  factory DatabaseMigrationPropertiesSqlDb.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationPropertiesSqlDb(
      kind: map['kind'] as String,
      migrationOperationId: map['migrationOperationId'] == null ? null : map['migrationOperationId'] as String,
      migrationService: map['migrationService'] == null ? null : map['migrationService'] as String,
      provisioningError: map['provisioningError'] == null ? null : map['provisioningError'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : map['sourceDatabaseName'] as String,
      sourceSqlConnection: map['sourceSqlConnection'] == null ? null : SqlConnectionInformation.fromMap((map['sourceSqlConnection'] as Map).cast<String, dynamic>()),
      tableList: map['tableList'] == null ? null : (map['tableList'] as List).cast<String>(),
      targetDatabaseCollation: map['targetDatabaseCollation'] == null ? null : map['targetDatabaseCollation'] as String,
      targetSqlConnection: map['targetSqlConnection'] == null ? null : SqlConnectionInformation.fromMap((map['targetSqlConnection'] as Map).cast<String, dynamic>()),
    );
  }
}

