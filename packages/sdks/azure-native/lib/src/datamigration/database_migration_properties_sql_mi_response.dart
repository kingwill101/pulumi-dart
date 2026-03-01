// ignore_for_file: unused_element, unnecessary_cast

import 'backup_configuration_response.dart';
import 'error_info_response.dart';
import 'migration_status_details_response.dart';
import 'offline_configuration_response.dart';
import 'sql_connection_information_response.dart';

/// Database Migration Resource properties for SQL Managed Instance.
class DatabaseMigrationPropertiesSqlMiResponse {
  /// Backup configuration info.
  final BackupConfigurationResponse? backupConfiguration;
  /// Database migration end time.
  final String endedOn;
  /// Expected value is 'SqlMi'.
  final String kind;
  /// Error details in case of migration failure.
  final ErrorInfoResponse migrationFailureError;
  /// ID for current migration operation.
  final String? migrationOperationId;
  /// Resource Id of the Migration Service.
  final String? migrationService;
  /// Migration status.
  final String migrationStatus;
  /// Detailed migration status. Not included by default.
  final MigrationStatusDetailsResponse migrationStatusDetails;
  /// Offline configuration.
  final OfflineConfigurationResponse? offlineConfiguration;
  /// Error message for migration provisioning failure, if any.
  final String? provisioningError;
  /// Provisioning State of migration. ProvisioningState as Succeeded implies that validations have been performed and migration has started.
  final String provisioningState;
  /// Resource Id of the target resource.
  final String? scope;
  /// Name of the source database.
  final String? sourceDatabaseName;
  /// Name of the source sql server.
  final String sourceServerName;
  /// Source SQL Server connection details.
  final SqlConnectionInformationResponse? sourceSqlConnection;
  /// Database migration start time.
  final String startedOn;
  /// Database collation to be used for the target database.
  final String? targetDatabaseCollation;

  /// Creates a new [DatabaseMigrationPropertiesSqlMiResponse].
  /// [backupConfiguration] Backup configuration info.
  /// [endedOn] Database migration end time.
  /// [kind] Expected value is 'SqlMi'.
  /// [migrationFailureError] Error details in case of migration failure.
  /// [migrationOperationId] ID for current migration operation.
  /// [migrationService] Resource Id of the Migration Service.
  /// [migrationStatus] Migration status.
  /// [migrationStatusDetails] Detailed migration status. Not included by default.
  /// [offlineConfiguration] Offline configuration.
  /// [provisioningError] Error message for migration provisioning failure, if any.
  /// [provisioningState] Provisioning State of migration. ProvisioningState as Succeeded implies that validations have been performed and migration has started.
  /// [scope] Resource Id of the target resource.
  /// [sourceDatabaseName] Name of the source database.
  /// [sourceServerName] Name of the source sql server.
  /// [sourceSqlConnection] Source SQL Server connection details.
  /// [startedOn] Database migration start time.
  /// [targetDatabaseCollation] Database collation to be used for the target database.
  DatabaseMigrationPropertiesSqlMiResponse({
    this.backupConfiguration,
    required this.endedOn,
    required this.kind,
    required this.migrationFailureError,
    this.migrationOperationId,
    this.migrationService,
    required this.migrationStatus,
    required this.migrationStatusDetails,
    this.offlineConfiguration,
    this.provisioningError,
    required this.provisioningState,
    this.scope,
    this.sourceDatabaseName,
    required this.sourceServerName,
    this.sourceSqlConnection,
    required this.startedOn,
    this.targetDatabaseCollation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfiguration': ?backupConfiguration == null ? null : backupConfiguration!.toMap(),
      'endedOn': endedOn,
      'kind': kind,
      'migrationFailureError': migrationFailureError.toMap(),
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'migrationStatus': migrationStatus,
      'migrationStatusDetails': migrationStatusDetails.toMap(),
      'offlineConfiguration': ?offlineConfiguration == null ? null : offlineConfiguration!.toMap(),
      'provisioningError': ?provisioningError,
      'provisioningState': provisioningState,
      'scope': ?scope,
      'sourceDatabaseName': ?sourceDatabaseName,
      'sourceServerName': sourceServerName,
      'sourceSqlConnection': ?sourceSqlConnection == null ? null : sourceSqlConnection!.toMap(),
      'startedOn': startedOn,
      'targetDatabaseCollation': ?targetDatabaseCollation,
    };
  }

  factory DatabaseMigrationPropertiesSqlMiResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationPropertiesSqlMiResponse(
      backupConfiguration: map['backupConfiguration'] == null ? null : BackupConfigurationResponse.fromMap((map['backupConfiguration'] as Map).cast<String, dynamic>()),
      endedOn: map['endedOn'] as String,
      kind: map['kind'] as String,
      migrationFailureError: ErrorInfoResponse.fromMap((map['migrationFailureError'] as Map).cast<String, dynamic>()),
      migrationOperationId: map['migrationOperationId'] == null ? null : map['migrationOperationId'] as String,
      migrationService: map['migrationService'] == null ? null : map['migrationService'] as String,
      migrationStatus: map['migrationStatus'] as String,
      migrationStatusDetails: MigrationStatusDetailsResponse.fromMap((map['migrationStatusDetails'] as Map).cast<String, dynamic>()),
      offlineConfiguration: map['offlineConfiguration'] == null ? null : OfflineConfigurationResponse.fromMap((map['offlineConfiguration'] as Map).cast<String, dynamic>()),
      provisioningError: map['provisioningError'] == null ? null : map['provisioningError'] as String,
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : map['sourceDatabaseName'] as String,
      sourceServerName: map['sourceServerName'] as String,
      sourceSqlConnection: map['sourceSqlConnection'] == null ? null : SqlConnectionInformationResponse.fromMap((map['sourceSqlConnection'] as Map).cast<String, dynamic>()),
      startedOn: map['startedOn'] as String,
      targetDatabaseCollation: map['targetDatabaseCollation'] == null ? null : map['targetDatabaseCollation'] as String,
    );
  }
}

