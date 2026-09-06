// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataBaseMigrationAssessmentResponseDatabaseAssessments {
  final pulumi.Input<String?>? appliesToMigrationTargetPlatform;
  final pulumi.Input<String?>? featureId;
  final pulumi.Input<String?>? issueCategory;
  final pulumi.Input<String?>? moreInformation;

  /// Creates a new [DataBaseMigrationAssessmentResponseDatabaseAssessments].
  /// [appliesToMigrationTargetPlatform] Optional.
  /// [featureId] Optional.
  /// [issueCategory] Optional.
  /// [moreInformation] Optional.
  const DataBaseMigrationAssessmentResponseDatabaseAssessments({
    this.appliesToMigrationTargetPlatform,
    this.featureId,
    this.issueCategory,
    this.moreInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToMigrationTargetPlatform': ?appliesToMigrationTargetPlatform,
      'featureId': ?featureId,
      'issueCategory': ?issueCategory,
      'moreInformation': ?moreInformation,
    };
  }

  factory DataBaseMigrationAssessmentResponseDatabaseAssessments.fromMap(Map<String, dynamic> map) {
    return DataBaseMigrationAssessmentResponseDatabaseAssessments(
      appliesToMigrationTargetPlatform: (() { final guardedValue = map['appliesToMigrationTargetPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureId: (() { final guardedValue = map['featureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issueCategory: (() { final guardedValue = map['issueCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moreInformation: (() { final guardedValue = map['moreInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
