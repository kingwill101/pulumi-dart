// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orphaned_user_info_response.dart';
import 'reportable_exception_response.dart';
import 'start_migration_scenario_server_role_result_response.dart';

class MigrateSqlServerSqlMITaskOutputMigrationLevelResponse {
  /// Selected agent jobs as a map from name to id
  final pulumi.Input<Map<String, String>> agentJobs;

  /// Selected databases as a map from database name to database id
  final pulumi.Input<Map<String, String>> databases;

  /// Migration end time
  final pulumi.Input<String> endedOn;

  /// Migration exceptions and warnings.
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;

  /// Result identifier
  final pulumi.Input<String> id;

  /// Selected logins as a map from name to id
  final pulumi.Input<Map<String, String>> logins;

  /// Migration progress message
  final pulumi.Input<String> message;

  /// List of orphaned users.
  final pulumi.Input<List<OrphanedUserInfoResponse>> orphanedUsersInfo;

  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final pulumi.Input<String> resultType;

  /// Map of server role migration results.
  final pulumi.Input<
    Map<String, StartMigrationScenarioServerRoleResultResponse>
  >
  serverRoleResults;

  /// Source server brand version
  final pulumi.Input<String> sourceServerBrandVersion;

  /// Source server version
  final pulumi.Input<String> sourceServerVersion;

  /// Migration start time
  final pulumi.Input<String> startedOn;

  /// Current state of migration
  final pulumi.Input<String> state;

  /// Current status of migration
  final pulumi.Input<String> status;

  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;

  /// Target server version
  final pulumi.Input<String> targetServerVersion;

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
      'exceptionsAndWarnings':
          pulumi.Input.mapInputValue<
            List<ReportableExceptionResponse>,
            List<Map<String, dynamic>>
          >(
            exceptionsAndWarnings,
            (value) =>
                pulumi.Input.encodeList<
                  ReportableExceptionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'logins': logins,
      'message': message,
      'orphanedUsersInfo':
          pulumi.Input.mapInputValue<
            List<OrphanedUserInfoResponse>,
            List<Map<String, dynamic>>
          >(
            orphanedUsersInfo,
            (value) =>
                pulumi.Input.encodeList<
                  OrphanedUserInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resultType': resultType,
      'serverRoleResults':
          pulumi.Input.mapInputValue<
            Map<String, StartMigrationScenarioServerRoleResultResponse>,
            Map<String, Map<String, dynamic>>
          >(
            serverRoleResults,
            (value) =>
                pulumi.Input.encodeMapValues<
                  StartMigrationScenarioServerRoleResultResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerVersion': sourceServerVersion,
      'startedOn': startedOn,
      'state': state,
      'status': status,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputMigrationLevelResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateSqlServerSqlMITaskOutputMigrationLevelResponse(
      agentJobs: pulumi.Input.fromValue(
        (map['agentJobs'] as Map).cast<String, String>(),
      ),
      databases: pulumi.Input.fromValue(
        (map['databases'] as Map).cast<String, String>(),
      ),
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      exceptionsAndWarnings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ReportableExceptionResponse>(
          map['exceptionsAndWarnings']!,
          (value) => ReportableExceptionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      logins: pulumi.Input.fromValue(
        (map['logins'] as Map).cast<String, String>(),
      ),
      message: pulumi.Input.fromValue(map['message'] as String),
      orphanedUsersInfo: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OrphanedUserInfoResponse>(
          map['orphanedUsersInfo']!,
          (value) => OrphanedUserInfoResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      serverRoleResults: pulumi.Input.fromValue(
        pulumi.Input.decodeMapValues<
          StartMigrationScenarioServerRoleResultResponse
        >(
          map['serverRoleResults']!,
          (value) => StartMigrationScenarioServerRoleResultResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sourceServerBrandVersion: pulumi.Input.fromValue(
        map['sourceServerBrandVersion'] as String,
      ),
      sourceServerVersion: pulumi.Input.fromValue(
        map['sourceServerVersion'] as String,
      ),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      targetServerBrandVersion: pulumi.Input.fromValue(
        map['targetServerBrandVersion'] as String,
      ),
      targetServerVersion: pulumi.Input.fromValue(
        map['targetServerVersion'] as String,
      ),
    );
  }
}
