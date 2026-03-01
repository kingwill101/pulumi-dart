// ignore_for_file: unused_element, unnecessary_cast

import 'sku_recommendation_results_azure_sql_database_response_target_sku.dart';
import 'sku_recommendation_results_monthly_cost_response.dart';

/// SKU Recommendation results for Azure SQL Database.
class SkuRecommendationResultsAzureSqlDatabaseResponse {
  /// The Monthly cost of the particular SKU.
  final SkuRecommendationResultsMonthlyCostResponse? monthlyCost;
  /// Number of blocker issues to fix before migrating to the target platform.
  final int? numberOfServerBlockerIssues;
  /// The target recommendation Status for this database.
  final String? recommendationStatus;
  final SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku? targetSku;

  /// Creates a new [SkuRecommendationResultsAzureSqlDatabaseResponse].
  /// [monthlyCost] The Monthly cost of the particular SKU.
  /// [numberOfServerBlockerIssues] Number of blocker issues to fix before migrating to the target platform.
  /// [recommendationStatus] The target recommendation Status for this database.
  /// [targetSku] Optional.
  SkuRecommendationResultsAzureSqlDatabaseResponse({
    this.monthlyCost,
    this.numberOfServerBlockerIssues,
    this.recommendationStatus,
    this.targetSku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthlyCost': ?monthlyCost == null ? null : monthlyCost!.toMap(),
      'numberOfServerBlockerIssues': ?numberOfServerBlockerIssues,
      'recommendationStatus': ?recommendationStatus,
      'targetSku': ?targetSku == null ? null : targetSku!.toMap(),
    };
  }

  factory SkuRecommendationResultsAzureSqlDatabaseResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlDatabaseResponse(
      monthlyCost: map['monthlyCost'] == null ? null : SkuRecommendationResultsMonthlyCostResponse.fromMap((map['monthlyCost'] as Map).cast<String, dynamic>()),
      numberOfServerBlockerIssues: map['numberOfServerBlockerIssues'] == null ? null : map['numberOfServerBlockerIssues'] as int,
      recommendationStatus: map['recommendationStatus'] == null ? null : map['recommendationStatus'] as String,
      targetSku: map['targetSku'] == null ? null : SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku.fromMap((map['targetSku'] as Map).cast<String, dynamic>()),
    );
  }
}

