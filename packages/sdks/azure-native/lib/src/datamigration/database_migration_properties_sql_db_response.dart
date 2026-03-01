// ignore_for_file: unused_element, unnecessary_cast

import 'error_info_response.dart';
import 'sql_connection_information_response.dart';
import 'sql_db_migration_status_details_response.dart';
import 'sql_db_offline_configuration_response.dart';

/// Database Migration Resource properties for SQL database.
class DatabaseMigrationPropertiesSqlDbResponse {
  /// Database migration end time.
  final String endedOn;
  /// Expected value is 'SqlDb'.
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
  final SqlDbMigrationStatusDetailsResponse migrationStatusDetails;
  /// Offline configuration.
  final SqlDbOfflineConfigurationResponse offlineConfiguration;
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
  /// List of tables to copy.
  final List<String>? tableList;
  /// Database collation to be used for the target database.
  final String? targetDatabaseCollation;
  /// Target SQL DB connection details.
  final SqlConnectionInformationResponse? targetSqlConnection;

  /// Creates a new [DatabaseMigrationPropertiesSqlDbResponse].
  /// [endedOn] Database migration end time.
  /// [kind] Expected value is 'SqlDb'.
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
  /// [tableList] List of tables to copy.
  /// [targetDatabaseCollation] Database collation to be used for the target database.
  /// [targetSqlConnection] Target SQL DB connection details.
  DatabaseMigrationPropertiesSqlDbResponse({
    required this.endedOn,
    required this.kind,
    required this.migrationFailureError,
    this.migrationOperationId,
    this.migrationService,
    required this.migrationStatus,
    required this.migrationStatusDetails,
    required this.offlineConfiguration,
    this.provisioningError,
    required this.provisioningState,
    this.scope,
    this.sourceDatabaseName,
    required this.sourceServerName,
    this.sourceSqlConnection,
    required this.startedOn,
    this.tableList,
    this.targetDatabaseCollation,
    this.targetSqlConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'kind': kind,
      'migrationFailureError': migrationFailureError.toMap(),
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'migrationStatus': migrationStatus,
      'migrationStatusDetails': migrationStatusDetails.toMap(),
      'offlineConfiguration': offlineConfiguration.toMap(),
      'provisioningError': ?provisioningError,
      'provisioningState': provisioningState,
      'scope': ?scope,
      'sourceDatabaseName': ?sourceDatabaseName,
      'sourceServerName': sourceServerName,
      'sourceSqlConnection': ?sourceSqlConnection == null ? null : sourceSqlConnection!.toMap(),
      'startedOn': startedOn,
      'tableList': ?tableList,
      'targetDatabaseCollation': ?targetDatabaseCollation,
      'targetSqlConnection': ?targetSqlConnection == null ? null : targetSqlConnection!.toMap(),
    };
  }

  factory DatabaseMigrationPropertiesSqlDbResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationPropertiesSqlDbResponse(
      endedOn: map['endedOn'] as String,
      kind: map['kind'] as String,
      migrationFailureError: ErrorInfoResponse.fromMap((map['migrationFailureError'] as Map).cast<String, dynamic>()),
      migrationOperationId: map['migrationOperationId'] == null ? null : map['migrationOperationId'] as String,
      migrationService: map['migrationService'] == null ? null : map['migrationService'] as String,
      migrationStatus: map['migrationStatus'] as String,
      migrationStatusDetails: SqlDbMigrationStatusDetailsResponse.fromMap((map['migrationStatusDetails'] as Map).cast<String, dynamic>()),
      offlineConfiguration: SqlDbOfflineConfigurationResponse.fromMap((map['offlineConfiguration'] as Map).cast<String, dynamic>()),
      provisioningError: map['provisioningError'] == null ? null : map['provisioningError'] as String,
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : map['sourceDatabaseName'] as String,
      sourceServerName: map['sourceServerName'] as String,
      sourceSqlConnection: map['sourceSqlConnection'] == null ? null : SqlConnectionInformationResponse.fromMap((map['sourceSqlConnection'] as Map).cast<String, dynamic>()),
      startedOn: map['startedOn'] as String,
      tableList: map['tableList'] == null ? null : (map['tableList'] as List).cast<String>(),
      targetDatabaseCollation: map['targetDatabaseCollation'] == null ? null : map['targetDatabaseCollation'] as String,
      targetSqlConnection: map['targetSqlConnection'] == null ? null : SqlConnectionInformationResponse.fromMap((map['targetSqlConnection'] as Map).cast<String, dynamic>()),
    );
  }
}

