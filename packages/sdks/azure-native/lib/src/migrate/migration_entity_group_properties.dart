// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration Entity Group Properties class.
class MigrationEntityGroupProperties {
  /// Display Name of the Workload.
  final pulumi.Input<String> applicationDisplayName;
  /// Application id
  final pulumi.Input<String> applicationId;
  /// Associated Assessment Id
  final pulumi.Input<String>? associatedAssessmentId;
  /// associated Wave Id
  final pulumi.Input<List<String>>? associatedWaveIds;
  /// Migration path
  final pulumi.Input<String>? migrationPath;

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
      applicationDisplayName: (map['applicationDisplayName'] as String).input(),
      applicationId: (map['applicationId'] as String).input(),
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : (map['associatedAssessmentId'] as String).input(),
      associatedWaveIds: map['associatedWaveIds'] == null ? null : ((map['associatedWaveIds'] as List).cast<String>()).input(),
      migrationPath: map['migrationPath'] == null ? null : (map['migrationPath'] as String).input(),
    );
  }
}

