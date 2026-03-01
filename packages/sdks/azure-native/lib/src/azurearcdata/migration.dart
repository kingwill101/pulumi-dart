// ignore_for_file: unused_element, unnecessary_cast

import 'migration_assessment.dart';

/// Migration related configuration.
class Migration {
  /// Migration assessments related configuration.
  final MigrationAssessment? assessment;

  /// Creates a new [Migration].
  /// [assessment] Migration assessments related configuration.
  Migration({
    this.assessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessment': ?assessment == null ? null : assessment!.toMap(),
    };
  }

  factory Migration.fromMap(Map<String, dynamic> map) {
    return Migration(
      assessment: map['assessment'] == null ? null : MigrationAssessment.fromMap((map['assessment'] as Map).cast<String, dynamic>()),
    );
  }
}

