// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orphaned_user_info_response.dart';
import 'reportable_exception_response.dart';
import 'start_migration_scenario_server_role_result_response.dart';

class MigrateSqlServerSqlMITaskOutputMigrationLevelResponse {
  /// Selected agent jobs as a map from name to id
  final Map<String, String> agentJobs;
  /// Selected databases as a map from database name to database id
  final Map<String, String> databases;
  /// Migration end time
  final String endedOn;
  /// Migration exceptions and warnings.
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Result identifier
  final String id;
  /// Selected logins as a map from name to id
  final Map<String, String> logins;
  /// Migration progress message
  final String message;
  /// List of orphaned users.
  final List<OrphanedUserInfoResponse> orphanedUsersInfo;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final String resultType;
  /// Map of server role migration results.
  final Map<String, StartMigrationScenarioServerRoleResultResponse> serverRoleResults;
  /// Source server brand version
  final String sourceServerBrandVersion;
  /// Source server version
  final String sourceServerVersion;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;
  /// Current status of migration
  final String status;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Target server version
  final String targetServerVersion;

  /// Creates a new [MigrateSqlServerSqlMITaskOutputMigrationLevelResponse].
  /// [agentJobs] Selected agent jobs as a map from name to id
  /// [databases] Selected databases as a map from database name to database id
  /// [endedOn] Migration end time
  /// [exceptionsAndWarnings] Migration exceptions and warnings.
  /// [id] Result identifier
  /// [logins] Selected logins as a map from name to id
  /// [message] Migration progress message
  /// [orphanedUsersInfo] List of orphaned users.
  /// [resultType] Result type
  /// [serverRoleResults] Map of server role migration results.
  /// [sourceServerBrandVersion] Source server brand version
  /// [sourceServerVersion] Source server version
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  /// [status] Current status of migration
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Target server version
  MigrateSqlServerSqlMITaskOutputMigrationLevelResponse({
    required this.agentJobs,
    required this.databases,
    required this.endedOn,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.logins,
    required this.message,
    required this.orphanedUsersInfo,
    required this.resultType,
    required this.serverRoleResults,
    required this.sourceServerBrandVersion,
    required this.sourceServerVersion,
    required this.startedOn,
    required this.state,
    required this.status,
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentJobs': agentJobs,
      'databases': databases,
      'endedOn': endedOn,
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'id': id,
      'logins': logins,
      'message': message,
      'orphanedUsersInfo': pulumi.Input.encodeList<OrphanedUserInfoResponse, Map<String, dynamic>>(orphanedUsersInfo, (value) => value.toMap()),
      'resultType': resultType,
      'serverRoleResults': pulumi.Input.encodeMapValues<StartMigrationScenarioServerRoleResultResponse, Map<String, dynamic>>(serverRoleResults, (value) => value.toMap()),
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerVersion': sourceServerVersion,
      'startedOn': startedOn,
      'state': state,
      'status': status,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputMigrationLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskOutputMigrationLevelResponse(
      agentJobs: (map['agentJobs'] as Map).cast<String, String>(),
      databases: (map['databases'] as Map).cast<String, String>(),
      endedOn: map['endedOn'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      logins: (map['logins'] as Map).cast<String, String>(),
      message: map['message'] as String,
      orphanedUsersInfo: pulumi.Input.decodeList<OrphanedUserInfoResponse>(map['orphanedUsersInfo'], (value) => OrphanedUserInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      resultType: map['resultType'] as String,
      serverRoleResults: pulumi.Input.decodeMapValues<StartMigrationScenarioServerRoleResultResponse>(map['serverRoleResults'], (value) => StartMigrationScenarioServerRoleResultResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceServerBrandVersion: map['sourceServerBrandVersion'] as String,
      sourceServerVersion: map['sourceServerVersion'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
    );
  }
}

