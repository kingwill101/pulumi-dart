// ignore_for_file: unused_element, unnecessary_cast

import 'backup_configuration.dart';
import 'offline_configuration.dart';
import 'sql_connection_information.dart';

/// Database Migration Resource properties for SQL Virtual Machine.
class DatabaseMigrationPropertiesSqlVm {
  /// Backup configuration info.
  final BackupConfiguration? backupConfiguration;
  /// Expected value is 'SqlVm'.
  final String kind;
  /// ID for current migration operation.
  final String? migrationOperationId;
  /// Resource Id of the Migration Service.
  final String? migrationService;
  /// Offline configuration.
  final OfflineConfiguration? offlineConfiguration;
  /// Error message for migration provisioning failure, if any.
  final String? provisioningError;
  /// Resource Id of the target resource.
  final String? scope;
  /// Name of the source database.
  final String? sourceDatabaseName;
  /// Source SQL Server connection details.
  final SqlConnectionInformation? sourceSqlConnection;
  /// Database collation to be used for the target database.
  final String? targetDatabaseCollation;

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
  DatabaseMigrationPropertiesSqlVm({
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
      'backupConfiguration': ?backupConfiguration == null ? null : backupConfiguration!.toMap(),
      'kind': kind,
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'offlineConfiguration': ?offlineConfiguration == null ? null : offlineConfiguration!.toMap(),
      'provisioningError': ?provisioningError,
      'scope': ?scope,
      'sourceDatabaseName': ?sourceDatabaseName,
      'sourceSqlConnection': ?sourceSqlConnection == null ? null : sourceSqlConnection!.toMap(),
      'targetDatabaseCollation': ?targetDatabaseCollation,
    };
  }

  factory DatabaseMigrationPropertiesSqlVm.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationPropertiesSqlVm(
      backupConfiguration: map['backupConfiguration'] == null ? null : BackupConfiguration.fromMap((map['backupConfiguration'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      migrationOperationId: map['migrationOperationId'] == null ? null : map['migrationOperationId'] as String,
      migrationService: map['migrationService'] == null ? null : map['migrationService'] as String,
      offlineConfiguration: map['offlineConfiguration'] == null ? null : OfflineConfiguration.fromMap((map['offlineConfiguration'] as Map).cast<String, dynamic>()),
      provisioningError: map['provisioningError'] == null ? null : map['provisioningError'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : map['sourceDatabaseName'] as String,
      sourceSqlConnection: map['sourceSqlConnection'] == null ? null : SqlConnectionInformation.fromMap((map['sourceSqlConnection'] as Map).cast<String, dynamic>()),
      targetDatabaseCollation: map['targetDatabaseCollation'] == null ? null : map['targetDatabaseCollation'] as String,
    );
  }
}

