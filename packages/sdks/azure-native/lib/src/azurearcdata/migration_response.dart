// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_assessment_response.dart';

/// Migration related configuration.
class MigrationResponse {
  /// Migration assessments related configuration.
  final pulumi.Input<MigrationAssessmentResponse>? assessment;

  /// Creates a new [MigrationResponse].
  /// [assessment] Migration assessments related configuration.
  MigrationResponse({
    this.assessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessment': ?pulumi.Input.mapOptionalInputValue<MigrationAssessmentResponse, Map<String, dynamic>>(assessment, (value) => value.toMap()),
    };
  }

  factory MigrationResponse.fromMap(Map<String, dynamic> map) {
    return MigrationResponse(
      assessment: map['assessment'] == null ? null : (MigrationAssessmentResponse.fromMap((map['assessment'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

