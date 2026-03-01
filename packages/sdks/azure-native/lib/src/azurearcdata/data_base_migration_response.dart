// ignore_for_file: unused_element, unnecessary_cast

import 'data_base_migration_assessment_response.dart';

/// Migration related configuration.
class DataBaseMigrationResponse {
  /// Migration assessments related configuration.
  final DataBaseMigrationAssessmentResponse? assessment;

  /// Creates a new [DataBaseMigrationResponse].
  /// [assessment] Migration assessments related configuration.
  DataBaseMigrationResponse({
    this.assessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessment': ?assessment == null ? null : assessment!.toMap(),
    };
  }

  factory DataBaseMigrationResponse.fromMap(Map<String, dynamic> map) {
    return DataBaseMigrationResponse(
      assessment: map['assessment'] == null ? null : DataBaseMigrationAssessmentResponse.fromMap((map['assessment'] as Map).cast<String, dynamic>()),
    );
  }
}

