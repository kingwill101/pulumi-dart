// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_base_migration_assessment_response.dart';

/// Migration related configuration.
class DataBaseMigrationResponse {
  /// Migration assessments related configuration.
  final pulumi.Input<DataBaseMigrationAssessmentResponse>? assessment;

  /// Creates a new [DataBaseMigrationResponse].
  /// [assessment] Migration assessments related configuration.
  DataBaseMigrationResponse({this.assessment});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessment':
          ?pulumi.Input.mapOptionalInputValue<
            DataBaseMigrationAssessmentResponse,
            Map<String, dynamic>
          >(assessment, (value) => value.toMap()),
    };
  }

  factory DataBaseMigrationResponse.fromMap(Map<String, dynamic> map) {
    return DataBaseMigrationResponse(
      assessment: (() {
        final guardedValue = map['assessment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataBaseMigrationAssessmentResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
