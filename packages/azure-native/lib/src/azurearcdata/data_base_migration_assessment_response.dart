// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_base_migration_assessment_response_database_assessments.dart';
import 'target_readiness_response.dart';

/// The migration assessment related configuration.
class DataBaseMigrationAssessmentResponse {
  /// The time when Migration Assessment Report upload was last performed.
  final String assessmentUploadTime;
  /// Issues and warnings impacting the migration of Database to particular Azure Migration Target.
  final List<DataBaseMigrationAssessmentResponseDatabaseAssessments> databaseAssessments;
  /// The target readiness for migration for this database.
  final TargetReadinessResponse targetReadiness;

  /// Creates a new [DataBaseMigrationAssessmentResponse].
  /// [assessmentUploadTime] The time when Migration Assessment Report upload was last performed.
  /// [databaseAssessments] Issues and warnings impacting the migration of Database to particular Azure Migration Target.
  /// [targetReadiness] The target readiness for migration for this database.
  DataBaseMigrationAssessmentResponse({
    required this.assessmentUploadTime,
    required this.databaseAssessments,
    required this.targetReadiness,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentUploadTime': assessmentUploadTime,
      'databaseAssessments': pulumi.Input.encodeList<DataBaseMigrationAssessmentResponseDatabaseAssessments, Map<String, dynamic>>(databaseAssessments, (value) => value.toMap()),
      'targetReadiness': targetReadiness.toMap(),
    };
  }

  factory DataBaseMigrationAssessmentResponse.fromMap(Map<String, dynamic> map) {
    return DataBaseMigrationAssessmentResponse(
      assessmentUploadTime: map['assessmentUploadTime'] as String,
      databaseAssessments: pulumi.Input.decodeList<DataBaseMigrationAssessmentResponseDatabaseAssessments>(map['databaseAssessments'], (value) => DataBaseMigrationAssessmentResponseDatabaseAssessments.fromMap((value as Map).cast<String, dynamic>())),
      targetReadiness: TargetReadinessResponse.fromMap((map['targetReadiness'] as Map).cast<String, dynamic>()),
    );
  }
}

