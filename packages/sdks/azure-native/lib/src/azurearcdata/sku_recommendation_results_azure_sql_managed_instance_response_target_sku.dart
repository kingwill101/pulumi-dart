// ignore_for_file: unused_element, unnecessary_cast

import 'sku_recommendation_results_azure_sql_managed_instance_response_category.dart';

class SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku {
  final SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory? category;

  /// Creates a new [SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku].
  /// [category] Optional.
  SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku({
    this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category == null ? null : category!.toMap(),
    };
  }

  factory SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku(
      category: map['category'] == null ? null : SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory.fromMap((map['category'] as Map).cast<String, dynamic>()),
    );
  }
}

