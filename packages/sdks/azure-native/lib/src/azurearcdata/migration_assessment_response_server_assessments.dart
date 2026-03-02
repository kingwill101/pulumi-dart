// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_assessment_response_impacted_objects.dart';

class MigrationAssessmentResponseServerAssessments {
  final pulumi.Input<String>? appliesToMigrationTargetPlatform;
  final pulumi.Input<String>? featureId;
  final pulumi.Input<List<MigrationAssessmentResponseImpactedObjects>>? impactedObjects;
  final pulumi.Input<String>? issueCategory;
  final pulumi.Input<String>? moreInformation;

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
      'impactedObjects': ?pulumi.Input.mapOptionalInputValue<List<MigrationAssessmentResponseImpactedObjects>, List<Map<String, dynamic>>>(impactedObjects, (value) => pulumi.Input.encodeList<MigrationAssessmentResponseImpactedObjects, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issueCategory': ?issueCategory,
      'moreInformation': ?moreInformation,
    };
  }

  factory MigrationAssessmentResponseServerAssessments.fromMap(Map<String, dynamic> map) {
    return MigrationAssessmentResponseServerAssessments(
      appliesToMigrationTargetPlatform: map['appliesToMigrationTargetPlatform'] == null ? null : (map['appliesToMigrationTargetPlatform'] as String).input(),
      featureId: map['featureId'] == null ? null : (map['featureId'] as String).input(),
      impactedObjects: map['impactedObjects'] == null ? null : (pulumi.Input.decodeList<MigrationAssessmentResponseImpactedObjects>(map['impactedObjects'], (value) => MigrationAssessmentResponseImpactedObjects.fromMap((value as Map).cast<String, dynamic>()))).input(),
      issueCategory: map['issueCategory'] == null ? null : (map['issueCategory'] as String).input(),
      moreInformation: map['moreInformation'] == null ? null : (map['moreInformation'] as String).input(),
    );
  }
}

