// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration Entity Group Properties class.
class MigrationEntityGroupPropertiesResponse {
  /// Display Name of the Workload.
  final pulumi.Input<String> applicationDisplayName;
  /// Application id
  final pulumi.Input<String> applicationId;
  /// Associated Assessment Id
  final pulumi.Input<String?>? associatedAssessmentId;
  /// associated Wave Id
  final pulumi.Input<List<String>?>? associatedWaveIds;
  /// Execution Start Date
  final pulumi.Input<String> executionStartDate;
  /// Migration Entity Group Status
  final pulumi.Input<String> executionStatus;
  /// Migration path
  final pulumi.Input<String?>? migrationPath;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [MigrationEntityGroupPropertiesResponse].
  /// [applicationDisplayName] Display Name of the Workload.
  /// [applicationId] Application id
  /// [associatedAssessmentId] Associated Assessment Id
  /// [associatedWaveIds] associated Wave Id
  /// [executionStartDate] Execution Start Date
  /// [executionStatus] Migration Entity Group Status
  /// [migrationPath] Migration path
  /// [provisioningState] The status of the last operation.
  const MigrationEntityGroupPropertiesResponse({
    required this.applicationDisplayName,
    required this.applicationId,
    this.associatedAssessmentId,
    this.associatedWaveIds,
    required this.executionStartDate,
    required this.executionStatus,
    this.migrationPath,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDisplayName': applicationDisplayName,
      'applicationId': applicationId,
      'associatedAssessmentId': ?associatedAssessmentId,
      'associatedWaveIds': ?associatedWaveIds,
      'executionStartDate': executionStartDate,
      'executionStatus': executionStatus,
      'migrationPath': ?migrationPath,
      'provisioningState': provisioningState,
    };
  }

  factory MigrationEntityGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrationEntityGroupPropertiesResponse(
      applicationDisplayName: pulumi.Input.fromValue(map['applicationDisplayName'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      associatedAssessmentId: (() { final guardedValue = map['associatedAssessmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedWaveIds: (() { final guardedValue = map['associatedWaveIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      executionStartDate: pulumi.Input.fromValue(map['executionStartDate'] as String),
      executionStatus: pulumi.Input.fromValue(map['executionStatus'] as String),
      migrationPath: (() { final guardedValue = map['migrationPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
