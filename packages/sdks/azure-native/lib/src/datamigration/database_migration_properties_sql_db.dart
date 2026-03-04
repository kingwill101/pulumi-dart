// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_information.dart';

/// Database Migration Resource properties for SQL database.
class DatabaseMigrationPropertiesSqlDb {
  /// Expected value is 'SqlDb'.
  final pulumi.Input<String> kind;

  /// ID for current migration operation.
  final pulumi.Input<String>? migrationOperationId;

  /// Resource Id of the Migration Service.
  final pulumi.Input<String>? migrationService;

  /// Error message for migration provisioning failure, if any.
  final pulumi.Input<String>? provisioningError;

  /// Resource Id of the target resource.
  final pulumi.Input<String>? scope;

  /// Name of the source database.
  final pulumi.Input<String>? sourceDatabaseName;

  /// Source SQL Server connection details.
  final pulumi.Input<SqlConnectionInformation>? sourceSqlConnection;

  /// List of tables to copy.
  final pulumi.Input<List<String>>? tableList;

  /// Database collation to be used for the target database.
  final pulumi.Input<String>? targetDatabaseCollation;

  /// Target SQL DB connection details.
  final pulumi.Input<SqlConnectionInformation>? targetSqlConnection;

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
      'sourceSqlConnection':
          ?pulumi.Input.mapOptionalInputValue<
            SqlConnectionInformation,
            Map<String, dynamic>
          >(sourceSqlConnection, (value) => value.toMap()),
      'tableList': ?tableList,
      'targetDatabaseCollation': ?targetDatabaseCollation,
      'targetSqlConnection':
          ?pulumi.Input.mapOptionalInputValue<
            SqlConnectionInformation,
            Map<String, dynamic>
          >(targetSqlConnection, (value) => value.toMap()),
    };
  }

  factory DatabaseMigrationPropertiesSqlDb.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationPropertiesSqlDb(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      migrationOperationId: (() {
        final guardedValue = map['migrationOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      migrationService: (() {
        final guardedValue = map['migrationService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningError: (() {
        final guardedValue = map['provisioningError'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceDatabaseName: (() {
        final guardedValue = map['sourceDatabaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceSqlConnection: (() {
        final guardedValue = map['sourceSqlConnection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SqlConnectionInformation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tableList: (() {
        final guardedValue = map['tableList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      targetDatabaseCollation: (() {
        final guardedValue = map['targetDatabaseCollation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetSqlConnection: (() {
        final guardedValue = map['targetSqlConnection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SqlConnectionInformation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
