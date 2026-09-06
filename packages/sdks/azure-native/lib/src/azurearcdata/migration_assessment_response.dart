// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_assessment_response_server_assessments.dart';
import 'sku_recommendation_results_response.dart';

/// The migration assessment related configuration.
class MigrationAssessmentResponse {
  /// The time when Migration Assessment Report upload was last performed.
  final pulumi.Input<String> assessmentUploadTime;
  /// Indicates if migration assessment is enabled for this SQL Server instance.
  final pulumi.Input<bool?>? enabled;
  /// Issues and warnings impacting the migration of SQL Server instance to particular Azure Migration Target.
  final pulumi.Input<List<MigrationAssessmentResponseServerAssessments>> serverAssessments;
  /// SKU Recommendation results for Azure migration targets for SQL Server.
  final pulumi.Input<SkuRecommendationResultsResponse> skuRecommendationResults;

  /// Creates a new [MigrationAssessmentResponse].
  /// [assessmentUploadTime] The time when Migration Assessment Report upload was last performed.
  /// [enabled] Indicates if migration assessment is enabled for this SQL Server instance.
  /// [serverAssessments] Issues and warnings impacting the migration of SQL Server instance to particular Azure Migration Target.
  /// [skuRecommendationResults] SKU Recommendation results for Azure migration targets for SQL Server.
  const MigrationAssessmentResponse({
    required this.assessmentUploadTime,
    this.enabled,
    required this.serverAssessments,
    required this.skuRecommendationResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentUploadTime': assessmentUploadTime,
      'enabled': ?enabled,
      'serverAssessments': pulumi.Input.mapInputValue<List<MigrationAssessmentResponseServerAssessments>, List<Map<String, dynamic>>>(serverAssessments, (value) => pulumi.Input.encodeList<MigrationAssessmentResponseServerAssessments, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skuRecommendationResults': pulumi.Input.mapInputValue<SkuRecommendationResultsResponse, Map<String, dynamic>>(skuRecommendationResults, (value) => value.toMap()),
    };
  }

  factory MigrationAssessmentResponse.fromMap(Map<String, dynamic> map) {
    return MigrationAssessmentResponse(
      assessmentUploadTime: pulumi.Input.fromValue(map['assessmentUploadTime'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverAssessments: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationAssessmentResponseServerAssessments>(map['serverAssessments']!, (value) => MigrationAssessmentResponseServerAssessments.fromMap((value as Map).cast<String, dynamic>()))),
      skuRecommendationResults: pulumi.Input.fromValue(SkuRecommendationResultsResponse.fromMap((map['skuRecommendationResults']! as Map).cast<String, dynamic>())),
    );
  }
}
