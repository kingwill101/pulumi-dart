// ignore_for_file: unused_element, unnecessary_cast


/// Migration Entity Group Properties class.
class MigrationEntityGroupProperties {
  /// Display Name of the Workload.
  final String applicationDisplayName;
  /// Application id
  final String applicationId;
  /// Associated Assessment Id
  final String? associatedAssessmentId;
  /// associated Wave Id
  final List<String>? associatedWaveIds;
  /// Migration path
  final String? migrationPath;

  /// Creates a new [MigrationEntityGroupProperties].
  /// [applicationDisplayName] Display Name of the Workload.
  /// [applicationId] Application id
  /// [associatedAssessmentId] Associated Assessment Id
  /// [associatedWaveIds] associated Wave Id
  /// [migrationPath] Migration path
  MigrationEntityGroupProperties({
    required this.applicationDisplayName,
    required this.applicationId,
    this.associatedAssessmentId,
    this.associatedWaveIds,
    this.migrationPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDisplayName': applicationDisplayName,
      'applicationId': applicationId,
      'associatedAssessmentId': ?associatedAssessmentId,
      'associatedWaveIds': ?associatedWaveIds,
      'migrationPath': ?migrationPath,
    };
  }

  factory MigrationEntityGroupProperties.fromMap(Map<String, dynamic> map) {
    return MigrationEntityGroupProperties(
      applicationDisplayName: map['applicationDisplayName'] as String,
      applicationId: map['applicationId'] as String,
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : map['associatedAssessmentId'] as String,
      associatedWaveIds: map['associatedWaveIds'] == null ? null : (map['associatedWaveIds'] as List).cast<String>(),
      migrationPath: map['migrationPath'] == null ? null : map['migrationPath'] as String,
    );
  }
}

