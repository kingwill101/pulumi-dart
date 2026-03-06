// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_recommendation_results_azure_sql_managed_instance_response_target_sku.dart';
import 'sku_recommendation_results_monthly_cost_response.dart';

/// SKU Recommendation results for Azure SQL Managed Instance.
class SkuRecommendationResultsAzureSqlManagedInstanceResponse {
  /// The Monthly cost of the particular SKU.
  final pulumi.Input<SkuRecommendationResultsMonthlyCostResponse>? monthlyCost;
  /// Number of blocker issues to fix before migrating to the target platform.
  final pulumi.Input<int>? numberOfServerBlockerIssues;
  /// The target recommendation Status for this database.
  final pulumi.Input<String>? recommendationStatus;
  final pulumi.Input<SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku>? targetSku;

  /// Creates a new [SkuRecommendationResultsAzureSqlManagedInstanceResponse].
  /// [monthlyCost] The Monthly cost of the particular SKU.
  /// [numberOfServerBlockerIssues] Number of blocker issues to fix before migrating to the target platform.
  /// [recommendationStatus] The target recommendation Status for this database.
  /// [targetSku] Optional.
  const SkuRecommendationResultsAzureSqlManagedInstanceResponse({
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
      'targetSku': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku, Map<String, dynamic>>(targetSku, (value) => value.toMap()),
    };
  }

  factory SkuRecommendationResultsAzureSqlManagedInstanceResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlManagedInstanceResponse(
      monthlyCost: (() { final guardedValue = map['monthlyCost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationResultsMonthlyCostResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numberOfServerBlockerIssues: (() { final guardedValue = map['numberOfServerBlockerIssues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      recommendationStatus: (() { final guardedValue = map['recommendationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSku: (() { final guardedValue = map['targetSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

