// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_configuration.dart';
import 'offline_configuration.dart';
import 'sql_connection_information.dart';

/// Database Migration Resource properties for SQL Virtual Machine.
class DatabaseMigrationPropertiesSqlVm {
  /// Backup configuration info.
  final pulumi.Input<BackupConfiguration>? backupConfiguration;
  /// Expected value is 'SqlVm'.
  final pulumi.Input<String> kind;
  /// ID for current migration operation.
  final pulumi.Input<String>? migrationOperationId;
  /// Resource Id of the Migration Service.
  final pulumi.Input<String>? migrationService;
  /// Offline configuration.
  final pulumi.Input<OfflineConfiguration>? offlineConfiguration;
  /// Error message for migration provisioning failure, if any.
  final pulumi.Input<String>? provisioningError;
  /// Resource Id of the target resource.
  final pulumi.Input<String>? scope;
  /// Name of the source database.
  final pulumi.Input<String>? sourceDatabaseName;
  /// Source SQL Server connection details.
  final pulumi.Input<SqlConnectionInformation>? sourceSqlConnection;
  /// Database collation to be used for the target database.
  final pulumi.Input<String>? targetDatabaseCollation;

  /// Creates a new [DatabaseMigrationPropertiesSqlVm].
  /// [backupConfiguration] Backup configuration info.
  /// [kind] Expected value is 'SqlVm'.
  /// [migrationOperationId] ID for current migration operation.
  /// [migrationService] Resource Id of the Migration Service.
  /// [offlineConfiguration] Offline configuration.
  /// [provisioningError] Error message for migration provisioning failure, if any.
  /// [scope] Resource Id of the target resource.
  /// [sourceDatabaseName] Name of the source database.
  /// [sourceSqlConnection] Source SQL Server connection details.
  /// [targetDatabaseCollation] Database collation to be used for the target database.
  const DatabaseMigrationPropertiesSqlVm({
    this.backupConfiguration,
    required this.kind,
    this.migrationOperationId,
    this.migrationService,
    this.offlineConfiguration,
    this.provisioningError,
    this.scope,
    this.sourceDatabaseName,
    this.sourceSqlConnection,
    this.targetDatabaseCollation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfiguration': ?pulumi.Input.mapOptionalInputValue<BackupConfiguration, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'kind': kind,
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'offlineConfiguration': ?pulumi.Input.mapOptionalInputValue<OfflineConfiguration, Map<String, dynamic>>(offlineConfiguration, (value) => value.toMap()),
      'provisioningError': ?provisioningError,
      'scope': ?scope,
      'sourceDatabaseName': ?sourceDatabaseName,
      'sourceSqlConnection': ?pulumi.Input.mapOptionalInputValue<SqlConnectionInformation, Map<String, dynamic>>(sourceSqlConnection, (value) => value.toMap()),
      'targetDatabaseCollation': ?targetDatabaseCollation,
    };
  }

  factory DatabaseMigrationPropertiesSqlVm.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationPropertiesSqlVm(
      backupConfiguration: (() { final guardedValue = map['backupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      migrationOperationId: (() { final guardedValue = map['migrationOperationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationService: (() { final guardedValue = map['migrationService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offlineConfiguration: (() { final guardedValue = map['offlineConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OfflineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningError: (() { final guardedValue = map['provisioningError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDatabaseName: (() { final guardedValue = map['sourceDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSqlConnection: (() { final guardedValue = map['sourceSqlConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlConnectionInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetDatabaseCollation: (() { final guardedValue = map['targetDatabaseCollation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

