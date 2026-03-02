// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_eligibility_info_response.dart';
import 'reportable_exception_response.dart';

/// Agent Job level output for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse {
  /// Result identifier
  final pulumi.Input<String> id;
  /// The state of the original Agent Job.
  final pulumi.Input<bool> isEnabled;
  /// The type of Agent Job.
  final pulumi.Input<String> jobCategory;
  /// The owner of the Agent Job
  final pulumi.Input<String> jobOwner;
  /// UTC Date and time when the Agent Job was last executed.
  final pulumi.Input<String> lastExecutedOn;
  /// Information about eligibility of agent job for migration.
  final pulumi.Input<MigrationEligibilityInfoResponse> migrationEligibility;
  /// Agent Job name
  final pulumi.Input<String> name;
  /// Type of result - database level or task level
  /// Expected value is 'AgentJobLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Validation errors
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse].
  /// [id] Result identifier
  /// [isEnabled] The state of the original Agent Job.
  /// [jobCategory] The type of Agent Job.
  /// [jobOwner] The owner of the Agent Job
  /// [lastExecutedOn] UTC Date and time when the Agent Job was last executed.
  /// [migrationEligibility] Information about eligibility of agent job for migration.
  /// [name] Agent Job name
  /// [resultType] Type of result - database level or task level
  /// [validationErrors] Validation errors
  ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse({
    required this.id,
    required this.isEnabled,
    required this.jobCategory,
    required this.jobOwner,
    required this.lastExecutedOn,
    required this.migrationEligibility,
    required this.name,
    required this.resultType,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isEnabled': isEnabled,
      'jobCategory': jobCategory,
      'jobOwner': jobOwner,
      'lastExecutedOn': lastExecutedOn,
      'migrationEligibility': pulumi.Input.mapInputValue<MigrationEligibilityInfoResponse, Map<String, dynamic>>(migrationEligibility, (value) => value.toMap()),
      'name': name,
      'resultType': resultType,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse(
      id: (map['id'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      jobCategory: (map['jobCategory'] as String).input(),
      jobOwner: (map['jobOwner'] as String).input(),
      lastExecutedOn: (map['lastExecutedOn'] as String).input(),
      migrationEligibility: (MigrationEligibilityInfoResponse.fromMap((map['migrationEligibility'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      resultType: (map['resultType'] as String).input(),
      validationErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

