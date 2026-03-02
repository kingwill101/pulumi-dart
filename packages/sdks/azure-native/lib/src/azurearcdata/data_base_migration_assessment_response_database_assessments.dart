// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataBaseMigrationAssessmentResponseDatabaseAssessments {
  final pulumi.Input<String>? appliesToMigrationTargetPlatform;
  final pulumi.Input<String>? featureId;
  final pulumi.Input<String>? issueCategory;
  final pulumi.Input<String>? moreInformation;

  /// Creates a new [DataBaseMigrationAssessmentResponseDatabaseAssessments].
  /// [appliesToMigrationTargetPlatform] Optional.
  /// [featureId] Optional.
  /// [issueCategory] Optional.
  /// [moreInformation] Optional.
  DataBaseMigrationAssessmentResponseDatabaseAssessments({
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
      appliesToMigrationTargetPlatform: map['appliesToMigrationTargetPlatform'] == null ? null : (map['appliesToMigrationTargetPlatform']! as String).input(),
      featureId: map['featureId'] == null ? null : (map['featureId']! as String).input(),
      issueCategory: map['issueCategory'] == null ? null : (map['issueCategory']! as String).input(),
      moreInformation: map['moreInformation'] == null ? null : (map['moreInformation']! as String).input(),
    );
  }
}

