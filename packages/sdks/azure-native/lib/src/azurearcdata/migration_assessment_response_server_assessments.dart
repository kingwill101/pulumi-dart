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
  const MigrationAssessmentResponseServerAssessments({
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
      appliesToMigrationTargetPlatform: (() { final guardedValue = map['appliesToMigrationTargetPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureId: (() { final guardedValue = map['featureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      impactedObjects: (() { final guardedValue = map['impactedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationAssessmentResponseImpactedObjects>(guardedValue, (value) => MigrationAssessmentResponseImpactedObjects.fromMap((value as Map).cast<String, dynamic>()))); })(),
      issueCategory: (() { final guardedValue = map['issueCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moreInformation: (() { final guardedValue = map['moreInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

