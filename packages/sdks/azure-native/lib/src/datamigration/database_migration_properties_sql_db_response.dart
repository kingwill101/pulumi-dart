// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_info_response.dart';
import 'sql_connection_information_response.dart';
import 'sql_db_migration_status_details_response.dart';
import 'sql_db_offline_configuration_response.dart';

/// Database Migration Resource properties for SQL database.
class DatabaseMigrationPropertiesSqlDbResponse {
  /// Database migration end time.
  final pulumi.Input<String> endedOn;
  /// Expected value is 'SqlDb'.
  final pulumi.Input<String> kind;
  /// Error details in case of migration failure.
  final pulumi.Input<ErrorInfoResponse> migrationFailureError;
  /// ID for current migration operation.
  final pulumi.Input<String>? migrationOperationId;
  /// Resource Id of the Migration Service.
  final pulumi.Input<String>? migrationService;
  /// Migration status.
  final pulumi.Input<String> migrationStatus;
  /// Detailed migration status. Not included by default.
  final pulumi.Input<SqlDbMigrationStatusDetailsResponse> migrationStatusDetails;
  /// Offline configuration.
  final pulumi.Input<SqlDbOfflineConfigurationResponse> offlineConfiguration;
  /// Error message for migration provisioning failure, if any.
  final pulumi.Input<String>? provisioningError;
  /// Provisioning State of migration. ProvisioningState as Succeeded implies that validations have been performed and migration has started.
  final pulumi.Input<String> provisioningState;
  /// Resource Id of the target resource.
  final pulumi.Input<String>? scope;
  /// Name of the source database.
  final pulumi.Input<String>? sourceDatabaseName;
  /// Name of the source sql server.
  final pulumi.Input<String> sourceServerName;
  /// Source SQL Server connection details.
  final pulumi.Input<SqlConnectionInformationResponse>? sourceSqlConnection;
  /// Database migration start time.
  final pulumi.Input<String> startedOn;
  /// List of tables to copy.
  final pulumi.Input<List<String>>? tableList;
  /// Database collation to be used for the target database.
  final pulumi.Input<String>? targetDatabaseCollation;
  /// Target SQL DB connection details.
  final pulumi.Input<SqlConnectionInformationResponse>? targetSqlConnection;

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
      'migrationFailureError': pulumi.Input.mapInputValue<ErrorInfoResponse, Map<String, dynamic>>(migrationFailureError, (value) => value.toMap()),
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'migrationStatus': migrationStatus,
      'migrationStatusDetails': pulumi.Input.mapInputValue<SqlDbMigrationStatusDetailsResponse, Map<String, dynamic>>(migrationStatusDetails, (value) => value.toMap()),
      'offlineConfiguration': pulumi.Input.mapInputValue<SqlDbOfflineConfigurationResponse, Map<String, dynamic>>(offlineConfiguration, (value) => value.toMap()),
      'provisioningError': ?provisioningError,
      'provisioningState': provisioningState,
      'scope': ?scope,
      'sourceDatabaseName': ?sourceDatabaseName,
      'sourceServerName': sourceServerName,
      'sourceSqlConnection': ?pulumi.Input.mapOptionalInputValue<SqlConnectionInformationResponse, Map<String, dynamic>>(sourceSqlConnection, (value) => value.toMap()),
      'startedOn': startedOn,
      'tableList': ?tableList,
      'targetDatabaseCollation': ?targetDatabaseCollation,
      'targetSqlConnection': ?pulumi.Input.mapOptionalInputValue<SqlConnectionInformationResponse, Map<String, dynamic>>(targetSqlConnection, (value) => value.toMap()),
    };
  }

  factory DatabaseMigrationPropertiesSqlDbResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationPropertiesSqlDbResponse(
      endedOn: (map['endedOn'] as String).input(),
      kind: (map['kind'] as String).input(),
      migrationFailureError: (ErrorInfoResponse.fromMap((map['migrationFailureError'] as Map).cast<String, dynamic>())).input(),
      migrationOperationId: map['migrationOperationId'] == null ? null : (map['migrationOperationId'] as String).input(),
      migrationService: map['migrationService'] == null ? null : (map['migrationService'] as String).input(),
      migrationStatus: (map['migrationStatus'] as String).input(),
      migrationStatusDetails: (SqlDbMigrationStatusDetailsResponse.fromMap((map['migrationStatusDetails'] as Map).cast<String, dynamic>())).input(),
      offlineConfiguration: (SqlDbOfflineConfigurationResponse.fromMap((map['offlineConfiguration'] as Map).cast<String, dynamic>())).input(),
      provisioningError: map['provisioningError'] == null ? null : (map['provisioningError'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : (map['sourceDatabaseName'] as String).input(),
      sourceServerName: (map['sourceServerName'] as String).input(),
      sourceSqlConnection: map['sourceSqlConnection'] == null ? null : (SqlConnectionInformationResponse.fromMap((map['sourceSqlConnection'] as Map).cast<String, dynamic>())).input(),
      startedOn: (map['startedOn'] as String).input(),
      tableList: map['tableList'] == null ? null : ((map['tableList'] as List).cast<String>()).input(),
      targetDatabaseCollation: map['targetDatabaseCollation'] == null ? null : (map['targetDatabaseCollation'] as String).input(),
      targetSqlConnection: map['targetSqlConnection'] == null ? null : (SqlConnectionInformationResponse.fromMap((map['targetSqlConnection'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

