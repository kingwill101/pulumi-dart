// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_assessment_response_impacted_objects.dart';

class MigrationAssessmentResponseServerAssessments {
  final String? appliesToMigrationTargetPlatform;
  final String? featureId;
  final List<MigrationAssessmentResponseImpactedObjects>? impactedObjects;
  final String? issueCategory;
  final String? moreInformation;

  /// Creates a new [MigrationAssessmentResponseServerAssessments].
  /// [appliesToMigrationTargetPlatform] Optional.
  /// [featureId] Optional.
  /// [impactedObjects] Optional.
  /// [issueCategory] Optional.
  /// [moreInformation] Optional.
  MigrationAssessmentResponseServerAssessments({
    this.appliesToMigrationTargetPlatform,
    this.featureId,
    this.impactedObjects,
    this.issueCategory,
    this.moreInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToMigrationTargetPlatform': ?appliesToMigrationTargetPlatform,
      'featureId': ?featureId,
      'impactedObjects': ?impactedObjects == null ? null : pulumi.Input.encodeList<MigrationAssessmentResponseImpactedObjects, Map<String, dynamic>>(impactedObjects!, (value) => value.toMap()),
      'issueCategory': ?issueCategory,
      'moreInformation': ?moreInformation,
    };
  }

  factory MigrationAssessmentResponseServerAssessments.fromMap(Map<String, dynamic> map) {
    return MigrationAssessmentResponseServerAssessments(
      appliesToMigrationTargetPlatform: map['appliesToMigrationTargetPlatform'] == null ? null : map['appliesToMigrationTargetPlatform'] as String,
      featureId: map['featureId'] == null ? null : map['featureId'] as String,
      impactedObjects: map['impactedObjects'] == null ? null : pulumi.Input.decodeList<MigrationAssessmentResponseImpactedObjects>(map['impactedObjects'], (value) => MigrationAssessmentResponseImpactedObjects.fromMap((value as Map).cast<String, dynamic>())),
      issueCategory: map['issueCategory'] == null ? null : map['issueCategory'] as String,
      moreInformation: map['moreInformation'] == null ? null : map['moreInformation'] as String,
    );
  }
}

