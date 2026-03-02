// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration Entity Group Properties class.
class MigrationEntityGroupPropertiesResponse {
  /// Display Name of the Workload.
  final pulumi.Input<String> applicationDisplayName;
  /// Application id
  final pulumi.Input<String> applicationId;
  /// Associated Assessment Id
  final pulumi.Input<String>? associatedAssessmentId;
  /// associated Wave Id
  final pulumi.Input<List<String>>? associatedWaveIds;
  /// Execution Start Date
  final pulumi.Input<String> executionStartDate;
  /// Migration Entity Group Status
  final pulumi.Input<String> executionStatus;
  /// Migration path
  final pulumi.Input<String>? migrationPath;
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
  MigrationEntityGroupPropertiesResponse({
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
      applicationDisplayName: (map['applicationDisplayName'] as String).input(),
      applicationId: (map['applicationId'] as String).input(),
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : (map['associatedAssessmentId'] as String).input(),
      associatedWaveIds: map['associatedWaveIds'] == null ? null : ((map['associatedWaveIds'] as List).cast<String>()).input(),
      executionStartDate: (map['executionStartDate'] as String).input(),
      executionStatus: (map['executionStatus'] as String).input(),
      migrationPath: map['migrationPath'] == null ? null : (map['migrationPath'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

