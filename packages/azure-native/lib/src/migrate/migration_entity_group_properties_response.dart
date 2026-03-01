// ignore_for_file: unused_element, unnecessary_cast


/// Migration Entity Group Properties class.
class MigrationEntityGroupPropertiesResponse {
  /// Display Name of the Workload.
  final String applicationDisplayName;
  /// Application id
  final String applicationId;
  /// Associated Assessment Id
  final String? associatedAssessmentId;
  /// associated Wave Id
  final List<String>? associatedWaveIds;
  /// Execution Start Date
  final String executionStartDate;
  /// Migration Entity Group Status
  final String executionStatus;
  /// Migration path
  final String? migrationPath;
  /// The status of the last operation.
  final String provisioningState;

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
      applicationDisplayName: map['applicationDisplayName'] as String,
      applicationId: map['applicationId'] as String,
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : map['associatedAssessmentId'] as String,
      associatedWaveIds: map['associatedWaveIds'] == null ? null : (map['associatedWaveIds'] as List).cast<String>(),
      executionStartDate: map['executionStartDate'] as String,
      executionStatus: map['executionStatus'] as String,
      migrationPath: map['migrationPath'] == null ? null : map['migrationPath'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

