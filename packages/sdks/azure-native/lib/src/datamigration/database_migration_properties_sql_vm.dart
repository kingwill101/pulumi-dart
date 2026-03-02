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
      backupConfiguration: map['backupConfiguration'] == null ? null : (BackupConfiguration.fromMap((map['backupConfiguration'] as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      migrationOperationId: map['migrationOperationId'] == null ? null : (map['migrationOperationId'] as String).input(),
      migrationService: map['migrationService'] == null ? null : (map['migrationService'] as String).input(),
      offlineConfiguration: map['offlineConfiguration'] == null ? null : (OfflineConfiguration.fromMap((map['offlineConfiguration'] as Map).cast<String, dynamic>())).input(),
      provisioningError: map['provisioningError'] == null ? null : (map['provisioningError'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : (map['sourceDatabaseName'] as String).input(),
      sourceSqlConnection: map['sourceSqlConnection'] == null ? null : (SqlConnectionInformation.fromMap((map['sourceSqlConnection'] as Map).cast<String, dynamic>())).input(),
      targetDatabaseCollation: map['targetDatabaseCollation'] == null ? null : (map['targetDatabaseCollation'] as String).input(),
    );
  }
}

