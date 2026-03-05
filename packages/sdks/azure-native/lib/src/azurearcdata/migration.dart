// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_assessment.dart';

/// Migration related configuration.
class Migration {
  /// Migration assessments related configuration.
  final pulumi.Input<MigrationAssessment>? assessment;

  /// Creates a new [Migration].
  /// [assessment] Migration assessments related configuration.
  Migration({
    this.assessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessment': ?pulumi.Input.mapOptionalInputValue<MigrationAssessment, Map<String, dynamic>>(assessment, (value) => value.toMap()),
    };
  }

  factory Migration.fromMap(Map<String, dynamic> map) {
    return Migration(
      assessment: (() { final guardedValue = map['assessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

