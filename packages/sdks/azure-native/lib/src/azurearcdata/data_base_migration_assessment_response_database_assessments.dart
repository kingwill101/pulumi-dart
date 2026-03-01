// ignore_for_file: unused_element, unnecessary_cast


class DataBaseMigrationAssessmentResponseDatabaseAssessments {
  final String? appliesToMigrationTargetPlatform;
  final String? featureId;
  final String? issueCategory;
  final String? moreInformation;

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
      appliesToMigrationTargetPlatform: map['appliesToMigrationTargetPlatform'] == null ? null : map['appliesToMigrationTargetPlatform'] as String,
      featureId: map['featureId'] == null ? null : map['featureId'] as String,
      issueCategory: map['issueCategory'] == null ? null : map['issueCategory'] as String,
      moreInformation: map['moreInformation'] == null ? null : map['moreInformation'] as String,
    );
  }
}

