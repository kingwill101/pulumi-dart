// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_eligibility_info_response.dart';
import 'reportable_exception_response.dart';

/// Agent Job level output for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse {
  /// Result identifier
  final String id;
  /// The state of the original Agent Job.
  final bool isEnabled;
  /// The type of Agent Job.
  final String jobCategory;
  /// The owner of the Agent Job
  final String jobOwner;
  /// UTC Date and time when the Agent Job was last executed.
  final String lastExecutedOn;
  /// Information about eligibility of agent job for migration.
  final MigrationEligibilityInfoResponse migrationEligibility;
  /// Agent Job name
  final String name;
  /// Type of result - database level or task level
  /// Expected value is 'AgentJobLevelOutput'.
  final String resultType;
  /// Validation errors
  final List<ReportableExceptionResponse> validationErrors;

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
      'migrationEligibility': migrationEligibility.toMap(),
      'name': name,
      'resultType': resultType,
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse(
      id: map['id'] as String,
      isEnabled: map['isEnabled'] as bool,
      jobCategory: map['jobCategory'] as String,
      jobOwner: map['jobOwner'] as String,
      lastExecutedOn: map['lastExecutedOn'] as String,
      migrationEligibility: MigrationEligibilityInfoResponse.fromMap((map['migrationEligibility'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      resultType: map['resultType'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

