// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_recommendation_results_azure_sql_database_response_target_sku.dart';
import 'sku_recommendation_results_monthly_cost_response.dart';

/// SKU Recommendation results for Azure SQL Database.
class SkuRecommendationResultsAzureSqlDatabaseResponse {
  /// The Monthly cost of the particular SKU.
  final pulumi.Input<SkuRecommendationResultsMonthlyCostResponse>? monthlyCost;
  /// Number of blocker issues to fix before migrating to the target platform.
  final pulumi.Input<int>? numberOfServerBlockerIssues;
  /// The target recommendation Status for this database.
  final pulumi.Input<String>? recommendationStatus;
  final pulumi.Input<SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku>? targetSku;

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
      'monthlyCost': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsMonthlyCostResponse, Map<String, dynamic>>(monthlyCost, (value) => value.toMap()),
      'numberOfServerBlockerIssues': ?numberOfServerBlockerIssues,
      'recommendationStatus': ?recommendationStatus,
      'targetSku': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku, Map<String, dynamic>>(targetSku, (value) => value.toMap()),
    };
  }

  factory SkuRecommendationResultsAzureSqlDatabaseResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlDatabaseResponse(
      monthlyCost: map['monthlyCost'] == null ? null : (SkuRecommendationResultsMonthlyCostResponse.fromMap((map['monthlyCost']! as Map).cast<String, dynamic>())).input(),
      numberOfServerBlockerIssues: map['numberOfServerBlockerIssues'] == null ? null : (map['numberOfServerBlockerIssues']! as int).input(),
      recommendationStatus: map['recommendationStatus'] == null ? null : (map['recommendationStatus']! as String).input(),
      targetSku: map['targetSku'] == null ? null : (SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku.fromMap((map['targetSku']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

